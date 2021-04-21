function [ u ] = pd_controller(~, s, s_des, params)
%PD_CONTROLLER  PD controller for the height
%
%   s: 2x1 vector containing the current state [z; v_z]
%   s_des: 2x1 vector containing desired state [z; v_z]
%   params: robot parameters




% FILL IN YOUR CODE HERE
%z2dot_des = 1;
e = s_des(1) - s(1);
edot = s_des(2) - s(2);
Kp = 100;
Kv = 16;
u = params.mass*(Kp*e + Kv*edot + params.gravity); 


end

