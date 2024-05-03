clc;
close all; 
clear all;
t = -10:1:10;
t1 = -10:0.01:10;
% ------Scaling---------%
y = t == 0;
subplot(4,3,1);
plot(t,y);
title('Unit impulse-Continuous')
subplot(4,3,2);
stem(t,y);
title('Unit impulse-Discrete')
y1 = 3*y;
subplot(4,3,3)
plot(t, y1);
title('Unit impulse - Scaled')

u_t(t1>=0) = 1;  
subplot(4,3,4);
plot(t1, u_t);
title('Unit Step-Continuous')
ud_t(t>=0) = 1;
subplot(4,3,5);
stem(t,ud_t);
title('Unit impulse-Discrete')
u1_t = 3 * u_t;
subplot(4,3,6);
plot(t1, u1_t);
title('Unit Step - Scaled')

r_t = t;
subplot(4,3,7);
plot(t, r_t);
grid on;
title('Ramp Signal - Continuous');
subplot(4,3,8);
stem(t, r_t);
title('Ramp Signal-Discrete');
r1_t = 3*(r_t);
subplot(4,3,9);
plot(t, r1_t);
grid on;
title('Ramp Signal - Scaled')

s1_t = sin(2*pi*0.2*t1);
subplot(4,3,10);
plot(t1, s1_t);
title('Signal 1');
s2_t = sin(2*pi*0.4*t1);
subplot(4,3,11);
plot(t1, s2_t);
title('Signal 2');

s3_t = s1_t + s2_t;
subplot(4,3,12);
plot(t1, s3_t);
title('Addition of two Signals');