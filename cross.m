function y = cross(u)
u1 = u(1,:);
u2 = u(2,:);
u3 = u(3,:);

y = [0,-u3,u2;u3,0,-u1;-u2,u1,0];