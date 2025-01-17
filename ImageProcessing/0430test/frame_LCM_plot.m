load('frame_LCM_sync.mat', 'Y')

plot(Y(:,1),Y(:,2),'.')

x = Y(:,1);
y = Y(:,2);

poly = polyfit(x,y,1)

% Data
p1 = 8.287104165335382;

% Perfect 120 fps
% p1 = 8.333333333333333;
p2 = 2.074564684272504e+05;

p1 = poly(1);
p2 = poly(2);


xfit = linspace(2,411);
yfit = p1*xfit + p2;

figure
hold on
plot(x,y,'.')
plot(xfit,yfit)