function sol =fitness(sol,data)

 h=sol.h;

sol.h=CB(sol.h,data.lb,data.ub);
  %sol.fit =sum(h.^2);
  %+rand(1) ;%1
%  sol.fit =sum(rosenbrockfcn(h)) ;%2
%   sol.fit = sum(quarticfcn(h)) ;%3
 % sol.fit =sum(h+0.5).^2 ;%4
%    sol.fit =sum(schwefel222fcn(h)) ;%5
%  sol.fit =sum(sumsquaresfcn(h)) ;%6
%    sol.fit =(brownfcn(h)) ;%7
%   sol.fit =sum(rastriginfcn(h)) ;%8
%   sol.fit =sum(griewankfcn(h)) ;%9
%  sol.fit = sum(ackleyfcn(h));%10
%  sol.fit = sum(exponentialfcn(h));%11
%  sol.fit =sum(periodicfcn(h)) ;%12
%  sol.fit =sum(schwefelfcn(h)) ;%13
   sol.fit =sum(powellsumfcn(h)) ;%14
%    sol.fit = sum(salomonfcn(h));%15
%   sol.fit =sum( shubert3fcn(h)) ;%16
%  sol.fit =sum(-x.*sin(sqrt(abs(x)))) ;%17
%  sol.fit =sum(styblinskitankfcn(h)) ;%18
%    sol.fit =sum(alpinen1fcn(x)) ;%19
%    sol.fit = sum(happycatfcn(x, 0.5));%20
%   sol.fit = sum(alpinen2fcn(x));%21
%   sol.fit = sum(xinsheyangn1fcn(h));%22
%  sol.fit = sum(xinsheyangn2fcn(h));%23
% sol.fit = sum(xinsheyangn3fcn(h,15,5));%24
%   sol.fit = sum(xinsheyangn4fcn(h));%25
%    sol.fit = sum(zakharovfcn(h));%26
% sol.fit = sum(whitley(x));%27




%%--------------------------------------------------------------------------------
% F1


%  sol.fit=sum(h.^2);

% 
% % F2
% 
% sol.fit=sum(abs(x))+prod(abs(x));

% 
% % F3
% 

% dimension=size(x,2);
% sol.fit=0;
% for i=1:dimension
%     sol.fit=sol.fit+sum(x(1:i))^2;
% end

% 
% % F4
% 

% sol.fit=max(abs(x));

% 
% % F5

% dimension=size(x,2);
% sol.fit=sum(100*(x(2:dimension)-(x(1:dimension-1).^2)).^2+(x(1:dimension-1)-1).^2);

% 
% % F6
% 

% sol.fit=sum(abs((x+.5)).^2);

% 
% % F7

% dimension=size(x,2);
% sol.fit=sum([1:dimension].*(x.^4))+rand;

% % F8
% 

% sol.fit=sum(-x.*sin(sqrt(abs(x))));

% 
% % F9
% 

%  dimension=size(x,2);
%  sol.fit=sum(x.^2-10*cos(2*pi.*x))+10*dimension;

% 
% % F10
% 

% dimension=size(x,2);
% sol.fit=-20*exp(-.2*sqrt(sum(x.^2)/dimension))-exp(sum(cos(2*pi.*x))/dimension)+20+exp(1);

% % 
% % F11
% 

%  dimension=size(x,2);
% sol.fit=sum(x.^2)/4000-prod(cos(x./sqrt([1:dimension])))+1;
% % 
% % % 
% % F12
% 
% 
% dimension=size(x,2);
% sol.fit=(pi/dimension)*(10*((sin(pi*(1+(x(1)+1)/4)))^2)+sum((((x(1:dimension-1)+1)./4).^2).*...
% (1+10.*((sin(pi.*(1+(x(2:dimension)+1)./4)))).^2))+((x(dimension)+1)/4)^2)+sum(Ufun(x,10,100,4));

% 
% % F13
% 

% dimension=size(x,2);
% sol.fit=.1*((sin(3*pi*x(1)))^2+sum((x(1:dimension-1)-1).^2.*(1+(sin(3.*pi.*x(2:dimension))).^2))+...
% ((x(dimension)-1)^2)*(1+(sin(2*pi*x(dimension)))^2))+sum(Ufun(x,5,100,4));

% 
% % F14
% 

