function I = percentile2i( h,P)
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
h=h(:);
h=h/sum(h);
s=cumsum(h);
ind=find(s>P,1,'first');
I=(ind-1)/(size(h,1)-1);
end

