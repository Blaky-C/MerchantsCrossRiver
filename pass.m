function x = pass(S,curPos)
%   判断试探位置是否可能作为下一步位置
N=size(S);
n=N(1);
x = 1;

if mod(n,2)==1  %模1则表示船将驶往彼岸
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