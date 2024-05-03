x = input("Enter the sequence : ");
x2 = x;
N = length(x); 
p=log2(N); 
Half=N/2;
for stage=1:p
for index=0:(N/(2^(stage-1))):(N-1) 
for n=0:(Half-1) 
pos=n+index+1; 
pow=(2^(stage-1))*n;
w=exp((-1i)*(2*pi)*pow/N); 
a=x(pos)+x(pos+Half);
b=(x(pos)-x(pos+Half)).*w; 
x(pos)=a;
x(pos+Half)=b; 
end
end
Half=Half/2; 
end
y=bitrevorder(x)
m = abs(y)
ph = angle(y)
y2 = fft(x2)
m2 = abs(y2);
ph2 = angle(y2);
subplot(3, 1, 1);
stem(x);
title('Input sequence');
xlabel('n');
ylabel('Amp');
subplot(3, 1, 2);
stem(m);
title('Mag');
xlabel('n');
ylabel('Amp');
subplot(3, 1, 3);
stem(ph);
title('Phase');
xlabel('n');
ylabel('Amp');
sgtitle('DIF-FFT using MATLAB')