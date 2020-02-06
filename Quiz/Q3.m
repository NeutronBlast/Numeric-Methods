x=input('x: ');
y=input('y: ');
xp=input('xp: ');
n=length(x);
yp=0;
for i=[1:n]
  h(i)=1;
  for j=[1:n]
    if j!=i
      h(i) *= ((xp-x(j))/(x(i)-x(j)));
    end
  end
  yp += y(i)*h(i);
end
printf('yp: %.5f\n',yp)
%Result: yp = 19.19750.
