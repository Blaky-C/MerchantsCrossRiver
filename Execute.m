%   ���˹��ӽű��ļ�
%
%��������ʽ��¼��ǰλ�ú���һ�����д�����
%1��ʾ��1�����
%2��ʾ��2�����
%3��ʾ��1������,1�����
%4��ʾ��1������
%5��ʾ��2������

clc
clear all

%��ʼ�˰���3������,3�����,Ĭ�Ϸ�����1������
%�þ����ʾ��ջ�ṹS��¼ÿһ�ε��д���¼
%step��ʾ��ǰ�Ĳ���
curPos = [3,3,1];
S = [curPos];
step = 0;
s = Stack;%���ڵ�����ص�ջ�������

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
