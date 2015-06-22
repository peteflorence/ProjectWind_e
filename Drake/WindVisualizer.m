classdef WindVisualizer < BotVisualizer
% Implements the draw function for the Acrobot 

  methods
    function obj = WindVisualizer(plant)
      % Construct visualizer
      %   AcrobotVisualizer(AcrobotPlant) will take the necessary
      %   parameters from the plant class
      
      %typecheck(plant,'AcrobotPlant');
      obj = obj@BotVisualizer(plant);
      %obj.l1 = plant.l1;
      %obj.l2 = plant.l2;
    end
    
    function draw(obj,t,x)
      
      draw@BotVisualizer(obj,t,x)
      
      
      tvWindDraw_FlyingSphere(t);
      display(t)
      display('are we here?')
      %tvWindDraw(
     
     
  
    end
  end

  properties

  end
  
end