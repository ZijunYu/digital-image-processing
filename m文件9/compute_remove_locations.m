function remove = compute_remove_locations( rc )
%UNTITLED3 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
rc_1=[rc(2:end,:);rc(1,:)];
diff=rc_1-rc;
diff_1=[diff(2:end,:);diff(1,:)];
dotprod=sum(diff.*diff_1,2);
remove= ~all(diff,2) & (dotprod==0);
remove=[remove(end,:);remove(1:end-1,:)];
    
end

