function g = endpoint( f )
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
persistent lut;
if(isempty(lut))
    lut=makelut(@endpoint_fcm,3);
end
g=applylut(f,lut);

end