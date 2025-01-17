function xd = sodynamics(t,q,qd,u)
    % States
    % x
    % y
    % z
    % phi (roll)
    % theta (pitch)
    % psi (yaw)
    % xdot
    % ydot
    % zdot
    % phidot
    % thetadot
    % psidot

    % Parameters
    g = 9.81;
    m = 0.03337;
    L = 0.046; % Distance from rotor to COM (in m)

    % Unknown parameters
Ixx = 2.15e-006;
Iyy = 2.15e-006;
Izz = 4.29e-006;
Ixy = 2.37e-007;
kf = 0.005022393588278;
km = -1.400164274777642e-06;
    
    I =  [Ixx Ixy 0; Ixy Iyy 0; 0 0 Izz];
    invI = inv(I);
    
    % states
    x = [q;qd];

    phi = x(4);
    theta = x(5);
    psi = x(6);

    phidot = x(10);
    thetadot = x(11);
    psidot = x(12);

    w1 = u(1);
    w2 = u(4);
    w3 = u(3);
    w4 = u(2);

    % Rotation matrix from body to world frames
    R = rpy2rotmat([phi;theta;psi]);

    F1 = kf*w1;
    F2 = kf*w2;
    F3 = kf*w3;
    F4 = kf*w4;

    M1 = km*w1;
    M2 = km*w2;
    M3 = km*w3;
    M4 = km*w4;


    xyz_ddot = (1/m)*([0;0;-m*g] + R*[0;0;F1+F2+F3+F4]);

    pqr = rpydot2angularvel([phi;theta;psi],[phidot;thetadot;psidot]);
    pqr = R'*pqr;

    pqr_dot = invI*([L*(F2-F4);L*(F3-F1);(M1-M2+M3-M4)] - cross(pqr,I*pqr));

    % Now, convert pqr_dot to rpy_ddot
    [Phi, dPhi] = angularvel2rpydotMatrix([phi;theta;psi]);

    Rdot =  [ 0, sin(phi)*sin(psi) + cos(phi)*cos(psi)*sin(theta),   cos(phi)*sin(psi) - cos(psi)*sin(phi)*sin(theta); ...
              0, cos(phi)*sin(psi)*sin(theta) - cos(psi)*sin(phi), - cos(phi)*cos(psi) - sin(phi)*sin(psi)*sin(theta); ...
              0,                              cos(phi)*cos(theta),                               -cos(theta)*sin(phi)]*phidot + ...
              [ -cos(psi)*sin(theta), cos(psi)*cos(theta)*sin(phi), cos(phi)*cos(psi)*cos(theta); ...
                -sin(psi)*sin(theta), cos(theta)*sin(phi)*sin(psi), cos(phi)*cos(theta)*sin(psi); ...
                        -cos(theta),         -sin(phi)*sin(theta),         -cos(phi)*sin(theta)]*thetadot + ...
                       [ -cos(theta)*sin(psi), - cos(phi)*cos(psi) - sin(phi)*sin(psi)*sin(theta), cos(psi)*sin(phi) - cos(phi)*sin(psi)*sin(theta); ...
                         cos(psi)*cos(theta),   cos(psi)*sin(phi)*sin(theta) - cos(phi)*sin(psi), sin(phi)*sin(psi) + cos(phi)*cos(psi)*sin(theta); ...
                                           0,                                                  0,                                                0]*psidot;

    rpy_ddot = Phi*R*pqr_dot + reshape((dPhi*[phidot;thetadot;psidot]),3,3)*R*pqr + ...
               Phi*Rdot*pqr;

    % xdot = [x(7:12);xyz_ddot;rpy_ddot];
    qdd = [xyz_ddot;rpy_ddot];
    
    xd = [qd;qdd];
    
end
