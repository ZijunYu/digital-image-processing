function d = codediff( fcc,conn )
%UNTITLED8 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
f_shift=circshift(fcc,[0,-1]);
delta=f_shift-fcc;
idx=find(delta<0);
if conn==4
    delta(idx)=delta(idx)+4;
else 
    delta(idx)=delta(idx)+8;
end
d=[delta(end),delta(1:end-1)];
end

