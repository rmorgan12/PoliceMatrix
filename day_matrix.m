% DAY MATRIX 

%%%%%% ACCIDENT PORTION %%%%%%%%%%
[acc, ~, ~] = xlsread("StatsForAccAndCit.xlsx", "K2:K8");

sum = 0;
accmatrix = zeros(7,1);
 
 for i=1:7
     accmatrix(i,1) = acc(i,1);
     sum = sum + accmatrix(i,1);
 end

 % avg acc per day / sum of all averages 
accmatrix = accmatrix * 1/sum;



%%%%%%% CITATION PORTION %%%%%%%%%
[cit, ~, ~] = xlsread("StatsForAccAndCit.xlsx", "L2:L8");

total = 0;
citmatrix = zeros(7,1);
 
 for i=1:7
     citmatrix(i,1) = cit(i,1);
     total = total + citmatrix(i,1);
 end

citmatrix = citmatrix * 1/total;


%%%%%% CALL MATRIX %%%%%%%%%%%%
[call, ~, ~] = xlsread("Average Call Score By Day of Week (2).xlsx", "M17:M23");

total = 0;
callmatrix = zeros(7,1);
 
 for i=1:7
     callmatrix(i,1) = call(i,1);
 end

 callmatrix;

%%%%%% TOTAL DAILY MATRIX %%%%%%%%
%add columns from stats xlsx into a total matrix for the daily matrix

daymatrix = (0.1)*accmatrix + (0.1)*citmatrix + (0.8)*callmatrix

