clc;
close all;
x=[2,1,4,5,6,7];
y=[2,4,6,8,0,1];
subplot(221);
stem(x);
xlabel("N");
ylabel("Amplitude");
title("Input Sequence 1");
subplot(222);
stem(y);
xlabel("N");
ylabel("Amplitude");
title("Input Sequence 2");
% Cross Correlation
z=xcorr(x,y);
subplot(223);
stem(z);
xlabel("N");
ylabel("Amplitude");
title("Cross Correlation");
% Auto Correlation
[c,lags] = xcorr(x);
subplot(224);
stem(lags,c);
xlabel("N");
ylabel("Amplitude");
title("Auto Correlation of Sequence 1");
sgtitle("Cross Correlation and Auto Correlation of Discrete Signals")