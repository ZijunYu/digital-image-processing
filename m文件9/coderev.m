function cr = coderev( fcc )
%UNTITLED7 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
cr=fliplr(fcc);
idx1=find(cr<4);
idx2=find(cr>=4);
cr(idx1)=cr(idx1)+4;
cr(idx2)=cr(idx2)-4;

end

