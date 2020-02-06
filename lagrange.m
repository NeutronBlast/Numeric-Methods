x = input('x: ');
y = input('y: ');
xp = input ('xp: ');
n = length(x);

% Calculos

yp = 0;
% Sumatoria

for i=[1:n]
  h(i) = 1;

% Productoria

for j=[1:n]
  if (j!=i)
    h(i) = h(i) * (xp-x(j))/(x(i)-x(j));
   end
 end
 yp=yp+y(i)*h(i);
end

% Escribir resultado

printf('yp: %.4f\n',yp);