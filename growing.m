function [theta1,x_current,y_current] = growing(x,y,theta,level)

length = 0;


x_current = [];
y_current = [];
x_previous = [];
y_previous = [];
length_current = [];
theta1 = [];

for i = 1 : size(theta,2)
    alpha = theta(i) - pi/(4*(2^level));
    beta =  theta(i) + pi/(4*(2^level));
    theta1 = horzcat(theta1, [alpha beta]);
end

for itr = 1:size(x,2)
    x_current = horzcat(x_current,[x(itr) x(itr)]);
    y_current = horzcat(y_current,[y(itr) y(itr)]);
end

i=0;
while length<10
    if(level==0)
        x_current = [0];
        y_current = [0];
        y_current(1)=y(1)+i;
        x_current(1)=x(1);
        line([x(1) x_current(1)],[y(1) y_current(1)],'Linewidth',6)
        pause(0.1);
        i=i+1;
        length=length+1;
    else
        break;
    end
end
    
i = 0;
proceed = 1;
    
if level>0
    while(proceed)
            count = 0;
            for j = 1 : size(theta,2)
                k = 1;
                angle = theta(j);
                gradient = abs(tan(angle));
                if (angle > pi/2)
                    k = -1;
                end
                x_previous(j)= x_current(j);
                y_previous(j)= y_current(j);

                length_current(j) = abs(i/cos(angle));

                if(length_current(j)<8)
                    x_current(j) = x(floor((j+1)/2))+ k*i;
                    y_current(j) = y(floor((j+1)/2))+ i*gradient;
                else
                    count = count + 1;
                end

            end

            i=i+1;
            if count==size(theta,2)
                proceed = 0;
            end

            for m = 1 : size(x_current,2)
                line([x_previous(m) x_current(m)],[y_previous(m) y_current(m)],'Linewidth',6)
                pause(0.1);
            end
    end
end

        
   




