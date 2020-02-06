x = input('x: ');
y = input('y: ');
xp = input('xp: ');
n = length(x);

% Calculo de G(i)
for i=[1:n-1]
  G(i) = 1;
  for j=[1:i]
    G(i) = G(i)*(xp-x(j));
   end
 end
 
%Diferencias divididas de primer orden

for i=[1:n-1]
  F(i,1) = (y(i+1)-y(i))/(x(i+1)-x(i));
end

%Diferencias divididas de segundo orden

for j=[2:n-1]
  for i=[1:n-j]
    F(i,j)=(F(i+1,j-1)-F(i,j-1))/(x(i+j)-x(i));
   end
end

%Resolver yp

yp = y(1);
  for i=[1:n-1]
    yp=yp+F(1,i)*G(i);
  end

printf('yp: %.5f\n',yp);