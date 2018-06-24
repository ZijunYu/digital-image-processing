function [ PQ ] = paddedsize( AB,CD,param)
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
if nargin==1
    PQ=2*AB;
else if nargin==2 && ~ischar(CD)
        PQ=AB+CD-1;
        PQ=2*ceil(PQ./2);
    else if nargin==2 && strcmp(CD,'pwr2')
            m=max(AB);
            p=2^nextpow2(2*m);
            PQ=[p p];
        else if nargin==3 && strcmp(param,'pwr2')
                PQ=AB+CD-1;
                m=max(PQ);
                p=2^nextpow2(m);
                PQ=[p p];
            else error('input wrong');
            end
        end
    end
end

end

