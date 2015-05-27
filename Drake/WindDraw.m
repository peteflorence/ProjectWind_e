for t = 0:0.1:10
  
  
  windfield = 'flyingellipsoid';
  ellipsoidcenter = [3-t/5 0 1];
  ellipsoidmajor = 0.24;
  ellipsoidminor = 0.20;
  
  lcmgl = drake.util.BotLCMGLClient(lcm.lcm.LCM.getSingleton(), 'Windy');
  lcmgl.glColor3f(0,1,0);
  
  if strcmp(windfield, 'flyingellipsoid')
    xcenter = ellipsoidcenter(1);
    ycenter = ellipsoidcenter(2);
    zcenter = ellipsoidcenter(3);
    for yi = (ycenter-ellipsoidmajor):0.05:(ycenter+ellipsoidmajor)
      for xi = (xcenter-ellipsoidminor):0.05:(xcenter+ellipsoidminor)
        for zi = (zcenter-ellipsoidmajor):0.05:(zcenter+ellipsoidmajor)
          ywind = 0;
          zwind = 0;
          if (xi - xcenter)^2/ellipsoidminor^2 + (yi-ycenter)^2/ellipsoidmajor^2 + (zi - zcenter)^2/ellipsoidmajor^2 < 1
            xwind = -0.6;
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
  t
end