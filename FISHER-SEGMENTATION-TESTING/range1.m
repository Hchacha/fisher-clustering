function [D,a,b]=range1(vector)
    %D ���ؼ������õļ������ 
    [a,b]=size(vector); 
    %������С,a Ϊָ����,b Ϊ��Ʒ�� 
    k=3;%��ֻ���㵥ָ������ʱ��k=a=1 
    D = zeros(b, b);
    for i=1:b     
        for j=i:b         
            D(i, j) = sum(max(vector(:,i:j), [], 2) - min(vector(:,i:j), [], 2));     
        end
    end
end