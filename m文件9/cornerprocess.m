function cp = cornerprocess( c,T,q)
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
cp=c>T;
B=ones(q);
cp=imdilate(cp,B);
cp=bwmorph(cp,'shrink','Inf');

end

