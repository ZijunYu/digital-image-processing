function g= localthresh( f,nhood,a,b,meantype )
%UNTITLED3 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
f=tofloat(f);
sigma=stdfilt(f,nhood);
if nargin==5 && strcmp(meantype,'global')==1
    m=mean2(f);
else m=localmean(f,nhood);
end
g=(f>a*sigma) & (f>b*m);

end

