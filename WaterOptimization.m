% ----------------------------------------------------- Water Optimization Algorithm -----------------------------------------
% ---------------------------------- mahmoud.almorady@gmail.com --------------------------------------------------------------
% ---------------------------------- daliriarman111@gmail.com ----------------------------------------------------------------
% ----------------------------------------------------------------------------------------------------------------------------



close all;
clear;
clc;
format shortG;
%% =========================== Water OPTIMIZATION ALGORITHM =================
%      ******************************* parameters *******************
maxiter = 1000;
nvar =5;
lb = 0*ones(1,nvar);
ub = 1*ones(1,nvar);
hpop = 10;
diss = ub-lb;
boundnum = 10;
bestboundp = 0.2;
boundl = diss(1)/boundnum;

%-----------------------
n = hpop;

%% ===============================================================================
data.nvar = nvar;
data.lb = lb;
data.ub = ub;
data.hpop = hpop;
data.maxiter = maxiter;
data.dis = diss;
data.n = n;
data.boundnum = boundnum;
data.bestbp = bestboundp;
data.boundl = boundl;
 %   -----------------------------------------------------------------------------
 
 %==================== initialization
 emp.h = [];
 emp.fit = [];
 emp.s = [];
 emp.t = [];
 pop = repmat(emp,hpop,1);
 
 % ----------------------------------
 

  for i=1:hpop
    pop(i).h = unifrnd(lb,ub,1,nvar);
    pop(i) = fitness(pop(i),data); 
  end
[value,index] = sort([pop.fit]);
pop = pop(index);

fitMean = sum([pop.fit])/numel(pop);
 for i=1:hpop
    pop(i).t = boundl;
    pop(i).s =1; 
 end
 
%  ------------------------ main loop

BEST=zeros(maxiter,1);
MEAN=zeros(maxiter,1);
tic
for iter=1:maxiter
%     nu = mod(iter,10);
%     if nu==0
%     lb = data.lb;
%     ub = data.ub;
%     else
%      lb = data.ub-(10-nu)*tens;
%      ub = data.ub-(10-nu-1)*tens;   
%     end
%    
    
    WateringPop=repmat(emp,n,1);
    WateringPop=Wateration(WateringPop,pop,data,iter,maxiter,diss);
    
    
    [pop] = [pop;WateringPop];
    [~,index] = sort([pop.fit]);
    pop = pop(index);
    gpop = pop(1);
    BestMule = round(.5*hpop);
    randomi= hpop-BestMule;
    randomW = randperm(numel(pop)-BestMule,randomi)+BestMule;
    
    pop = [pop(1:BestMule);pop(randomW)];
   
    % Select for seedling growth
    [value,index]=sort([pop.t]);
    pop=pop(index);
%     [pop.s] = deal([1]);
    
    
    

    BEST(iter)=gpop.fit;
    MEAN(iter)=mean([pop.fit]);
    disp([' Iter = ' num2str(iter)  ' BEST = ' num2str(BEST(iter))])
    
 
 
 
 
 
 
 
 
end

%% results

disp([ ' Best x = '  num2str(gpop.h)])
disp([ ' Best Fitness = '  num2str(gpop.fit)])
disp([ ' Time = '  num2str(toc)])
% 
% figure(1)
% semilogy(BEST,'r')
% hold on
% semilogy(MEAN,'b') 
% xlabel('Iteration')
% ylabel('Fitness')
% legend('BEST','MEAN')
% title('WaterOptimization')
