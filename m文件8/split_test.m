function v = split_test( B,mindim,fun)
%UNTITLED9 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
k=size(B,3);
v(1:k)=false;
for x=1:k
    if size(B(:,:,x),1)<=mindim
        v(x)=false;
        continue;
    end
    if fun(B(:,:,x))==1
            v(x)=true;
    end
end

end

