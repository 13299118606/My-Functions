function [K,Pout] = kalman_filter_joseph_form_observational_update(z,R,H,P) 
% 
% P. D. Joseph's "stabilized" Kalman filter measurement 
% update. 
% 
n   = length(H); 
zp  = sqrt(1/R); 
Hp  = zp*H; 
K   = (Hp*P*Hp' + 1) \ P*Hp'; 
W   = eye(n)-K*Hp; 
Pout= W*P*W' + K*K';