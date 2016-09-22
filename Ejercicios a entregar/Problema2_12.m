t = -15:0.001:15;
x = 2*t;
y = []
 for n = 1:length(t)
     if(x(n) < -10)
         y(n) = -1000;
     elseif (x(n) > 10)
         y(n) = 1000;
     else
        y(n) = 100*x(n);
     end
 end
 
 %subplot(2,1,1)
 plot(x,y,'g*'), hold on
 
 
% x1 = 0.1*x;
%  for n = 1:length(t)
%      if(x1(n) < -10)
%          y1(n) = -1000;
%      elseif (x1(n) > 10)
%          y1(n) = 1000;
%      else
%         y1(n) = 100*x1(n);
%      end
%  end
%  
%  %subplot(2,1,2)
%  plot(x1,y1,'r--.')
%  ylim([-1200 1200])
%  xlim([-50 50])
 