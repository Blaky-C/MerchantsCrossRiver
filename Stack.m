function funs = Stack
%   ջ����ز�������
funs.push = @push;
funs.pop = @pop;
funs.stackEmpty = @stackEmpty;

function newStack = push(S,pos)
%   ��ԭջ�ж�����Ԫ��pos
%   ������ջ
newStack = [S;pos];

function [newStack,pos] = pop(S)
%   ��ԭջ��ʹջ��Ԫ�س�ջ
%   ������ջ��ջ��Ԫ��
N=size(S);
n=N(1);%��¼ջ������
newStack = S(1:n-1,:);
pos = S(n,:);

function x = stackEmpty(S)
%   �ж�ջ�Ƿ�Ϊ��
N=size(S);
n=N(1);
if n==0
    x=1;
else
    x=0;
end