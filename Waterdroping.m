function WaterdropPop=Waterdroping(WaterdropPop,pop,data,iter,maxiter,diss)
iteri = (maxiter/iter)/mean(diss);
n = data.n;
% npop = data.npop;

for n=1:n
    i=n;
    
    [WateringPop(n).h,WateringPop(n+1).h]=sunLightProlif(pop(1).h,pop(i).h,iteri);
    
    WateringPop(n)=fitness(WateringPop(n),data);
    WateringPop(n+1)=fitness(WateringPop(n+1),data);
    
    WateringPop(n).t= WateringPop(n).fit/((pop(1).fit+pop(i).fit))/2;
    WateringPop(n+1).t=WateringPop(n+1).fit/((pop(1).fit+pop(i).fit))/2;
    
    
end



end