function [df] = dynamicsGradientsEllipsicalHypertan_5(a1, a2, a3, a4, order)
% This is an auto-generated file.
%
% See <a href="matlab: help generateGradients">generateGradients</a>. 

% Check inputs:
typecheck(a1,'QuadWindPlant');
if (nargin<4) order=1; end
if (order<1) error(' order must be >= 1'); end
sizecheck(a1,[1  1]);
sizecheck(a2,[1  1]);
sizecheck(a3,[13   1]);
sizecheck(a4,[4  1]);

% Symbol table:
I_1=a1.I(1);
I_2=a1.I(2);
I_3=a1.I(3);
I_4=a1.I(4);
I_5=a1.I(5);
I_6=a1.I(6);
I_7=a1.I(7);
I_8=a1.I(8);
I_9=a1.I(9);
a3_1=a3(1);
a3_10=a3(10);
a3_11=a3(11);
a3_12=a3(12);
a3_13=a3(13);
a3_2=a3(2);
a3_3=a3(3);
a3_4=a3(4);
a3_5=a3(5);
a3_6=a3(6);
a3_7=a3(7);
a3_8=a3(8);
a3_9=a3(9);
a4_1=a4(1);
a4_2=a4(2);
a4_3=a4(3);
a4_4=a4(4);
m=a1.m;


