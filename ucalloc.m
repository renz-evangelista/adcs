function u = ucalloc(K,T,W,tau)
if det(T*T')==0, 
    error('T*T''is singular'); 
elseif det(W)==0,
    error('W must be positive'); 
else
    Winv = inv(W);
    u = inv(K)*Winv*T'*inv(T*Winv*T')*tau;
end