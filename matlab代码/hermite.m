%f(x)=sin(x)
%x=0.5:0.2:1.9;
%y=[0.4794,0.6442,0.7833,0.8912,0.9636,0.9975,0.9917,0.9463];
x=-1:0.01:1;
y=1./(1+25*x.^2);
y1=-50./(1+25.*x.^2).^2.*x;%y�ĵ���
n=length(x);
x1=-0.9:0.1:0.9;
m=length(x1);
for k=1:m
    for i=1:n-1
        if (x1(k)>=x(i)&x1(k)<=x(i+1))
            h(i)=x(i+1)-x(i);
            t=(x1(k)-x(i))/h(i);
            u1=(1+2*t)*(t-1)^2;
            u2=t*(t-1)^2;
            u3=t^2*(3-2*t);
            u4=t^2*(t-1);
            hm(k)=y(i)*u1+h(i)*y1(i)*u2+y(i+1)*u3+h(i)*y1(i+1)*u4;
       end
   end
end
plot(x,y,x1,hm,'r');
hold on;