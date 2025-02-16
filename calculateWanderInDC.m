function estimation=calculateWanderInDC(signal)
         wanderInDC  = zeros(1,length(signal));
         estimation = wanderInDC;
         margin=1000;
         prepareSignal = [signal(1000:-1:2) signal signal(length(signal)-1:-1:length(signal)-1000+1)];

         % Here wnidow of filter is calculated using adaptive Moving Average ...
         % ... Seeking minimum variation in variance with refernce to ...
         % ... filterNumber which describe window of filter
         for filterNumber = 1:10:900 
             for i=margin:margin+length(signal)-1
                 sum=0;
                 for j=i-filterNumber:i+filterNumber
                     sum=sum+prepareSignal(j);
                 end
                 wanderInDC(i-margin+1)=sum/(2*filterNumber+1);
             end
             
             var  = 0;
             for i=1:length(signal)
                 var=var+(signal(i)-wanderInDC(i))^2;
             end
             
             if filterNumber==11
                 min=var-prev;   
             end
             
             if filterNumber>11
                if var-prev<min
                   min=var-prev;
                   estimation=wanderInDC;
                end
             end
             prev=var;
         end
end