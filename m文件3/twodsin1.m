function [ f ] = twodsin1( A,u0,v0,M,N )
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
c=0:N-1;
r=0:M-1;
[C R]=meshgrid(c,r);
f=A*sin(u0*R+v0*C);

end

