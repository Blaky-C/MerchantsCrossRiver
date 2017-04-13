function displayInfo(S,step)
%   通过栈展示过河的步骤
for i=1:step
    s1 = S(i,:);
    s2 = S(i+1,:);
    fprintf('第%d次行船:\n',i);
    fprintf('    %d个商人上船,%d个仆人上船。\n',abs(s1(1)-s2(1)),abs(s1(2)-s2(2)));
    fprintf('    此时此岸有%d个商人,%d个仆人。\n',s2(1),s2(2));
end

