function [theta1,theta2,xo,yo] = growing(x,y,gradient)

length = 0;
i=0;

while length<10
    if(gradient==pi/2)
        line([x x],[y y+i],'Linewidth',6)
        pause(0.5);
        yo=y+i;
        xo=x;
    end
   
    i=i+1;
    length=length+1;
end


theta1 = gradient+pi/4;
theta2 = gradient+pi/4;


