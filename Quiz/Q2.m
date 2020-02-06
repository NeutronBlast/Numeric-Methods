x=input('x: ');
y=input('y: ');
m=input('m: ');
xp=input('xp: ');
n=length(x);
for i=[1:m+1]
  for j=[1:m+1]
    if and(i==1,j==1)
      A(i,j)=n;
    else
      A(i,j)=sum(x.^(i+j-2));
    end
  end
 B(i,1)=sum(y.*x.^(i-1));
end
a=inv(A)*B;
temporal=0;
yp=0;
for i=[1:m+1]
  yp=yp+a(i,1)*xp^(i-1);
  temporal=temporal+a(i,1)*x.^(i-1);
end
vf=mean((temporal-mean(y)).^2);
vy=mean((temporal-mean(y)).^2);
r2=vf/vy; 
printf('yp: %.3f\nr2: %.4f\n',yp,r2);

%Result:  yp: 160.563
