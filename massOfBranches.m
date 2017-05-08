%Mass increment for a unit time is minc
clear all;
close all;

mb=[0 0 0 0 0];
mc=10;
t=0;
totalM = [ 0 0 0 0 0 0];
btime = [ 0 0 0 0 0 0];
minc=1;
for i=1:size(mb,2)
    it=0;
    while(mb(i)<mc)
        
        if i-1 ~=0
        if (mb(i-1)==mc||it==0)
            btime(i)=t;
            for k = 1:i
               totalM(i)= totalM(i)+2^(k-1)*mb(k);
            end
        end
        end
        
            for j=1:i
                mb(j)=mb(j)+minc;
            end
      
        t=t+1;
        it=it+1;
    end  
end

btime(6)=t;
for i = 1:5
    totalM(6)= totalM(6)+2^(i-1)*mb(i);
end

figure;
plot(btime,totalM);
title(['Mass of Rangeomorph with time(criticala mass is ',num2str(mc),')'])
xlabel('time')
ylabel('Mass')


for i = 1:5
    line([btime(i),btime(6)],[0,mb(i)],'Color',[0.5 0.5 i/6]);
end

legend('total mass','mass of a branch gen1','mass of a branch gen2','mass of a branch gen3','mass of a branch gen4')



