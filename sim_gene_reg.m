clear all;
close all;

x0=5;
y0=5;
width=1050;
height=1000;
set(gcf,'units','points','position',[x0,y0,width,height])
xlim([-50 50])
ylim([0 100])

growing(0,0,pi/2)
