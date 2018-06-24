function [ g ] = intrans( f,method,varargin )
%UNTITLED3 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
narginchk(2,4);
if strcmp(method,'log')
    g=logTransform(f,varargin{:});

else if isfloat(f) && (max(f(:))>1 ||min(f(:))<0)
    f=mat2gray(f);
    end
    [f,revertclass]=tofloat(f);

    switch(method)
    case 'neg'
        g=incomplement(f);
    case 'gamma'
        g=gammaTransform(f,varargin{:});
    case 'stretch'
        g=stretchTransform(f,varargin{:});
    case 'spcfied'
        g=spcfiedTransform(f,varargin{:});
    otherwise
        error('unknown enhancement method')
    end
    g=revertclass(g);
end


end

