function image = bound2im( b,M,N )
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
b=round(b);
if nargin==1
    H=max(b(:,1))-min(b(:,1))+1;
    W=max(b(:,2))-min(b(:,2))+1;
    M=min(b(:,1))-1+H;
    N=min(b(:,2))-1+W;
end
image=false(M,N);
linearIdx=sub2ind([M,N],b(:,1),b(:,2));
image(linearIdx)=1;

end

