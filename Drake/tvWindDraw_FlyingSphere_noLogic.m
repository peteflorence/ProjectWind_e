function tvWindDraw_FlyingSphere_noLogic(t)
  
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
  
  display(ellipsoidcenter)
  
  for yi = (ycenter-extsphere):step:(ycenter+extsphere)
    yidif = yi - xcenter;          % translate
    for xi = (xcenter-extsphere):step:(xcenter+extsphere)
      xidif = xi - xcenter;        % translate
      for zi = (zcenter-extsphere):step:(zcenter+extsphere)
        zidif = zi - xcenter;      % translate
        
        
        xwind = 0;
        ywind = 0;
        zwind = 0;
        

        % cart2sph
        [azimuth,elevation,r] = cart2sph(xidif,yidif,zidif);
        
        
        
        scale = nomwind;
        reversed = -1;
        shift1 = sphereradius*2;
        xwind = scale * (tanh(reversed * (r-shift1) * 10 ) +1) / 2;
        
        
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



