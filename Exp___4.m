% MATLAB code for DFT
clc;
xn = input('Input sequence: ');
N = input('Enter the number of points: ');
Xk = calcdft(xn, N);
disp('DFT X(k): ');
disp(Xk);
mgXk = abs(Xk);
phaseXk = angle(Xk);
k = 0:N-1;
subplot (5,1,1);
stem(xn);
title('Input sequence');
xlabel('Sample');
ylabel('Amplitude');
subplot(5,1,2);
stem(k, real(Xk));
title('Real part of DFT');
xlabel('Frequency');
ylabel('Real Part');
subplot(5,1,3);
stem(k, imag(Xk));
title('Imaginary part of DFT');
xlabel('Frequency');
ylabel('Imaginary Part');
subplot(5,1,4);
stem(k, mgXk);
title('Magnitude of DFT');

xlabel('Frequency');
ylabel('Magnitude');
subplot(5,1,5);
stem(k, phaseXk);
title('Phase of DFT');
xlabel('Frequency');
ylabel('Phase (radians)');
% IDFT
xn_idft = calcidft(Xk);
N_idft = length(xn_idft);
disp('IDFT sequence: ');
disp(xn_idft);
% Display the matrix of IDFT sequence
disp('IDFT Matrix:');
disp(xn_idft);
% Calculate and display the sum of each row
disp('Sum of each row:');
row_sum = sum(xn_idft, 2);
disp(row_sum);
n = 0:N_idft-1;
figure;
subplot(2,1,1);
stem(n, real(xn_idft));
title('Real part of IDFT');

xlabel('Sample');
ylabel('Amplitude');
subplot(2,1,2);
stem(n, imag(xn_idft));
title('Imaginary part of IDFT');
xlabel('Sample');
ylabel('Amplitude');
function Xk = calcdft(xn, N)
   L = length(xn);
   if N < L
       error('N must be greater than or equal to L!!')
   end
   x1 = [xn, zeros(1,N-L)];
   for k = 0:N-1
       for n = 0:N-1
           p = exp(-1i*2*pi*n*k/N);
           W(k+1, n+1) = p;
       end
   end
   Xk = W*(x1.');
end
function xn = calcidft(Xk)
   N = length(Xk);
   for k = 0:N-1
       for n = 0:N-1
           p = exp(1i*2*pi*n*k/N);
           IT(k+1, n+1) = p;
       end
   end
   xn = (IT.*(Xk.'))/N;
end

