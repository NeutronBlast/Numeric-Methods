clear
x = input('x: ');
y = input ('y: ');
m = input ('m: ');
xp = input ('xp: ');
n = length(x);
% Creacion de A
for i = [1:m+1]
  for j = [1:m+1]
    if and (i==1, j==1)
      A(i,j) = n;
     else 
      A(i,j) = sum(x.^(i+j-2));
    end 
  end 
  B(i,1) = sum(y.*x.^(i-1));
end

a = inv(A)*B;
f = 0;
yp = 0;

for i = [1:m+1]
  yp = yp + a(i,1) * xp^(i-1);
  f = f + a(i,1)*x.^(i-1);
end

vy = sum ((y-mean(y)).^2);
vf = sum ((f-mean(y)).^2);
r2 = vf/vy;

printf('coeficiente yp: %3.f \nr2: %.4f\n', yp, r2);
plot(x,y,'ms',x,f);


%Coeficiente
