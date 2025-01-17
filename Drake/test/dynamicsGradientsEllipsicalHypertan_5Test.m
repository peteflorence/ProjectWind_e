function dynamicsGradientsEllipsicalHypertan_5Test()
% Tests user gradients vs TaylorVar gradients to check
% consistency (e.g., should break if you update
% the original function you autogenerated gradients for but
% forgot to re-generate the gradients.

oldpath=addpath('..');
load dynamicsGradientsEllipsicalHypertan_5.mat;

f1=cell(1,2);
[f1{:}]=geval(fun,in{:},struct('grad_method','user'));

f2=cell(1,2);
[f2{:}]=geval(fun,in{:},struct('grad_method','taylorvar'));

for i=1:2
  if (any(abs(f1{i}(:)-f2{i}(:))>1e-5))
    path(oldpath);
    error('gradients don''t match!');
  end
end

path(oldpath);
