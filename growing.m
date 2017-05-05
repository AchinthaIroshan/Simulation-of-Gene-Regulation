function [theta1,theta2,xo,yo] = growing(x,y,gradient)

length = 0;
i=0;

while length<10
    if(gradient==pi/2)
        yo=y+i;
        xo=x;
        line([x xo],[y yo],'Linewidth',6)
        pause(0.5);
        i=i+1;
        length=length+1;
    else
        xo=x+i;
        yo=y+i*tan(gradient);
        line([x xo],[y yo],'Linewidth',6)
        pause(0.5);
        i=i+1;
        length=i/cos(gradient);
    end
   

end


theta1 = gradient+pi/4;
theta2 = gradient-pi/4;


