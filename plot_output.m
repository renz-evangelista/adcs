sim('lqr_final');
figure(1); 
plot(t,euler(:,1),'b-', t,euler(:,2),'r-', t,euler(:,3),'g-'); 
grid; 
legend('roll','pitch','yaw'); 
xlabel('time (s) '); 
ylabel('degrees'); 
title('Platform Orientation'); 

figure(2); 
plot(t,p_speed(:,1),'b-', t,p_speed(:,2),'r-', t,p_speed(:,3),'g-'); 
grid; 
legend('roll','pitch','yaw'); 
xlabel('time (s) '); 
ylabel('deg/s'); 
title('Platform Speed');

figure(3); 
plot(t,wheel_speed(:,1),'b-', t,wheel_speed(:,2),'r-', t,wheel_speed(:,3),'g-', t,wheel_speed(:,4),'y-'); 
grid; 
legend('wheel 1','wheel 2','wheel 3', 'wheel 4'); 
xlabel('time (s) '); 
ylabel('rad/s'); 
title('Reaction Wheels Speed');

total_power = sum(power);