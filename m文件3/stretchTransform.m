function [ g ] = stretchTransform( f,varargin )
%UNTITLED5 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
if numel(varargin)==0
    m=mean2(f);e=4.0;
else if numel(varargin)==1
        m=varargin{1};e=4.0;
    else if numel(varargin)==2
            m=varargin{1};e=varargin{2};
        else error('incorrect number of inputs for the stretch method');
        end
    end
end
g=1./(1+(m./f).^e);

end

