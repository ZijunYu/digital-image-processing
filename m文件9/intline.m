function [x,y] = intline(x1,x2,y1,y2 )
%UNTITLED4 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
dx=abs(x1-x2);
dy=abs(y1-y2);
flip=0;
if (dx==0 && dy==0)
    x=x1;
    y=y1;
    return;
end
if(dx>dy)
    if(x1>x2)
        t=x1;x1=x2;x2=t;
        s=y1;y1=y2;y2=s;
        flip=1;
    end
    m=(y2-y1)/(x2-x1);
    x=(x1:x2)';
    y=round(y1+m*(x-x1));
else
    if(y1>y2)
        t=x1;x1=x2;x2=t;
        s=y1;y1=y2;y2=s;
        flip=1;
    end
    m=(x2-x1)/(y2-y1);
    y=(y1:y2)';
    x=round(x1+m*(y-y1));
end
if(flip)
    x=flipud(x);
    y=flipud(y);
end
    

end

