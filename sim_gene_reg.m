clear all;
close all;

x0=5;
y0=5;
width=500;
height=500;
set(gcf,'units','points','position',[x0,y0,width,height])
xlim([-50 50])
ylim([0 100])

x(1) = 0;
y(1) = 0;
theta(1) = pi/2;


[theta1,x1,y1]=growing(x,y,theta,0);


[theta2,x2,y2]=growing(x1,y1,theta1,1);

[theta3,x3,y3]=growing(x2,y2,theta2,2);

[theta4,x4,y4]=growing(x3,y3,theta3,3);

[theta5,x5,y5]=growing(x4,y4,theta4,4);





