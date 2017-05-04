clear all;
close all;

x0=5;
y0=5;
width=1050;
height=1000;
set(gcf,'units','points','position',[x0,y0,width,height])
xlim([-50 50])
ylim([0 100])

set(gca,'xtick',[],'ytick',[]);
for i = 1:10
    line([0 0],[0 i],'Linewidth',6)
    pause(0.5);

end

hold on;
    
for i= 1:10
   line([0 0],[0 10],'Linewidth',6+i)
   line([0 i],[10 i+10],'Linewidth',6)
   line([0 -i],[10 i+10],'Linewidth',6)
   pause(0.5);
   
end

hold on;

for i= 1:10
   
   line([10 i*tan(pi/8)+10],[20 i*tan(3*pi/8)+20],'Linewidth',6)
   
   line([10 i*tan(3*pi/8)+10],[20 i*tan(pi/8)+20],'Linewidth',6)
%    line([10 -i],[20 i*tan(pi/8)+20],'Linewidth',6)
   pause(0.5);
end