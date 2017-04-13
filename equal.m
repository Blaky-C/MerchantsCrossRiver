function x = equal(a,b)
%   用以比较两个向量是否相等
%   假设a和b的维数相等
x = 1;
for i=1:length(a)
    if a(i)~=b(i)
        x = 0;
    end
end