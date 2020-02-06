x = input('x: ');
y = input('y: ');
xp = input('xp: ');
n = length(x);

A = [n sum(x); sum(x) sum(x.^2)];
B = [sum(log(y)) ; sum(x.*log(y))];

a = inv(A) * (B);
a(1,1) = exp(a(1,1));
yp = a(1,1)*exp(a(2,1)*xp);
f = a(1,1) * exp(a(2,1)*x);

vy = sum ((y-mean(y)).^2);
vf = sum ((f-mean(y)).^2);
r2 = vf/vy;

printf('coeficiente yp: %3.f \nr2: %.4f\n', yp, r2);
plot(x,y,'ms',x,f);