% aS=[-32 -16 0 16 32 -32 -16 0 16 32 -32 -16 0 16 32 -32 -16 0 16 32 -32 -16 0 16 32;...
% -32 -32 -32 -32 -32 -16 -16 -16 -16 -16 0 0 0 0 0 16 16 16 16 16 32 32 32 32 32];
% 
%  for j=1:25
%      bS(j)=sum((x'-aS(:,j)).^6);
%  end
% sol.fit=(1/500+sum(1./([1:25]+bS))).^(-1);
% 
% % % 
% % F15
% 

%  aK=[.1957 .1947 .1735 .16 .0844 .0627 .0456 .0342 .0323 .0235 .0246];
%  bK=[.25 .5 1 2 4 6 8 10 12 14 16];bK=1./bK;
%  sol.fit=sum((aK-((h(1).*(bK.^2+h(2).*bK))./(bK.^2+h(3).*bK+h(4)))).^2);
% % 
% % 
% % F16
% 

% sol.fit=4*(x(1)^2)-2.1*(x(1)^4)+(x(1)^6)/3+x(1)*x(2)-4*(x(2)^2)+4*(x(2)^4);

% 
% % F17

%  sol.fit=(h(2)-(h(1)^2)*5.1/(4*(pi^2))+5/pi*h(1)-6)^2+10*(1-1/(8*pi))*cos(h(1))+10;

% 
% % F18
% 

% sol.fit=(1+(x(1)+x(2)+1)^2*(19-14*x(1)+3*(x(1)^2)-14*x(2)+6*x(1)*x(2)+3*x(2)^2))*...
%      (30+(2*x(1)-3*x(2))^2*(18-32*x(1)+12*(x(1)^2)+48*x(2)-36*x(1)*x(2)+27*(x(2)^2)));

% 
% % F19
% 

% aH=[3 10 30;.1 10 35;3 10 30;.1 10 35];cH=[1 1.2 3 3.2];
% pH=[.3689 .117 .2673;.4699 .4387 .747;.1091 .8732 .5547;.03815 .5743 .8828];
% sol.fit=0;
% % for i=1:4
%     sol.fit=sol.fit-cH(1)*exp(-(sum(aH(1).*((h-pH(1)).^2))));
% % end

% 
% % F20
% 
% 
% aH=[10 3 17 3.5 1.7 8;.05 10 17 .1 8 14;3 3.5 1.7 10 17 8;17 8 .05 10 .1 14];
% cH=[1 1.2 3 3.2];
% pH=[.1312 .1696 .5569 .0124 .8283 .5886;.2329 .4135 .8307 .3736 .1004 .9991;...
% .2348 .1415 .3522 .2883 .3047 .6650;.4047 .8828 .8732 .5743 .1091 .0381];
% sol.fit=0;
% for i=1:4
%     sol.fit=sol.fit-cH(1)*exp(-(sum(aH(1).*((h-pH(1)).^2))));
% end

% 
%  F21

% % 
% aSH=[4 4 4 4;1 1 1 1;8 8 8 8;6 6 6 6;3 7 3 7;2 9 2 9;5 5 3 3;8 1 8 1;6 2 6 2;7 3.6 7 3.6];
% cSH=[.1 .2 .2 .4 .4 .6 .3 .7 .5 .5];
% 
% sol.fit=0;
% % for i=1:5
%     sol.fit=sol.fit-((h-aSH(1))*(h-aSH(1))'+cSH(1))^(-1);
% end

% 
% % F22
% 

% aSH=[4 4 4 4;1 1 1 1;8 8 8 8;6 6 6 6;3 7 3 7;2 9 2 9;5 5 3 3;8 1 8 1;6 2 6 2;7 3.6 7 3.6];
% cSH=[.1 .2 .2 .4 .4 .6 .3 .7 .5 .5];
% 
% R=0;
% % for i=1:7
%     sol.fit=R-((h-aSH(1))*(h-aSH(1))'+cSH(1))^(-1);
% % end

% 
% % F23

% function R = F23(x)
% aSH=[4 4 4 4;1 1 1 1;8 8 8 8;6 6 6 6;3 7 3 7;2 9 2 9;5 5 3 3;8 1 8 1;6 2 6 2;7 3.6 7 3.6];
% cSH=[.1 .2 .2 .4 .4 .6 .3 .7 .5 .5];
% 
%  sol.fit=0;
% % for i=1:10
%     sol.fit=sol.fit-((h-aSH(1)).*(h-aSH(1))+cSH(1)).^(-1);
% % end
% end
% 
% 
end
 
function R=Ufun(h,a,k,m)
R=k.*((h-a).^m).*(h>a)+k.*((-h-a).^m).*(h<(-a));
end


function h=CB(h,lb,ub)

h=max(h,lb);
h=min(h,ub);

end
