function pos = nextPos(S,curPos,i)
%   返回下一步行船之后的情况
%   参数说明：
%   i:下一步前进的方向
N = size(S);
n = N(1);

if mod(n,2)==1
    switch i
        case 1
            curPos(2) = curPos(2)-1;
        case 2
            curPos(2) = curPos(2)-2;
        case 3
            curPos(1) = curPos(1)-1;
            curPos(2) = curPos(2)-1;
        case 4
            curPos(1) = curPos(1)-1;
        case 5
            curPos(1) = curPos(1)-2;
    end
else
    switch i
        case 1
            curPos(2) = curPos(2)+1;
        case 2
            curPos(2) = curPos(2)+2;
        case 3
            curPos(1) = curPos(1)+1;
            curPos(2) = curPos(2)+1;
        case 4
            curPos(1) = curPos(1)+1;
        case 5
            curPos(1) = curPos(1)+2;
    end
end
curPos(3) = 1;
pos = curPos;

