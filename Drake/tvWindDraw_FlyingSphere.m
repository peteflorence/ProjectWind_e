function tvWindDraw_FlyingSphere(t)
  
display(t)

ellipsoidcenter = [3 0 1];

windfield = 'flyingsphere';


V_0 = 3.5; % m/s guess
c = 0.1; % guess
V = V_0 / (1 + V_0 * c * t);
%V = V_0;

ellipsoidcenter = ellipsoidcenter - [V*t 0 0];

sphereradius = 0.30;
boundary = 0.01;
extsphere = sphereradius + boundary;

lcmgl = drake.util.BotLCMGLClient(lcm.lcm.LCM.getSingleton(), 'Windy');
lcmgl.glColor3f(0,1,0);

step = 0.10;
nomwind = -3.0;

if strcmp(windfield, 'flyingsphere')
  xcenter = ellipsoidcenter(1);
  ycenter = ellipsoidcenter(2);
  zcenter = ellipsoidcenter(3);
  for yi = (ycenter-extsphere):step:(ycenter+extsphere)
    for xi = (xcenter-extsphere):step:(xcenter+extsphere)
      for zi = (zcenter-extsphere):step:(zcenter+extsphere)
        xwind = 0;
        ywind = 0;
        zwind = 0;
        if (xi - xcenter)^2/sphereradius^2 + (yi-ycenter)^2/sphereradius^2 + (zi - zcenter)^2/sphereradius^2 < 1
          xwind = nomwind;
        elseif (xi - xcenter)^2/extsphere^2 + (yi-ycenter)^2/extsphere^2 + (zi - zcenter)^2/extsphere^2 < 1
          display('found a boundary point')
          
          % hypertan wants to go from -1 to 1
          % this f(x) goes from 0 to 3, as x goes from -1 to 1
          
          % find distance to edge of sphere
          fromcenter = sqrt( (xi - xcenter)^2 + (yi-ycenter)^2 + (zi - zcenter)^2 );
          distance = fromcenter - sphereradius;
          
          
          % normalize that distance
          normdistance = distance / boundary;
          % make it go from -1 to 1
          hypertandistance = normdistance * 2 - 1;
          
          % in this setup, -1 is right next to the sphere, and 1 is out in
          % nowhere
          
          reversed = -1;
          xwind = nomwind * (tanh(reversed * hypertandistance * 10)+1)/2;
          
        else
          xwind = 0;
        end
        pos = [xi, yi, zi];
        force = [xwind, ywind, zwind];
        lcmgl.drawVector3d(pos,force/20);
      end
      
    end
  end
end


lcmgl.glEnd();
lcmgl.switchBuffers();
pause(0.01)
end



