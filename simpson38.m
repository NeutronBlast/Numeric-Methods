i=0;
F = inline(input('F: '));
n = input('n: ');
X(i+1) = input('xo: ');
X(n+1) = input('xn: ');
h = abs(X(n+1) - X(i+1))/n;
S=0;
S1 = 0;
S2 = 0;

for i = [1:n-1]
  X(i+1) = X(1) + h*i;
    if mod (i,3) == 0
      S2 = S2 + F(X(i+1));
    else
      S1 = S1 + F(X(i+1));
    end
end
A = 3*h/8*(F(X(1))+3*S1+2*S2+F(X(n+1)));
printf('A: %.4f\n',A);
      