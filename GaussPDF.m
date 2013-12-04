function prob = GaussPDF(Data, Mu, Sigma)
%
% 根据高斯分布函数计算每组数据的概率密度 Probability Density Function (PDF)
% 输入 -----------------------------------------------------------------
%   o Data:  D x N ，N个D维数据
%   o Mu:    D x 1 ，M个Gauss模型的中心初始值
%   o Sigma: M x M ，每个Gauss模型的方差（假设每个方差矩阵都是对角阵，
%                                   即一个数和单位矩阵的乘积）
% Outputs ----------------------------------------------------------------
%   o prob:  1 x N array representing the probabilities for the
%            N datapoints.    
[dim,N] = size(Data);
Data = Data' - repmat(Mu',N,1);
prob = sum((Data*inv(Sigma)).*Data, 2);
prob = exp(-0.5*prob) / sqrt((2*pi)^dim * (abs(det(Sigma))+realmin));