% Compute Gradients:
df = sparse(13,18);
df(1,8) = 1;
df(2,9) = 1;
df(3,10) = 1;
df(4,11) = 1;
df(5,12) = 1;
df(6,13) = 1;
df(7,2) = -(25*(tanh(10*((a3_3 - 1)^2 + (a3_1 + (7*a3_13)/(2*((7*a3_13)/20 + 1)) - 3)^2 + a3_2^2)^(1/2) - 3)^2 - 1)*(2*a3_1 + (7*a3_13)/((7*a3_13)/20 + 1) - 6))/(2*m*((a3_3 - 1)^2 + (a3_1 + (7*a3_13)/(2*((7*a3_13)/20 + 1)) - 3)^2 + a3_2^2)^(1/2));
df(7,3) = -(25*a3_2*(tanh(10*((a3_3 - 1)^2 + (a3_1 + (7*a3_13)/(2*((7*a3_13)/20 + 1)) - 3)^2 + a3_2^2)^(1/2) - 3)^2 - 1))/(m*((a3_3 - 1)^2 + (a3_1 + (7*a3_13)/(2*((7*a3_13)/20 + 1)) - 3)^2 + a3_2^2)^(1/2));
df(7,4) = -(25*(2*a3_3 - 2)*(tanh(10*((a3_3 - 1)^2 + (a3_1 + (7*a3_13)/(2*((7*a3_13)/20 + 1)) - 3)^2 + a3_2^2)^(1/2) - 3)^2 - 1))/(2*m*((a3_3 - 1)^2 + (a3_1 + (7*a3_13)/(2*((7*a3_13)/20 + 1)) - 3)^2 + a3_2^2)^(1/2));
df(7,5) = ((cos(a3_4)*sin(a3_6) - cos(a3_6)*sin(a3_4)*sin(a3_5))*(a4_1 + a4_2 + a4_3 + a4_4))/m;
df(7,6) = (cos(a3_4)*cos(a3_5)*cos(a3_6)*(a4_1 + a4_2 + a4_3 + a4_4))/m;
df(7,7) = ((cos(a3_6)*sin(a3_4) - cos(a3_4)*sin(a3_5)*sin(a3_6))*(a4_1 + a4_2 + a4_3 + a4_4))/m;
df(7,14) = (25*((49*a3_13)/(40*((7*a3_13)/20 + 1)^2) - 7/(2*((7*a3_13)/20 + 1)))*(tanh(10*((a3_3 - 1)^2 + (a3_1 + (7*a3_13)/(2*((7*a3_13)/20 + 1)) - 3)^2 + a3_2^2)^(1/2) - 3)^2 - 1)*(a3_1 + (7*a3_13)/(2*((7*a3_13)/20 + 1)) - 3))/(m*((a3_3 - 1)^2 + (a3_1 + (7*a3_13)/(2*((7*a3_13)/20 + 1)) - 3)^2 + a3_2^2)^(1/2));
df(7,15) = (sin(a3_4)*sin(a3_6) + cos(a3_4)*cos(a3_6)*sin(a3_5))/m;
df(7,16) = (sin(a3_4)*sin(a3_6) + cos(a3_4)*cos(a3_6)*sin(a3_5))/m;
df(7,17) = (sin(a3_4)*sin(a3_6) + cos(a3_4)*cos(a3_6)*sin(a3_5))/m;
df(7,18) = (sin(a3_4)*sin(a3_6) + cos(a3_4)*cos(a3_6)*sin(a3_5))/m;
df(8,5) = -((cos(a3_4)*cos(a3_6) + sin(a3_4)*sin(a3_5)*sin(a3_6))*(a4_1 + a4_2 + a4_3 + a4_4))/m;
df(8,6) = (cos(a3_4)*cos(a3_5)*sin(a3_6)*(a4_1 + a4_2 + a4_3 + a4_4))/m;
df(8,7) = ((sin(a3_4)*sin(a3_6) + cos(a3_4)*cos(a3_6)*sin(a3_5))*(a4_1 + a4_2 + a4_3 + a4_4))/m;
df(8,15) = -(cos(a3_6)*sin(a3_4) - cos(a3_4)*sin(a3_5)*sin(a3_6))/m;
df(8,16) = -(cos(a3_6)*sin(a3_4) - cos(a3_4)*sin(a3_5)*sin(a3_6))/m;
df(8,17) = -(cos(a3_6)*sin(a3_4) - cos(a3_4)*sin(a3_5)*sin(a3_6))/m;
df(8,18) = -(cos(a3_6)*sin(a3_4) - cos(a3_4)*sin(a3_5)*sin(a3_6))/m;
df(9,5) = -(cos(a3_5)*sin(a3_4)*(a4_1 + a4_2 + a4_3 + a4_4))/m;
df(9,6) = -(cos(a3_4)*sin(a3_5)*(a4_1 + a4_2 + a4_3 + a4_4))/m;
df(9,15) = (cos(a3_4)*cos(a3_5))/m;
df(9,16) = (cos(a3_4)*cos(a3_5))/m;
df(9,17) = (cos(a3_4)*cos(a3_5))/m;
df(9,18) = (cos(a3_4)*cos(a3_5))/m;
df(10,5) = (80000*I_5*a3_11^2*cos(a3_5) - 34000*I_1*a3_12^2*cos(a3_5) - 46000*I_5*a3_12^2*cos(a3_5) - 80000*I_9*a3_11^2*cos(a3_5) + 80000*I_9*a3_12^2*cos(a3_5) - 14000*a4_1*cos(a3_4)*sin(a3_5) + 14000*a4_3*cos(a3_4)*sin(a3_5) - 1127*a4_1*sin(a3_4)*sin(a3_5) + 1127*a4_2*sin(a3_4)*sin(a3_5) - 1127*a4_3*sin(a3_4)*sin(a3_5) + 1127*a4_4*sin(a3_4)*sin(a3_5) + 80000*I_6*a3_11*a3_12 + 46000*I_8*a3_11*a3_12 + 34000*I_1*a3_12^2*cos(a3_5)^3 - 34000*I_5*a3_12^2*cos(a3_5)^3 + 80000*I_3*a3_10^2*cos(a3_4)*sin(a3_5) + 80000*I_3*a3_12^2*cos(a3_4)*sin(a3_5) - 148000*I_7*a3_11^2*cos(a3_4)*sin(a3_5) + 46000*I_2*a3_10^2*sin(a3_4)*sin(a3_5) + 80000*I_2*a3_12^2*sin(a3_4)*sin(a3_5) + 22000*I_4*a3_11^2*sin(a3_4)*sin(a3_5) + 34000*I_4*a3_12^2*sin(a3_4)*sin(a3_5) - 160000*I_3*a3_10*a3_12*cos(a3_4) - 92000*I_2*a3_10*a3_12*sin(a3_4) - 80000*I_6*a3_10*a3_11*sin(a3_5) - 46000*I_8*a3_10*a3_11*sin(a3_5) + 68000*I_1*a3_12^2*cos(a3_4)^2*cos(a3_5) - 160000*I_5*a3_11^2*cos(a3_4)^2*cos(a3_5) + 92000*I_5*a3_12^2*cos(a3_4)^2*cos(a3_5) + 160000*I_9*a3_11^2*cos(a3_4)^2*cos(a3_5) - 160000*I_9*a3_12^2*cos(a3_4)^2*cos(a3_5) + 102000*I_7*a3_11^2*cos(a3_4)^3*sin(a3_5) - 34000*I_2*a3_12^2*sin(a3_4)*sin(a3_5)^3 - 102000*I_4*a3_11^2*sin(a3_4)^3*sin(a3_5) - 34000*I_4*a3_12^2*sin(a3_4)*sin(a3_5)^3 - 160000*I_6*a3_11*a3_12*cos(a3_4)^2 + 80000*I_6*a3_11*a3_12*cos(a3_5)^2 - 92000*I_8*a3_11*a3_12*cos(a3_4)^2 + 114000*I_8*a3_11*a3_12*cos(a3_5)^2 + 17000*I_1*a3_10*a3_12*sin(2*a3_5) - 34000*I_1*a3_11*a3_12*sin(2*a3_4) + 23000*I_5*a3_10*a3_12*sin(2*a3_5) - 46000*I_5*a3_11*a3_12*sin(2*a3_4) - 40000*I_9*a3_10*a3_12*sin(2*a3_5) + 80000*I_9*a3_11*a3_12*sin(2*a3_4) - 68000*I_1*a3_12^2*cos(a3_4)^2*cos(a3_5)^3 + 68000*I_5*a3_12^2*cos(a3_4)^2*cos(a3_5)^3 + 80000*I_3*a3_10*a3_11*cos(a3_5)*sin(a3_4) + 68000*I_7*a3_12^2*cos(a3_4)*cos(a3_5)^2*sin(a3_5) - 68000*I_8*a3_12^2*cos(a3_4)*cos(a3_5)^3*sin(a3_4) + 80000*I_3*a3_10*a3_12*cos(a3_4)*cos(a3_5)^2 + 12000*I_2*a3_10*a3_12*cos(a3_5)^2*sin(a3_4) + 160000*I_6*a3_10*a3_11*cos(a3_4)^2*sin(a3_5) + 92000*I_8*a3_10*a3_11*cos(a3_4)^2*sin(a3_5) - 102000*I_7*a3_12^2*cos(a3_4)^3*cos(a3_5)^2*sin(a3_5) - 160000*I_6*a3_11*a3_12*cos(a3_4)^2*cos(a3_5)^2 - 228000*I_8*a3_11*a3_12*cos(a3_4)^2*cos(a3_5)^2 + 160000*I_6*a3_11^2*cos(a3_4)*cos(a3_5)*sin(a3_4) - 160000*I_6*a3_12^2*cos(a3_4)*cos(a3_5)*sin(a3_4) + 160000*I_8*a3_11^2*cos(a3_4)*cos(a3_5)*sin(a3_4) - 92000*I_8*a3_12^2*cos(a3_4)*cos(a3_5)*sin(a3_4) - 80000*I_2*a3_10*a3_11*cos(a3_4)*cos(a3_5) - 68000*I_1*a3_10*a3_12*cos(a3_4)^2*cos(a3_5)*sin(a3_5) + 68000*I_1*a3_11*a3_12*cos(a3_4)*cos(a3_5)^2*sin(a3_4) - 92000*I_5*a3_10*a3_12*cos(a3_4)^2*cos(a3_5)*sin(a3_5) - 228000*I_5*a3_11*a3_12*cos(a3_4)*cos(a3_5)^2*sin(a3_4) - 204000*I_4*a3_11*a3_12*cos(a3_4)^3*cos(a3_5)*sin(a3_5) + 160000*I_9*a3_10*a3_12*cos(a3_4)^2*cos(a3_5)*sin(a3_5) + 160000*I_9*a3_11*a3_12*cos(a3_4)*cos(a3_5)^2*sin(a3_4) - 102000*I_4*a3_12^2*cos(a3_4)^2*cos(a3_5)^2*sin(a3_4)*sin(a3_5) + 80000*I_2*a3_11*a3_12*cos(a3_4)*cos(a3_5)*sin(a3_5) + 216000*I_4*a3_11*a3_12*cos(a3_4)*cos(a3_5)*sin(a3_5) + 68000*I_1*a3_10*a3_11*cos(a3_4)*sin(a3_4)*sin(a3_5) + 92000*I_5*a3_10*a3_11*cos(a3_4)*sin(a3_4)*sin(a3_5) - 80000*I_3*a3_11*a3_12*cos(a3_5)*sin(a3_4)*sin(a3_5) - 160000*I_9*a3_10*a3_11*cos(a3_4)*sin(a3_4)*sin(a3_5) - 114000*I_7*a3_11*a3_12*cos(a3_5)*sin(a3_4)*sin(a3_5) + 160000*I_6*a3_10*a3_12*cos(a3_4)*cos(a3_5)*sin(a3_4)*sin(a3_5) + 92000*I_8*a3_10*a3_12*cos(a3_4)*cos(a3_5)*sin(a3_4)*sin(a3_5) + 204000*I_7*a3_11*a3_12*cos(a3_4)^2*cos(a3_5)*sin(a3_4)*sin(a3_5))/(184*cos(a3_5));
df(10,6) = (184*a3_10*a3_11 + 1127*a4_1*cos(a3_4) - 1127*a4_2*cos(a3_4) + 1127*a4_3*cos(a3_4) - 1127*a4_4*cos(a3_4) - 14000*a4_1*sin(a3_4) + 14000*a4_3*sin(a3_4) - 46000*I_2*a3_10^2*cos(a3_4) - 46000*I_2*a3_12^2*cos(a3_4) + 80000*I_4*a3_11^2*cos(a3_4) + 80000*I_3*a3_10^2*sin(a3_4) + 80000*I_3*a3_12^2*sin(a3_4) - 46000*I_7*a3_11^2*sin(a3_4) + 80000*I_1*a3_10*a3_11 - 80000*I_9*a3_10*a3_11 - 34000*I_4*a3_11^2*cos(a3_4)^3 - 34000*I_7*a3_11^2*sin(a3_4)^3 + 184*a3_11*a3_12*sin(a3_5) - 160000*I_1*a3_11*a3_12*sin(a3_5) + 80000*I_5*a3_11*a3_12*sin(a3_5) + 80000*I_9*a3_11*a3_12*sin(a3_5) + 34000*I_2*a3_12^2*cos(a3_4)*cos(a3_5)^2 - 68000*I_2*a3_12^2*cos(a3_4)*cos(a3_5)^4 + 34000*I_4*a3_12^2*cos(a3_4)*cos(a3_5)^2 - 68000*I_4*a3_12^2*cos(a3_4)*cos(a3_5)^4 - 34000*I_1*a3_10*a3_11*cos(a3_4)^2 - 46000*I_5*a3_10*a3_11*cos(a3_4)^2 + 80000*I_6*a3_10*a3_12*cos(a3_5)^3 + 80000*I_9*a3_10*a3_11*cos(a3_4)^2 + 40000*I_6*a3_10*a3_11*sin(2*a3_4) + 23000*I_8*a3_10*a3_11*sin(2*a3_4) + 80000*I_1*a3_11*a3_12*sin(a3_5)^3 - 80000*I_5*a3_11*a3_12*sin(a3_5)^3 - 34000*I_4*a3_12^2*cos(a3_4)^3*cos(a3_5)^2 + 68000*I_4*a3_12^2*cos(a3_4)^3*cos(a3_5)^4 + 92000*I_2*a3_10*a3_12*cos(a3_4)*sin(a3_5) - 240000*I_3*a3_10*a3_12*sin(a3_4)*sin(a3_5) + 80000*I_3*a3_11*a3_12*cos(a3_4)*cos(a3_5)^3 + 114000*I_7*a3_11*a3_12*cos(a3_4)*cos(a3_5)^3 + 34000*I_1*a3_11*a3_12*cos(a3_4)^2*sin(a3_5) + 80000*I_2*a3_11*a3_12*cos(a3_5)^3*sin(a3_4) + 80000*I_4*a3_11*a3_12*cos(a3_5)^3*sin(a3_4) + 46000*I_5*a3_11*a3_12*cos(a3_4)^2*sin(a3_5) - 80000*I_9*a3_11*a3_12*cos(a3_4)^2*sin(a3_5) + 80000*I_3*a3_10*a3_12*sin(a3_4)*sin(a3_5)^3 + 34000*I_7*a3_12^2*cos(a3_4)^2*cos(a3_5)^2*sin(a3_4) - 68000*I_7*a3_12^2*cos(a3_4)^2*cos(a3_5)^4*sin(a3_4) - 68000*I_8*a3_12^2*cos(a3_4)^2*cos(a3_5)^3*sin(a3_5) - 80000*I_6*a3_10*a3_12*cos(a3_4)^2*cos(a3_5)^3 - 46000*I_8*a3_10*a3_12*cos(a3_4)^2*cos(a3_5)^3 - 68000*I_7*a3_11*a3_12*cos(a3_4)^3*cos(a3_5)^3 - 34000*I_1*a3_10*a3_12*cos(a3_4)*cos(a3_5)^3*sin(a3_4) + 12000*I_2*a3_10*a3_12*cos(a3_4)*cos(a3_5)^2*sin(a3_5) - 46000*I_5*a3_10*a3_12*cos(a3_4)*cos(a3_5)^3*sin(a3_4) + 80000*I_9*a3_10*a3_12*cos(a3_4)*cos(a3_5)^3*sin(a3_4) + 34000*I_1*a3_11*a3_12*cos(a3_4)^2*cos(a3_5)^2*sin(a3_5) - 68000*I_4*a3_11*a3_12*cos(a3_4)^2*cos(a3_5)^3*sin(a3_4) - 114000*I_5*a3_11*a3_12*cos(a3_4)^2*cos(a3_5)^2*sin(a3_5) + 80000*I_9*a3_11*a3_12*cos(a3_4)^2*cos(a3_5)^2*sin(a3_5) - 80000*I_6*a3_11*a3_12*cos(a3_4)*sin(a3_4)*sin(a3_5) - 46000*I_8*a3_11*a3_12*cos(a3_4)*sin(a3_4)*sin(a3_5) + 68000*I_1*a3_12^2*cos(a3_4)*cos(a3_5)^3*sin(a3_4)*sin(a3_5) - 68000*I_5*a3_12^2*cos(a3_4)*cos(a3_5)^3*sin(a3_4)*sin(a3_5) + 80000*I_6*a3_11*a3_12*cos(a3_4)*cos(a3_5)^2*sin(a3_4)*sin(a3_5) + 114000*I_8*a3_11*a3_12*cos(a3_4)*cos(a3_5)^2*sin(a3_4)*sin(a3_5))/(184*cos(a3_5)^2);
df(10,11) = -(20000*I_3*a3_12*sin(a3_4) - 5000*I_6*a3_12*sin(2*a3_5) - 11500*I_2*a3_12*cos(a3_4) - 10000*I_1*a3_11*sin(a3_5) - 23*a3_11*sin(a3_5) + 10000*I_9*a3_11*sin(a3_5) + 4250*I_1*a3_11*cos(a3_4)^2*sin(a3_5) - 10000*I_3*a3_12*cos(a3_5)^2*sin(a3_4) + 5750*I_5*a3_11*cos(a3_4)^2*sin(a3_5) - 10000*I_9*a3_11*cos(a3_4)^2*sin(a3_5) + 10000*I_3*a3_11*cos(a3_4)*cos(a3_5) + 11500*I_2*a3_10*cos(a3_4)*sin(a3_5) + 10000*I_2*a3_11*cos(a3_5)*sin(a3_4) - 20000*I_3*a3_10*sin(a3_4)*sin(a3_5) + 1500*I_2*a3_12*cos(a3_4)*cos(a3_5)^2 - 10000*I_6*a3_11*cos(a3_4)*sin(a3_4)*sin(a3_5) - 5750*I_8*a3_11*cos(a3_4)*sin(a3_4)*sin(a3_5) + 10000*I_6*a3_12*cos(a3_4)^2*cos(a3_5)*sin(a3_5) + 5750*I_8*a3_12*cos(a3_4)^2*cos(a3_5)*sin(a3_5) + 4250*I_1*a3_12*cos(a3_4)*cos(a3_5)*sin(a3_4)*sin(a3_5) + 5750*I_5*a3_12*cos(a3_4)*cos(a3_5)*sin(a3_4)*sin(a3_5) - 10000*I_9*a3_12*cos(a3_4)*cos(a3_5)*sin(a3_4)*sin(a3_5))/(23*cos(a3_5));
df(10,12) = -(10000*I_1*a3_12 - 23*a3_12 - 10000*I_9*a3_12 - 23*a3_10*sin(a3_5) - 4250*I_1*a3_12*cos(a3_4)^2 - 10000*I_1*a3_12*cos(a3_5)^2 - 5750*I_5*a3_12*cos(a3_4)^2 + 10000*I_5*a3_12*cos(a3_5)^2 + 10000*I_9*a3_12*cos(a3_4)^2 + 5000*I_6*a3_12*sin(2*a3_4) + 2875*I_8*a3_12*sin(2*a3_4) - 20000*I_8*a3_11*cos(a3_5) - 10000*I_1*a3_10*sin(a3_5) + 10000*I_9*a3_10*sin(a3_5) + 4250*I_1*a3_10*cos(a3_4)^2*sin(a3_5) + 5750*I_5*a3_10*cos(a3_4)^2*sin(a3_5) + 8500*I_4*a3_11*cos(a3_4)^3*sin(a3_5) - 10000*I_9*a3_10*cos(a3_4)^2*sin(a3_5) + 8500*I_7*a3_11*sin(a3_4)^3*sin(a3_5) + 4250*I_1*a3_12*cos(a3_4)^2*cos(a3_5)^2 - 14250*I_5*a3_12*cos(a3_4)^2*cos(a3_5)^2 + 10000*I_9*a3_12*cos(a3_4)^2*cos(a3_5)^2 + 10000*I_3*a3_10*cos(a3_4)*cos(a3_5) + 10000*I_2*a3_10*cos(a3_5)*sin(a3_4) - 20000*I_4*a3_11*cos(a3_4)*sin(a3_5) + 11500*I_7*a3_11*sin(a3_4)*sin(a3_5) + 20000*I_6*a3_11*cos(a3_4)^2*cos(a3_5) + 20000*I_8*a3_11*cos(a3_4)^2*cos(a3_5) - 10000*I_3*a3_12*cos(a3_4)*cos(a3_5)*sin(a3_5) + 20000*I_5*a3_11*cos(a3_4)*cos(a3_5)*sin(a3_4) - 14250*I_7*a3_12*cos(a3_4)*cos(a3_5)*sin(a3_5) - 20000*I_9*a3_11*cos(a3_4)*cos(a3_5)*sin(a3_4) - 10000*I_2*a3_12*cos(a3_5)*sin(a3_4)*sin(a3_5) - 10000*I_6*a3_10*cos(a3_4)*sin(a3_4)*sin(a3_5) - 10000*I_4*a3_12*cos(a3_5)*sin(a3_4)*sin(a3_5) - 5750*I_8*a3_10*cos(a3_4)*sin(a3_4)*sin(a3_5) + 10000*I_6*a3_12*cos(a3_4)*cos(a3_5)^2*sin(a3_4) + 14250*I_8*a3_12*cos(a3_4)*cos(a3_5)^2*sin(a3_4) + 8500*I_7*a3_12*cos(a3_4)^3*cos(a3_5)*sin(a3_5) + 8500*I_4*a3_12*cos(a3_4)^2*cos(a3_5)*sin(a3_4)*sin(a3_5))/(23*cos(a3_5));
df(10,13) = -(10000*I_1*a3_11 - 23*a3_11 - 10000*I_9*a3_11 - 4250*I_1*a3_11*cos(a3_4)^2 - 10000*I_1*a3_11*cos(a3_5)^2 - 5750*I_5*a3_11*cos(a3_4)^2 + 10000*I_5*a3_11*cos(a3_5)^2 + 10000*I_9*a3_11*cos(a3_4)^2 - 5000*I_6*a3_10*sin(2*a3_5) + 5000*I_6*a3_11*sin(2*a3_4) + 2875*I_8*a3_11*sin(2*a3_4) - 11500*I_2*a3_10*cos(a3_4) + 20000*I_6*a3_12*cos(a3_5) + 20000*I_3*a3_10*sin(a3_4) - 10000*I_3*a3_10*cos(a3_5)^2*sin(a3_4) + 4250*I_1*a3_11*cos(a3_4)^2*cos(a3_5)^2 - 14250*I_5*a3_11*cos(a3_4)^2*cos(a3_5)^2 + 10000*I_9*a3_11*cos(a3_4)^2*cos(a3_5)^2 - 8500*I_8*a3_12*cos(a3_4)^2*cos(a3_5)^3 + 11500*I_2*a3_12*cos(a3_4)*sin(a3_5) - 20000*I_3*a3_12*sin(a3_4)*sin(a3_5) + 1500*I_2*a3_10*cos(a3_4)*cos(a3_5)^2 - 20000*I_6*a3_12*cos(a3_4)^2*cos(a3_5) - 11500*I_8*a3_12*cos(a3_4)^2*cos(a3_5) - 8500*I_4*a3_12*cos(a3_4)^3*cos(a3_5)^2*sin(a3_5) - 8500*I_1*a3_12*cos(a3_4)*cos(a3_5)*sin(a3_4) - 10000*I_3*a3_11*cos(a3_4)*cos(a3_5)*sin(a3_5) - 11500*I_5*a3_12*cos(a3_4)*cos(a3_5)*sin(a3_4) - 14250*I_7*a3_11*cos(a3_4)*cos(a3_5)*sin(a3_5) + 20000*I_9*a3_12*cos(a3_4)*cos(a3_5)*sin(a3_4) - 10000*I_2*a3_11*cos(a3_5)*sin(a3_4)*sin(a3_5) - 10000*I_4*a3_11*cos(a3_5)*sin(a3_4)*sin(a3_5) + 8500*I_1*a3_12*cos(a3_4)*cos(a3_5)^3*sin(a3_4) + 8500*I_2*a3_12*cos(a3_4)*cos(a3_5)^2*sin(a3_5) + 8500*I_4*a3_12*cos(a3_4)*cos(a3_5)^2*sin(a3_5) + 10000*I_6*a3_10*cos(a3_4)^2*cos(a3_5)*sin(a3_5) + 10000*I_6*a3_11*cos(a3_4)*cos(a3_5)^2*sin(a3_4) - 8500*I_5*a3_12*cos(a3_4)*cos(a3_5)^3*sin(a3_4) + 5750*I_8*a3_10*cos(a3_4)^2*cos(a3_5)*sin(a3_5) + 14250*I_8*a3_11*cos(a3_4)*cos(a3_5)^2*sin(a3_4) + 8500*I_7*a3_11*cos(a3_4)^3*cos(a3_5)*sin(a3_5) + 4250*I_1*a3_10*cos(a3_4)*cos(a3_5)*sin(a3_4)*sin(a3_5) + 5750*I_5*a3_10*cos(a3_4)*cos(a3_5)*sin(a3_4)*sin(a3_5) - 10000*I_9*a3_10*cos(a3_4)*cos(a3_5)*sin(a3_4)*sin(a3_5) + 8500*I_4*a3_11*cos(a3_4)^2*cos(a3_5)*sin(a3_4)*sin(a3_5) + 8500*I_7*a3_12*cos(a3_4)^2*cos(a3_5)^2*sin(a3_4)*sin(a3_5))/(23*cos(a3_5));
df(10,15) = (7*sin(a3_5)*(161*cos(a3_4) - 2000*sin(a3_4)))/(184*cos(a3_5));
df(10,16) = (14000*cos(a3_5) - 1127*cos(a3_4)*sin(a3_5))/(184*cos(a3_5));
df(10,17) = (7*sin(a3_5)*(161*cos(a3_4) + 2000*sin(a3_4)))/(184*cos(a3_5));
df(10,18) = -(14000*cos(a3_5) + 1127*cos(a3_4)*sin(a3_5))/(184*cos(a3_5));
df(11,5) = (49*a4_2*cos(a3_4))/8 - (49*a4_1*cos(a3_4))/8 - (49*a4_3*cos(a3_4))/8 + (49*a4_4*cos(a3_4))/8 + (1750*a4_1*sin(a3_4))/23 - (1750*a4_3*sin(a3_4))/23 + 250*I_2*a3_10^2*cos(a3_4) + 250*I_2*a3_12^2*cos(a3_4) - (8500*I_4*a3_11^2*cos(a3_4))/23 - (10000*I_3*a3_10^2*sin(a3_4))/23 - (10000*I_3*a3_12^2*sin(a3_4))/23 - (8500*I_7*a3_11^2*sin(a3_4))/23 - (4250*I_1*a3_10*a3_11)/23 - 250*I_5*a3_10*a3_11 + (10000*I_9*a3_10*a3_11)/23 + (12750*I_4*a3_11^2*cos(a3_4)^3)/23 + (5000*I_6*a3_12^2*sin(2*a3_5))/23 + 125*I_8*a3_12^2*sin(2*a3_5) + (12750*I_7*a3_11^2*sin(a3_4)^3)/23 - (10000*I_6*a3_10*a3_12*cos(a3_5))/23 - 250*I_8*a3_10*a3_12*cos(a3_5) + (4250*I_1*a3_11*a3_12*sin(a3_5))/23 + 250*I_5*a3_11*a3_12*sin(a3_5) - (10000*I_9*a3_11*a3_12*sin(a3_5))/23 - 250*I_2*a3_12^2*cos(a3_4)*cos(a3_5)^2 + (2750*I_4*a3_12^2*cos(a3_4)*cos(a3_5)^2)/23 + (10000*I_3*a3_12^2*cos(a3_5)^2*sin(a3_4))/23 + 250*I_7*a3_12^2*cos(a3_5)^2*sin(a3_4) + (8500*I_1*a3_10*a3_11*cos(a3_4)^2)/23 + 500*I_5*a3_10*a3_11*cos(a3_4)^2 - (20000*I_9*a3_10*a3_11*cos(a3_4)^2)/23 - (10000*I_6*a3_10*a3_11*sin(2*a3_4))/23 - 250*I_8*a3_10*a3_11*sin(2*a3_4) - (12750*I_4*a3_12^2*cos(a3_4)^3*cos(a3_5)^2)/23 - 500*I_2*a3_10*a3_12*cos(a3_4)*sin(a3_5) + (1500*I_4*a3_11*a3_12*cos(a3_5)*sin(a3_4))/23 + (20000*I_3*a3_10*a3_12*sin(a3_4)*sin(a3_5))/23 - (20000*I_6*a3_12^2*cos(a3_4)^2*cos(a3_5)*sin(a3_5))/23 - 500*I_8*a3_12^2*cos(a3_4)^2*cos(a3_5)*sin(a3_5) + (20000*I_6*a3_10*a3_12*cos(a3_4)^2*cos(a3_5))/23 + 500*I_8*a3_10*a3_12*cos(a3_4)^2*cos(a3_5) + (25500*I_7*a3_11*a3_12*cos(a3_4)^3*cos(a3_5))/23 - (8500*I_1*a3_11*a3_12*cos(a3_4)^2*sin(a3_5))/23 - 500*I_5*a3_11*a3_12*cos(a3_4)^2*sin(a3_5) + (20000*I_9*a3_11*a3_12*cos(a3_4)^2*sin(a3_5))/23 + (12750*I_7*a3_12^2*cos(a3_4)^2*cos(a3_5)^2*sin(a3_4))/23 - (11250*I_7*a3_11*a3_12*cos(a3_4)*cos(a3_5))/23 + (25500*I_4*a3_11*a3_12*cos(a3_4)^2*cos(a3_5)*sin(a3_4))/23 - (8500*I_1*a3_12^2*cos(a3_4)*cos(a3_5)*sin(a3_4)*sin(a3_5))/23 - 500*I_5*a3_12^2*cos(a3_4)*cos(a3_5)*sin(a3_4)*sin(a3_5) + (20000*I_9*a3_12^2*cos(a3_4)*cos(a3_5)*sin(a3_4)*sin(a3_5))/23 + (8500*I_1*a3_10*a3_12*cos(a3_4)*cos(a3_5)*sin(a3_4))/23 + 500*I_5*a3_10*a3_12*cos(a3_4)*cos(a3_5)*sin(a3_4) - (20000*I_9*a3_10*a3_12*cos(a3_4)*cos(a3_5)*sin(a3_4))/23 + (20000*I_6*a3_11*a3_12*cos(a3_4)*sin(a3_4)*sin(a3_5))/23 + 500*I_8*a3_11*a3_12*cos(a3_4)*sin(a3_4)*sin(a3_5);
df(11,6) = 250*I_5*a3_12^2 - 250*I_1*a3_12^2 - (4250*I_1*a3_12^2*cos(a3_4)^2)/23 + 500*I_1*a3_12^2*cos(a3_5)^2 - 250*I_5*a3_12^2*cos(a3_4)^2 - 500*I_5*a3_12^2*cos(a3_5)^2 + (10000*I_9*a3_12^2*cos(a3_4)^2)/23 + (5000*I_6*a3_12^2*sin(2*a3_4))/23 + 125*I_8*a3_12^2*sin(2*a3_4) + a3_10*a3_12*sin(a3_5) + 250*I_8*a3_11*a3_12*cos(a3_5) + 250*I_1*a3_10*a3_12*sin(a3_5) - 250*I_5*a3_10*a3_12*sin(a3_5) + (8500*I_1*a3_12^2*cos(a3_4)^2*cos(a3_5)^2)/23 + 500*I_5*a3_12^2*cos(a3_4)^2*cos(a3_5)^2 - (20000*I_9*a3_12^2*cos(a3_4)^2*cos(a3_5)^2)/23 - 500*I_2*a3_10*a3_12*cos(a3_5)*sin(a3_4) + (1500*I_4*a3_11*a3_12*cos(a3_4)*sin(a3_5))/23 - 250*I_7*a3_11*a3_12*sin(a3_4)*sin(a3_5) - (20000*I_6*a3_12^2*cos(a3_4)*cos(a3_5)^2*sin(a3_4))/23 - 500*I_8*a3_12^2*cos(a3_4)*cos(a3_5)^2*sin(a3_4) + (8500*I_7*a3_12^2*cos(a3_4)^3*cos(a3_5)*sin(a3_5))/23 - (10000*I_6*a3_11*a3_12*cos(a3_4)^2*cos(a3_5))/23 - 250*I_8*a3_11*a3_12*cos(a3_4)^2*cos(a3_5) + (4250*I_1*a3_10*a3_12*cos(a3_4)^2*sin(a3_5))/23 + 250*I_5*a3_10*a3_12*cos(a3_4)^2*sin(a3_5) + (8500*I_4*a3_11*a3_12*cos(a3_4)^3*sin(a3_5))/23 - (10000*I_9*a3_10*a3_12*cos(a3_4)^2*sin(a3_5))/23 + (20000*I_3*a3_12^2*cos(a3_4)*cos(a3_5)*sin(a3_5))/23 + 500*I_7*a3_12^2*cos(a3_4)*cos(a3_5)*sin(a3_5) + 500*I_2*a3_12^2*cos(a3_5)*sin(a3_4)*sin(a3_5) + 500*I_4*a3_12^2*cos(a3_5)*sin(a3_4)*sin(a3_5) - (20000*I_3*a3_10*a3_12*cos(a3_4)*cos(a3_5))/23 + (8500*I_7*a3_11*a3_12*sin(a3_4)*sin(a3_5)*(sin(a3_4)^2 - 1))/23 - (4250*I_1*a3_11*a3_12*cos(a3_4)*cos(a3_5)*sin(a3_4))/23 - 250*I_5*a3_11*a3_12*cos(a3_4)*cos(a3_5)*sin(a3_4) + (10000*I_9*a3_11*a3_12*cos(a3_4)*cos(a3_5)*sin(a3_4))/23 - (10000*I_6*a3_10*a3_12*cos(a3_4)*sin(a3_4)*sin(a3_5))/23 - 250*I_8*a3_10*a3_12*cos(a3_4)*sin(a3_4)*sin(a3_5) + (8500*I_4*a3_12^2*cos(a3_4)^2*cos(a3_5)*sin(a3_4)*sin(a3_5))/23;
df(11,11) = (10000*I_6*a3_11*cos(a3_4)^2)/23 - a3_12*cos(a3_5) - 250*I_8*a3_11 + 250*I_8*a3_11*cos(a3_4)^2 + (2125*I_1*a3_11*sin(2*a3_4))/23 + 125*I_5*a3_11*sin(2*a3_4) - (5000*I_9*a3_11*sin(2*a3_4))/23 + (20000*I_3*a3_10*cos(a3_4))/23 - 250*I_1*a3_12*cos(a3_5) + 250*I_5*a3_12*cos(a3_5) + 500*I_2*a3_10*sin(a3_4) - (20000*I_3*a3_12*cos(a3_4)*sin(a3_5))/23 - 500*I_2*a3_12*sin(a3_4)*sin(a3_5) - (4250*I_1*a3_12*cos(a3_4)^2*cos(a3_5))/23 - 250*I_5*a3_12*cos(a3_4)^2*cos(a3_5) + (10000*I_9*a3_12*cos(a3_4)^2*cos(a3_5))/23 + (10000*I_6*a3_12*cos(a3_4)*cos(a3_5)*sin(a3_4))/23 + 250*I_8*a3_12*cos(a3_4)*cos(a3_5)*sin(a3_4);
df(11,12) = (10000*I_6*a3_10*cos(a3_4)^2)/23 - 250*I_8*a3_10 + 250*I_8*a3_10*cos(a3_4)^2 + (8500*I_7*a3_11*cos(a3_4)^3)/23 + (2125*I_1*a3_10*sin(2*a3_4))/23 + 125*I_5*a3_10*sin(2*a3_4) - (5000*I_9*a3_10*sin(2*a3_4))/23 - (8500*I_7*a3_11*cos(a3_4))/23 + (8500*I_4*a3_11*(sin(a3_4) - sin(a3_4)^3))/23 + 250*I_8*a3_12*sin(a3_5) - (10000*I_6*a3_12*cos(a3_4)^2*sin(a3_5))/23 - 250*I_8*a3_12*cos(a3_4)^2*sin(a3_5) - (1500*I_4*a3_12*cos(a3_4)*cos(a3_5))/23 + 250*I_7*a3_12*cos(a3_5)*sin(a3_4) - (8500*I_4*a3_12*cos(a3_4)^3*cos(a3_5))/23 - (4250*I_1*a3_12*cos(a3_4)*sin(a3_4)*sin(a3_5))/23 - 250*I_5*a3_12*cos(a3_4)*sin(a3_4)*sin(a3_5) + (10000*I_9*a3_12*cos(a3_4)*sin(a3_4)*sin(a3_5))/23 + (8500*I_7*a3_12*cos(a3_4)^2*cos(a3_5)*sin(a3_4))/23;
df(11,13) = 250*I_1*a3_12*sin(2*a3_5) - a3_10*cos(a3_5) - 250*I_5*a3_12*sin(2*a3_5) - 250*I_1*a3_10*cos(a3_5) + (20000*I_3*a3_12*cos(a3_4))/23 + 250*I_5*a3_10*cos(a3_5) + 500*I_2*a3_12*sin(a3_4) + 250*I_8*a3_11*sin(a3_5) - 500*I_2*a3_12*cos(a3_5)^2*sin(a3_4) - 500*I_4*a3_12*cos(a3_5)^2*sin(a3_4) - (10000*I_6*a3_11*cos(a3_4)^2*sin(a3_5))/23 - 250*I_8*a3_11*cos(a3_4)^2*sin(a3_5) - (8500*I_7*a3_12*cos(a3_4)^3*cos(a3_5)^2)/23 - (1500*I_4*a3_11*cos(a3_4)*cos(a3_5))/23 - (20000*I_3*a3_10*cos(a3_4)*sin(a3_5))/23 + 250*I_7*a3_11*cos(a3_5)*sin(a3_4) - 500*I_2*a3_10*sin(a3_4)*sin(a3_5) - (4250*I_1*a3_10*cos(a3_4)^2*cos(a3_5))/23 - (20000*I_3*a3_12*cos(a3_4)*cos(a3_5)^2)/23 - 250*I_5*a3_10*cos(a3_4)^2*cos(a3_5) - (8500*I_4*a3_11*cos(a3_4)^3*cos(a3_5))/23 - 500*I_7*a3_12*cos(a3_4)*cos(a3_5)^2 + (10000*I_9*a3_10*cos(a3_4)^2*cos(a3_5))/23 - (8500*I_4*a3_12*cos(a3_4)^2*cos(a3_5)^2*sin(a3_4))/23 + (10000*I_6*a3_10*cos(a3_4)*cos(a3_5)*sin(a3_4))/23 + 250*I_8*a3_10*cos(a3_4)*cos(a3_5)*sin(a3_4) - (4250*I_1*a3_11*cos(a3_4)*sin(a3_4)*sin(a3_5))/23 - 250*I_5*a3_11*cos(a3_4)*sin(a3_4)*sin(a3_5) + (10000*I_9*a3_11*cos(a3_4)*sin(a3_4)*sin(a3_5))/23 + (8500*I_1*a3_12*cos(a3_4)^2*cos(a3_5)*sin(a3_5))/23 + 500*I_5*a3_12*cos(a3_4)^2*cos(a3_5)*sin(a3_5) + (8500*I_7*a3_11*cos(a3_4)^2*cos(a3_5)*sin(a3_4))/23 - (20000*I_9*a3_12*cos(a3_4)^2*cos(a3_5)*sin(a3_5))/23 - (20000*I_6*a3_12*cos(a3_4)*cos(a3_5)*sin(a3_4)*sin(a3_5))/23 - 500*I_8*a3_12*cos(a3_4)*cos(a3_5)*sin(a3_4)*sin(a3_5);
df(11,15) = - (1750*cos(a3_4))/23 - (49*sin(a3_4))/8;
df(11,16) = (49*sin(a3_4))/8;
df(11,17) = (1750*cos(a3_4))/23 - (49*sin(a3_4))/8;
df(11,18) = (49*sin(a3_4))/8;
df(12,5) = -(14000*a4_1*cos(a3_4) - 14000*a4_3*cos(a3_4) + 1127*a4_1*sin(a3_4) - 1127*a4_2*sin(a3_4) + 1127*a4_3*sin(a3_4) - 1127*a4_4*sin(a3_4) - 80000*I_3*a3_10^2*cos(a3_4) - 80000*I_3*a3_12^2*cos(a3_4) + 148000*I_7*a3_11^2*cos(a3_4) - 46000*I_2*a3_10^2*sin(a3_4) - 46000*I_2*a3_12^2*sin(a3_4) - 22000*I_4*a3_11^2*sin(a3_4) + 80000*I_6*a3_10*a3_11 + 46000*I_8*a3_10*a3_11 - 102000*I_7*a3_11^2*cos(a3_4)^3 + 17000*I_1*a3_12^2*sin(2*a3_5) + 23000*I_5*a3_12^2*sin(2*a3_5) - 40000*I_9*a3_12^2*sin(2*a3_5) + 102000*I_4*a3_11^2*sin(a3_4)^3 - 34000*I_1*a3_10*a3_12*cos(a3_5) - 46000*I_5*a3_10*a3_12*cos(a3_5) + 80000*I_9*a3_10*a3_12*cos(a3_5) - 80000*I_6*a3_11*a3_12*sin(a3_5) - 46000*I_8*a3_11*a3_12*sin(a3_5) + 80000*I_3*a3_12^2*cos(a3_4)*cos(a3_5)^2 - 68000*I_7*a3_12^2*cos(a3_4)*cos(a3_5)^2 + 46000*I_2*a3_12^2*cos(a3_5)^2*sin(a3_4) - 34000*I_4*a3_12^2*cos(a3_5)^2*sin(a3_4) - 160000*I_6*a3_10*a3_11*cos(a3_4)^2 - 92000*I_8*a3_10*a3_11*cos(a3_4)^2 - 34000*I_1*a3_10*a3_11*sin(2*a3_4) - 46000*I_5*a3_10*a3_11*sin(2*a3_4) + 80000*I_9*a3_10*a3_11*sin(2*a3_4) + 102000*I_7*a3_12^2*cos(a3_4)^3*cos(a3_5)^2 + 160000*I_3*a3_10*a3_12*cos(a3_4)*sin(a3_5) + 114000*I_7*a3_11*a3_12*cos(a3_5)*sin(a3_4) + 92000*I_2*a3_10*a3_12*sin(a3_4)*sin(a3_5) - 68000*I_1*a3_12^2*cos(a3_4)^2*cos(a3_5)*sin(a3_5) - 92000*I_5*a3_12^2*cos(a3_4)^2*cos(a3_5)*sin(a3_5) + 160000*I_9*a3_12^2*cos(a3_4)^2*cos(a3_5)*sin(a3_5) + 68000*I_1*a3_10*a3_12*cos(a3_4)^2*cos(a3_5) + 92000*I_5*a3_10*a3_12*cos(a3_4)^2*cos(a3_5) + 204000*I_4*a3_11*a3_12*cos(a3_4)^3*cos(a3_5) - 160000*I_9*a3_10*a3_12*cos(a3_4)^2*cos(a3_5) + 160000*I_6*a3_11*a3_12*cos(a3_4)^2*sin(a3_5) + 92000*I_8*a3_11*a3_12*cos(a3_4)^2*sin(a3_5) + 102000*I_4*a3_12^2*cos(a3_4)^2*cos(a3_5)^2*sin(a3_4) - 216000*I_4*a3_11*a3_12*cos(a3_4)*cos(a3_5) - 204000*I_7*a3_11*a3_12*cos(a3_4)^2*cos(a3_5)*sin(a3_4) + 160000*I_6*a3_12^2*cos(a3_4)*cos(a3_5)*sin(a3_4)*sin(a3_5) + 92000*I_8*a3_12^2*cos(a3_4)*cos(a3_5)*sin(a3_4)*sin(a3_5) - 160000*I_6*a3_10*a3_12*cos(a3_4)*cos(a3_5)*sin(a3_4) - 92000*I_8*a3_10*a3_12*cos(a3_4)*cos(a3_5)*sin(a3_4) + 68000*I_1*a3_11*a3_12*cos(a3_4)*sin(a3_4)*sin(a3_5) + 92000*I_5*a3_11*a3_12*cos(a3_4)*sin(a3_4)*sin(a3_5) - 160000*I_9*a3_11*a3_12*cos(a3_4)*sin(a3_4)*sin(a3_5))/(184*cos(a3_5));
df(12,6) = (184*a3_11*a3_12 + 1127*a4_1*cos(a3_4)*sin(a3_5) - 1127*a4_2*cos(a3_4)*sin(a3_5) + 1127*a4_3*cos(a3_4)*sin(a3_5) - 1127*a4_4*cos(a3_4)*sin(a3_5) - 14000*a4_1*sin(a3_4)*sin(a3_5) + 14000*a4_3*sin(a3_4)*sin(a3_5) - 80000*I_1*a3_11*a3_12 + 80000*I_9*a3_11*a3_12 - 80000*I_6*a3_12^2*cos(a3_5)^3 + 184*a3_10*a3_11*sin(a3_5) - 46000*I_2*a3_10^2*cos(a3_4)*sin(a3_5) - 46000*I_2*a3_12^2*cos(a3_4)*sin(a3_5) + 80000*I_4*a3_11^2*cos(a3_4)*sin(a3_5) + 80000*I_3*a3_10^2*sin(a3_4)*sin(a3_5) + 160000*I_3*a3_12^2*sin(a3_4)*sin(a3_5) - 46000*I_7*a3_11^2*sin(a3_4)*sin(a3_5) + 92000*I_2*a3_10*a3_12*cos(a3_4) + 80000*I_1*a3_10*a3_11*sin(a3_5) - 160000*I_3*a3_10*a3_12*sin(a3_4) - 80000*I_9*a3_10*a3_11*sin(a3_5) - 34000*I_4*a3_11^2*cos(a3_4)^3*sin(a3_5) - 80000*I_3*a3_12^2*sin(a3_4)*sin(a3_5)^3 - 34000*I_7*a3_11^2*sin(a3_4)^3*sin(a3_5) + 34000*I_1*a3_11*a3_12*cos(a3_4)^2 + 46000*I_5*a3_11*a3_12*cos(a3_4)^2 - 80000*I_9*a3_11*a3_12*cos(a3_4)^2 - 40000*I_6*a3_11*a3_12*sin(2*a3_4) - 23000*I_8*a3_11*a3_12*sin(2*a3_4) + 80000*I_6*a3_12^2*cos(a3_4)^2*cos(a3_5)^3 + 46000*I_8*a3_12^2*cos(a3_4)^2*cos(a3_5)^3 + 34000*I_1*a3_12^2*cos(a3_4)*cos(a3_5)^3*sin(a3_4) - 46000*I_2*a3_12^2*cos(a3_4)*cos(a3_5)^2*sin(a3_5) + 34000*I_4*a3_12^2*cos(a3_4)*cos(a3_5)^2*sin(a3_5) + 46000*I_5*a3_12^2*cos(a3_4)*cos(a3_5)^3*sin(a3_4) - 80000*I_9*a3_12^2*cos(a3_4)*cos(a3_5)^3*sin(a3_4) - 34000*I_1*a3_10*a3_11*cos(a3_4)^2*sin(a3_5) - 46000*I_5*a3_10*a3_11*cos(a3_4)^2*sin(a3_5) + 80000*I_9*a3_10*a3_11*cos(a3_4)^2*sin(a3_5) - 34000*I_4*a3_12^2*cos(a3_4)^3*cos(a3_5)^2*sin(a3_5) + 34000*I_7*a3_12^2*cos(a3_4)^2*cos(a3_5)^2*sin(a3_4)*sin(a3_5) + 80000*I_6*a3_10*a3_11*cos(a3_4)*sin(a3_4)*sin(a3_5) + 46000*I_8*a3_10*a3_11*cos(a3_4)*sin(a3_4)*sin(a3_5))/(184*cos(a3_5)^2);
df(12,11) = (23*a3_11 + 10000*I_1*a3_11 - 10000*I_9*a3_11 - 4250*I_1*a3_11*cos(a3_4)^2 - 5750*I_5*a3_11*cos(a3_4)^2 + 10000*I_9*a3_11*cos(a3_4)^2 + 5000*I_6*a3_11*sin(2*a3_4) + 2875*I_8*a3_11*sin(2*a3_4) - 11500*I_2*a3_10*cos(a3_4) + 10000*I_6*a3_12*cos(a3_5) + 20000*I_3*a3_10*sin(a3_4) + 11500*I_2*a3_12*cos(a3_4)*sin(a3_5) - 20000*I_3*a3_12*sin(a3_4)*sin(a3_5) - 10000*I_6*a3_12*cos(a3_4)^2*cos(a3_5) - 5750*I_8*a3_12*cos(a3_4)^2*cos(a3_5) - 4250*I_1*a3_12*cos(a3_4)*cos(a3_5)*sin(a3_4) - 5750*I_5*a3_12*cos(a3_4)*cos(a3_5)*sin(a3_4) + 10000*I_9*a3_12*cos(a3_4)*cos(a3_5)*sin(a3_4))/(23*cos(a3_5));
df(12,12) = (23*a3_10 + 10000*I_1*a3_10 - 10000*I_9*a3_10 + 23*a3_12*sin(a3_5) - 4250*I_1*a3_10*cos(a3_4)^2 - 5750*I_5*a3_10*cos(a3_4)^2 - 8500*I_4*a3_11*cos(a3_4)^3 + 10000*I_9*a3_10*cos(a3_4)^2 + 5000*I_6*a3_10*sin(2*a3_4) + 2875*I_8*a3_10*sin(2*a3_4) - 8500*I_7*a3_11*sin(a3_4)^3 + 20000*I_4*a3_11*cos(a3_4) - 10000*I_1*a3_12*sin(a3_5) - 11500*I_7*a3_11*sin(a3_4) + 10000*I_9*a3_12*sin(a3_5) + 4250*I_1*a3_12*cos(a3_4)^2*sin(a3_5) + 5750*I_5*a3_12*cos(a3_4)^2*sin(a3_5) - 10000*I_9*a3_12*cos(a3_4)^2*sin(a3_5) + 14250*I_7*a3_12*cos(a3_4)*cos(a3_5) + 10000*I_4*a3_12*cos(a3_5)*sin(a3_4) - 8500*I_7*a3_12*cos(a3_4)^3*cos(a3_5) - 10000*I_6*a3_12*cos(a3_4)*sin(a3_4)*sin(a3_5) - 5750*I_8*a3_12*cos(a3_4)*sin(a3_4)*sin(a3_5) - 8500*I_4*a3_12*cos(a3_4)^2*cos(a3_5)*sin(a3_4))/(23*cos(a3_5));
df(12,13) = -(10000*I_6*a3_12*sin(2*a3_5) - 23*a3_11*sin(a3_5) + 11500*I_2*a3_12*cos(a3_4) - 10000*I_6*a3_10*cos(a3_5) + 10000*I_1*a3_11*sin(a3_5) - 20000*I_3*a3_12*sin(a3_4) - 10000*I_9*a3_11*sin(a3_5) - 4250*I_1*a3_11*cos(a3_4)^2*sin(a3_5) + 20000*I_3*a3_12*cos(a3_5)^2*sin(a3_4) - 5750*I_5*a3_11*cos(a3_4)^2*sin(a3_5) + 10000*I_9*a3_11*cos(a3_4)^2*sin(a3_5) - 8500*I_4*a3_12*cos(a3_4)^3*cos(a3_5)^2 - 14250*I_7*a3_11*cos(a3_4)*cos(a3_5) - 11500*I_2*a3_10*cos(a3_4)*sin(a3_5) - 10000*I_4*a3_11*cos(a3_5)*sin(a3_4) + 20000*I_3*a3_10*sin(a3_4)*sin(a3_5) - 11500*I_2*a3_12*cos(a3_4)*cos(a3_5)^2 + 8500*I_4*a3_12*cos(a3_4)*cos(a3_5)^2 + 10000*I_6*a3_10*cos(a3_4)^2*cos(a3_5) + 5750*I_8*a3_10*cos(a3_4)^2*cos(a3_5) + 8500*I_7*a3_11*cos(a3_4)^3*cos(a3_5) + 8500*I_7*a3_12*cos(a3_4)^2*cos(a3_5)^2*sin(a3_4) + 4250*I_1*a3_10*cos(a3_4)*cos(a3_5)*sin(a3_4) + 5750*I_5*a3_10*cos(a3_4)*cos(a3_5)*sin(a3_4) - 10000*I_9*a3_10*cos(a3_4)*cos(a3_5)*sin(a3_4) + 10000*I_6*a3_11*cos(a3_4)*sin(a3_4)*sin(a3_5) + 5750*I_8*a3_11*cos(a3_4)*sin(a3_4)*sin(a3_5) + 8500*I_4*a3_11*cos(a3_4)^2*cos(a3_5)*sin(a3_4) - 20000*I_6*a3_12*cos(a3_4)^2*cos(a3_5)*sin(a3_5) - 11500*I_8*a3_12*cos(a3_4)^2*cos(a3_5)*sin(a3_5) - 8500*I_1*a3_12*cos(a3_4)*cos(a3_5)*sin(a3_4)*sin(a3_5) - 11500*I_5*a3_12*cos(a3_4)*cos(a3_5)*sin(a3_4)*sin(a3_5) + 20000*I_9*a3_12*cos(a3_4)*cos(a3_5)*sin(a3_4)*sin(a3_5))/(23*cos(a3_5));
df(12,15) = (1127*cos(a3_4) - 14000*sin(a3_4))/(184*cos(a3_5));
df(12,16) = -(49*cos(a3_4))/(8*cos(a3_5));
df(12,17) = (1127*cos(a3_4) + 14000*sin(a3_4))/(184*cos(a3_5));
df(12,18) = -(49*cos(a3_4))/(8*cos(a3_5));


 % NOTEST
