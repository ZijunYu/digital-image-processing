function [ g,NR,SI,TI ] = regiongrow( f,S,T )
%UNTITLED5 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
f=tofloat(f);
if numel(S)==1
    SI=(f==S);
    s1=S;
else
    SI=S;
    SI=bwmorph(SI,'shrink',inf);
    s1=f(SI);
end
TI=abs(f-s1)<=T;
[g,NR]=bwlabel(imreconstruct(SI,TI));
imshow(SI);
figure,imshow(TI);
end

