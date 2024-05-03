clc;
close all;
clear all;

x = [2 1 2 1];
y = [1 -1 2 3];
clin = conv(x,y);

ccirc = cconv(x, y);

% Linear Conv
subplot(5,2,1)
stem(clin,'filled')
ylim([0 11])
title('Linear Convolution of x and y')

%Circular Conv
subplot(5,2,2)
stem(ccirc,'filled')
ylim([0 11])
title('Circular Convolution of x and y')

% Associative 
x1 = [1 2 3];
x2 = [2 1 2 1];
x3 = [3 2 1];
assoc_lhs = conv(x1, conv(x2, x3));
assoc_rhs = conv(conv(x1, x2), x3);

subplot(5,2,3)
stem(assoc_lhs, 'filled')
ylim([0 20])
title('Associative Property: (x1 * x2) * x3')

subplot(5, 2, 4)
stem(assoc_rhs, 'filled')
ylim([0 20])
title('Associative Property: x1 * (x2 * x3)')

% Commutative
comm_lhs = conv(x, y);
comm_rhs = conv(y, x);

subplot(5, 2, 5)
stem(comm_lhs, 'filled')
ylim([0 11])
title('Commutative Property: x * y')

subplot(5, 2, 6)
stem(comm_rhs, 'filled')
ylim([0 11])
title('Commutative Property: y * x')

% Distributive
z = [3 2 1 4];
dist_lhs = conv(x, (y + z));
dist_rhs = conv(x, y) + conv(x, z);

subplot(5,2,7)
stem(dist_lhs, 'filled')
ylim([0 30])
title('Distributive Property: x * (y + z)')

subplot(5,2,8)
stem(dist_rhs, 'filled')
ylim([0 30])
title('Distributive Property: (x * y) + (x * z)')

iden_x = [2 1 2 1];
iden_d = [1];
iden_lhs = conv(iden_x, iden_d);
iden_rhs = iden_x;

% Identity
subplot(5,2,9)
stem(iden_lhs, 'filled')
ylim([0 6])
title('Identity Property: x * delta')

subplot(5,2,10)
stem(iden_rhs, 'filled')
ylim([0 6])
title('Identity Property: x')