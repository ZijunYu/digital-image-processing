function flag = predicate(region )
%UNTITLED8 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
std=std2(region);
mean=mean2(region);
flag=(std>10) & (mean>0) & (mean<125);


end

