

[pc, zscores, pcvars] = princomp(data_0);
pca = pc(:,1:100);
data = data_0*pca;
obj = gmdistribution.fit(data,50,'Regularize',0.0000000001);%
idx = cluster(obj,data);

% MU1 = [1 2];
% SIGMA1 = [2 0; 0 .5];
% MU2 = [-3 -5];
% SIGMA2 = [1 0; 0 1];
% X = [mvnrnd(MU1,SIGMA1,1000);mvnrnd(MU2,SIGMA2,1000)];
% 
% scatter(X(:,1),X(:,2),10,'.')
% hold on
% 
% options = statset('Display','final');
% obj = gmdistribution.fit(X,3,'Options',options);
% h = ezcontour(@(x,y)pdf(obj,[x y]),[-8 6],[-8 6]);

%[label, model, llh] = emgm(data,10); 
%s = logsumexp(data, 324);
