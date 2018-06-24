function s = colorseg( method,f,T,varargin )
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
if nargin==5
    cx=varargin{2};
end
mx=varargin{1};
s=zeros(size(f,1),size(f,2));
f=double(f);
switch method
    case 'euclidean'
        for i=1:size(f,1)
            for j=1:size(f,2)
                z=[f(i,j,1),f(i,j,2),f(i,j,3)]';
                if norm(z-mx,2)<=T
                    s(i,j)=1;
                end
            end
        end
    case 'mahalanobis'
        for i=1:size(f,1)
            for j=1:size(f,2)
                z=[f(i,j,1),f(i,j,2),f(i,j,3)];
                d=mahalanobis(z,cx,mx);
                if d<=T
                    s(i,j)=1;
                end
            end
        end
end

        


end

