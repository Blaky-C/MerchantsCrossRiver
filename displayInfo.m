function displayInfo(S,step)
%   ͨ��ջչʾ���ӵĲ���
for i=1:step
    s1 = S(i,:);
    s2 = S(i+1,:);
    fprintf('��%d���д�:\n',i);
    fprintf('    %d�������ϴ�,%d�������ϴ���\n',abs(s1(1)-s2(1)),abs(s1(2)-s2(2)));
    fprintf('    ��ʱ�˰���%d������,%d�����ˡ�\n',s2(1),s2(2));
end

