function is_end_point =endpoint_fcm( nhood)
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
int1=[-1 1 -1;-1 1 -1;-1 -1 -1];
int2=[1 -1 -1;-1 1 -1;-1 -1 -1];
for k=1:4
    c=bwhitmiss(nhood,rot90(int1,k));
    d=bwhitmiss(nhood,rot90(int2,k));
    if (c(2,2)==1 || d(2,2)==1)
        is_end_point=true;
        return;
    end
end
is_end_point=false;

end

