function x = pass(S,curPos)
%   �ж���̽λ���Ƿ������Ϊ��һ��λ��
N=size(S);
n=N(1);
x = 1;

if mod(n,2)==1  %ģ1���ʾ����ʻ���˰�
    for i=2:2:n-1
        if equal(S(i,1:2),curPos(1:2))
            x = 0;
            return;
        end
    end
else
    for i=1:2:n-1
        if equal(S(i,1:2),curPos(1:2))
            x = 0;
            return;
        end
    end
end
a = curPos(1:2);
if (~equal(a,[3,3]) & ~equal(a,[3,2]) & ~equal(a,[3,1]) & ~equal(a,[3,0]) &... 
    ~equal(a,[2,2]) & ~equal(a,[1,1]) & ...
    ~equal(a,[0,0]) & ~equal(a,[0,1]) & ~equal(a,[0,2]) & ~equal(a,[0,3]) )
   x = 0;
end