function mean = localmean( f,nhood )
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
if nargin==1
    nhood=ones(3,3)/9;
else nhood=nhood/sum(nhood(:));
end
mean=imfilter(f,nhood,'replicate');

end

