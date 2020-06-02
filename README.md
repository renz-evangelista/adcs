# adcs
Attitude Determination and Control System Simulation using Different Control Algorithms (LQR, Sliding Mode Controller, Integrator Backstepping Controller)

To see the results of this project, download all the files and run plot_output.m

After running the file, it will output Platform Orientation, Platform Angular Velocity, and Reaction Wheels Angular Velocity plots of each controllers for a total of 9 figures. The default desired orientation for all controllers is (80, 40, 60) degrees in roll, pitch, yaw respectively. The parameters used for these controllers are Q = eye(6), R = 10eye(3) for LQR; K =0.3eye(3), G =0.1eye(3), thickness = 0.1 for SMC; and K1 =0.001eye(3), K2 = 5eye(3) for Integrator Backstepping Controller. 
