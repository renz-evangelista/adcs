zero_mtrx = zeros([3 3]);
I = 2.5*eye(3);
I_inv = inv(I);
A = [zero_mtrx, 0.5*I; zero_mtrx,zero_mtrx];
B = [zero_mtrx;I_inv];
C = eye(6);
D = 0;
Q = eye(6);
R = 10*eye(3);

k_lqr = lqr(A,B,Q,R)