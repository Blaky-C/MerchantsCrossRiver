function funs = Stack
%   栈的相关操作函数
funs.push = @push;
funs.pop = @pop;
funs.stackEmpty = @stackEmpty;

function newStack = push(S,pos)
%   在原栈中堆入新元素pos
%   返回新栈
newStack = [S;pos];

function [newStack,pos] = pop(S)
%   在原栈中使栈顶元素出栈
%   返回新栈和栈顶元素
N=size(S);
n=N(1);%记录栈的行数
newStack = S(1:n-1,:);
pos = S(n,:);

function x = stackEmpty(S)
%   判断栈是否为空
N=size(S);
n=N(1);
if n==0
    x=1;
else
    x=0;
end