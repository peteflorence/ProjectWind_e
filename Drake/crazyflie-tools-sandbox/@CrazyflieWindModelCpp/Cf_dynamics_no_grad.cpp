#include "mex.h"
#include <Eigen/Dense>
#include <cmath>
#include "drakeMexUtil.h"
#include <iostream>
#include "matrix.h"
#include "drakeGradientUtil.h"
#include "drakeGeometryUtil.h"

using namespace Eigen;
using namespace std;





// MATLAB version is
//windout = obj.quadwind(quadpos,x(13),1); % pass mytime to quadwind. % last arument is plot option

Vector3d quadWind(const mxArray *pobj, Vector3d quadpos, double time) {
    Vector3d wind;

    double V_0 = 3.5;
    double c = 0.1;
    double V = V_0 / (1.0 + V_0 * c * time);

    auto ellipsoidcenter = matlabToEigenMap<3, 1>(mxGetProperty(pobj, 0, "ellipsoidcenter")).eval();

    Vector3d timevec;
    timevec << V * time, 0, 0;

    ellipsoidcenter = ellipsoidcenter - timevec;

    double sphereRadius = 0.30;
    double nomwind = -5.0;

    double scale = nomwind;
    double reversed = -1.0;
    double a = (quadpos - ellipsoidcenter).norm();
    double slope = 10.0;

    double xwind = scale * (tanh(reversed * (a - sphereRadius) * slope) + 1.0) / 2.0;
    double ywind = 0.0;
    double zwind = 0.0;

    wind << xwind, ywind, zwind;
    return wind;

}

template<typename DerivedX, typename DerivedU>
VectorXd quadDynamics(const mxArray *pobj, const double &t, const MatrixBase<DerivedX> &x,
                      const MatrixBase<DerivedU> &u) {
    VectorXd xdot(13);
    double m = mxGetScalar(mxGetProperty(pobj, 0, "m"));
    auto I = matlabToEigenMap<3, 3>(mxGetProperty(pobj, 0, "I"));

    double g = 9.81;
    double L = 0.046;

    double phi = x(3);      // 0-indexing in C
    double theta = x(4);
    double psi = x(5);
    double phidot = x(9);
    double thetadot = x(10);
    double psidot = x(11);

    double w1 = u(0);
    double w2 = u(1);
    double w3 = u(2);
    double w4 = u(3);

    Vector3d rpy;
    rpy << phi, theta, psi;
    Matrix3d R = rpy2rotmat(rpy);

    double kf = mxGetScalar(mxGetProperty(pobj, 0, "kf"));

    double F1 = kf * w1;
    double F2 = kf * w2;
    double F3 = kf * w3;
    double F4 = kf * w4;

    double km = mxGetScalar(mxGetProperty(pobj, 0, "km"));

    double M1 = km * w1;
    double M2 = km * w2;
    double M3 = km * w3;
    double M4 = km * w4;

    Vector3d quadpos;
    quadpos << x(0), x(1), x(2);

    Vector3d windout = quadWind(pobj, quadpos, x(12)); // query wind vector
    double dragCoef = 0.3;
    windout = windout * dragCoef;

    Vector3d gvec;
    gvec << 0, 0, -m * g;
    Vector3d forcevec;
    forcevec << 0, 0, F1 + F2 + F3 + F4;
    Vector3d xyz_ddot = (1.0 / m) * (gvec + R * forcevec + windout);

    Vector3d rpydot;
    rpydot << phidot, thetadot, psidot;

    Vector3d pqr;
    rpydot2angularvel(rpy, rpydot, pqr);
    pqr = R.adjoint() * pqr;

    Vector3d pqr_dot_term1;
    pqr_dot_term1 << L * (F4 - F2), L * (F3 - F1), (-M1 + M2 - M3 + M4);
    Vector3d pqr_dot = I.ldlt().solve(pqr_dot_term1 - pqr.cross(I * pqr));

    Matrix<double, 3, 3> Phi;
    Gradient<Matrix<double, 3, 3>, 3>::type dPhi;
    auto ddPhi = (Gradient<Matrix<double, 3, 3>, 3, 2>::type*) nullptr;
    angularvel2rpydotMatrix(rpy, Phi, &dPhi, ddPhi);

    // This replaces the implementation of Rdot (make a 9x1 vector, reshape it into a 3 x 3)
    Matrix<double, 9, 3> drpy2drotmat = drpy2rotmat(rpy);
    VectorXd Rdot_vec(9);
    Rdot_vec = drpy2drotmat * rpydot;
    Matrix3d Rdot = Map<MatrixXd>(Rdot_vec.data(), 3, 3);

    VectorXd dPhi_x_rpydot_vec(9);
    dPhi_x_rpydot_vec = dPhi * rpydot;
    Matrix3d dPhi_x_rpydot = Map<MatrixXd>(dPhi_x_rpydot_vec.data(), 3, 3);
    Vector3d rpy_ddot = Phi * R * pqr_dot + dPhi_x_rpydot * R * pqr + Phi * Rdot * pqr;

    VectorXd qdd(6);
    qdd << xyz_ddot, rpy_ddot;
    VectorXd qd(6);
    qd = x.template segment<6>(6);

    xdot << qd, qdd, 1.0;

    return xdot;

}




// Structure from MATLAB
// dynamics_no_grad(obj,t,x,u)

void mexFunction(int nlhs, mxArray *plhs[], int nrhs, const mxArray *prhs[]) {
    const mxArray *pobj = prhs[0];

    if (mxIsDouble(prhs[1]) && mxIsDouble(prhs[2]) && mxIsDouble(prhs[3])) {

        double t = mxGetScalar(prhs[1]);
        auto x = matlabToEigenMap<13, 1>(prhs[2]);
        auto u = matlabToEigenMap<4, 1>(prhs[3]);

        VectorXd xdot = quadDynamics(pobj, t, x, u);

        plhs[0] = eigenToMatlab(xdot);

    }

    return;
}