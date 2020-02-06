%To get the graph use the following commands on the console
%X = [0:0.1:3]
%Y = (1.4+2*(sin(X.^2.2/4)).^2+1.1*cos(X))
%plot(X,Y)

i=0;
F=inline(input('F: '));
n=input('n: ');
X(i+1)=input('X0: ');
X(n+1)=input('Xn: ');
h=abs(X(n+1)-X(i+1))/n;
S1=0;
S2=0;

for i=[1:n-1]
  X(i+1)=X(1)+h*i;
  if mod(i,3)==0
    S2=S2+F(X(i+1));
  else
    S1=S1+F(X(i+1));
   end
end

A=3*h/8*(F(X(1))+3*S1+2*S2+F(X(n+1)));
printf('A: %.4f\n',A);

%Result = 6.6040
