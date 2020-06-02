%% clc; clear all; close all
% LQR
sim('lqr_final');   
figure(1); 
plot(t,euler(:,1),'b-', t,euler(:,2),'r-', t,euler(:,3),'g-'); 
grid; 
legend('roll','pitch','yaw'); 
xlabel('time (s) '); 
ylabel('degrees'); 
title('Platform Orientation (LQR Controller)'); 

figure(2); 
plot(t,p_speed(:,1),'b-', t,p_speed(:,2),'r-', t,p_speed(:,3),'g-'); 
grid; 
legend('roll','pitch','yaw'); 
xlabel('time (s) '); 
ylabel('deg/s'); 
title('Platform Speed (LQR Controller)');

figure(3); 
plot(t,wheel_speed(:,1),'b-', t,wheel_speed(:,2),'r-', t,wheel_speed(:,3),'g-', t,wheel_speed(:,4),'y-'); 
grid; 
legend('wheel 1','wheel 2','wheel 3', 'wheel 4'); 
xlabel('time (s) '); 
ylabel('rad/s'); 
title('Reaction Wheels Speed (LQR Controller)');

total_power_lqr = sum(power);
%% clc; clear all; close all
% LQR
sim('smc');   
figure(4); 
plot(t,euler(:,1),'b-', t,euler(:,2),'r-', t,euler(:,3),'g-'); 
grid; 
legend('roll','pitch','yaw'); 
xlabel('time (s) '); 
ylabel('degrees'); 
title('Platform Orientation (Sliding Mode Controller)'); 

figure(5); 
plot(t,p_speed(:,1),'b-', t,p_speed(:,2),'r-', t,p_speed(:,3),'g-'); 
grid; 
legend('roll','pitch','yaw'); 
xlabel('time (s) '); 
ylabel('deg/s'); 
title('Platform Speed (Sliding Mode Controller)');

figure(6); 
plot(t,wheel_speed(:,1),'b-', t,wheel_speed(:,2),'r-', t,wheel_speed(:,3),'g-', t,wheel_speed(:,4),'y-'); 
grid; 
legend('wheel 1','wheel 2','wheel 3', 'wheel 4'); 
xlabel('time (s) '); 
ylabel('rad/s'); 
title('Reaction Wheels Speed (Sliding Mode Controller)');

total_power_smc = sum(power);
%% clc; clear all; close all
% LQR
sim('backstepping');   
figure(7); 
plot(t,euler(:,1),'b-', t,euler(:,2),'r-', t,euler(:,3),'g-'); 
grid; 
legend('roll','pitch','yaw'); 
xlabel('time (s) '); 
ylabel('degrees'); 
title('Platform Orientation (Integrator Backstepping Controller)'); 

figure(8); 
plot(t,p_speed(:,1),'b-', t,p_speed(:,2),'r-', t,p_speed(:,3),'g-'); 
grid; 
legend('roll','pitch','yaw'); 
xlabel('time (s) '); 
ylabel('deg/s'); 
title('Platform Speed (Integrator Backstepping Controller)');

figure(9); 
plot(t,wheel_speed(:,1),'b-', t,wheel_speed(:,2),'r-', t,wheel_speed(:,3),'g-', t,wheel_speed(:,4),'y-'); 
grid; 
legend('wheel 1','wheel 2','wheel 3', 'wheel 4'); 
xlabel('time (s) '); 
ylabel('rad/s'); 
title('Reaction Wheels Speed (Integrator Backstepping Controller)');

total_power_backstepping = sum(power);