function [ g ] = spcfiedTransform(f,txfun )
%UNTITLED6 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
txfun=txfun(:);
if any(txfun)>1 || any(txfun)<0
    error('all elements of txfun must be in the range [0 1]');
end
T=txfun;
z=linspace(0,1,numel(T));
g=interp1(z,T,f);

end

