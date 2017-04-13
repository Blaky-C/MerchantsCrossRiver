%   商人过河脚本文件
%
%已向量形式记录当前位置和下一步的行船方案
%1表示上1个随从
%2表示上2个随从
%3表示上1个商人,1个随从
%4表示上1个商人
%5表示上2个商人

clc
clear all

%开始此岸有3个商人,3个随从,默认方案上1个商人
%用矩阵表示的栈结构S记录每一次的行船记录
%step表示当前的步数
curPos = [3,3,1];
S = [curPos];
step = 0;
s = Stack;%便于调用相关的栈函数句柄

curPos = nextPos(S,curPos,1);
step = step+1;

while ~(s.stackEmpty(S))
    if pass(S,curPos)
        S = s.push(S,curPos);
        if (curPos(1:2) == [0,0])
            disp('Cross the river successfully!');
            break;
        end
        curPos = nextPos(S,curPos,1);
        step = step+1;
    else
        if ~s.stackEmpty(S)
            [S,curPos] = s.pop(S);
            step = step-1;
            while curPos(3)==5 & ~s.stackEmpty(S)
                [S,curPos] = s.pop(S);
                step = step-1;
            end
            %disp('The merchants were destined to be killed.They cannot cross the river.');
            %break;
            if curPos(3) < 5
                step = step+1;
                curPos(3) = curPos(3)+1;
                S = s.push(S,curPos);
                curPos = nextPos(S,curPos,curPos(3));
            else
                disp('The merchants were destined to be killed.They cannot cross the river.');
                return;
            end
        end
    end
end

disp('Show how to cross the river:');
displayInfo(S,step);
