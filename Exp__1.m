%Basic Signals
clc;
clear all;
close all;

x = -5:0.01:5
xds = -5:1:5;

%unit impulse
ui = (x==0);
subplot(621)
plot(x,ui);
title('Unit Impulse Continious');
xlabel('x');
ylabel('y');
ui_ds = (xds==0);
subplot(622);
stem(xds,ui_ds);
title('Unit Impulse Discrete');
xlabel('x');
ylabel('y');


%unit step
us = (x>=0);
us_ds = (xds>=0);
subplot(623);
plot(x,us);
title('Unit Step Continious');
xlabel('x');
ylabel('y');
subplot(624);
stem(xds,us_ds);
title('Unit Step Discrete');
xlabel('x');
ylabel('y');


%unit Ramp
ur = x.*us;
ur_ds = xds.*us_ds;
subplot(625);
plot(x,ur);
title('Unit Ramp Continious');
xlabel('x');
ylabel('y');
subplot(626);
stem(xds,ur_ds);
title('Unit Ramp Discrete');
xlabel('x');
ylabel('y');


%sinosiodal
f = 5;
si = sin(2*pi*f*x);
si_ds = sin(2*pi*f*xds);
subplot(627);
plot(x,si);
title('Sinosoidal Continious');
xlabel('x');
ylabel('y');
subplot(628);
stem(xds,si_ds);
title('Sinosoidal Discrete');
xlabel('x');
ylabel('y');

%exponential
ex = exp(x);
ex_ds = exp(xds);
subplot(629);
plot(x,ex);
title('Exponential Continious');
xlabel('x');
ylabel('y');
subplot(6,2,10);
stem(xds,ex_ds);
title('Exponential Discrete');
xlabel('x');
ylabel('y');

%sinc
sincc = sinc(x);
sincc_ds = sinc(xds);
subplot(6,2,11);
plot(x,sincc);
title('Sinc Continious');
xlabel('x');
ylabel('y');
subplot(6,2,12);
stem(xds,sincc_ds);
title('Sinc Discrete');
xlabel('x');
ylabel('y');
