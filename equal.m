function x = equal(a,b)
%   ���ԱȽ����������Ƿ����
%   ����a��b��ά�����
x = 1;
for i=1:length(a)
    if a(i)~=b(i)
        x = 0;
    end
end