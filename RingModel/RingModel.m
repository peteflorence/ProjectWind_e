% This model is a simple flying ellipsoid, inspired from Sullivan 2008 

% Paramters

R_0 = 0.284/2; % 28.4 cm, measured exit diameter of vortex ring
L = 0.791;     % 79.1 cm, measured length of vortex cannon

% Calculate ellipsoid radii, assuming a ratio of semi-minor to semi-major
% axes of gamma = 0.828
gamma = 0.828;

% Calculate semi-major axis

R = (3 * (R_0)^2 * L / (4 * gamma) ) ^ (1/3)


% Calculate semi-minor axis

Rgamma = R * gamma



% Fit velocity

load /Users/pflomacpro/ProjectWind/ImageProcessing/0423vortex/1/data.mat

figure
plot(data(:,10),data(:,11),'-ko','MarkerSize', 12);
title('Velocity estimate (finite difference)')
xlabel('time (seconds)') % x-axis label
ylabel('velocity (meters / second)') % y-axis label


% Dumb guesses
V_0 = 3.5 % m/s guess
c = 0.1 % guess

% Initialize column for estimated velocity
data(:,11) = zeros(length(data(:,8)),1);
for i = 2:length(data(:,8))
  t = data(i,10);
  V = V_0 / (1 + V_0 * c * t);
  data(i,11) = V;
end
hold on
plot(data(:,10),data(:,11),'-r','MarkerSize', 5);

