function [L,P]=dloop(vector) %n ΪҪ�ָ�Ķ���
    [D,a,b]=range1(vector); 
    L = zeros(b, b); % ���Ŵ��ۣ���ΪԪ����������Ϊ�и����
    P = ones(b, b); % �����и�λ�ã���ΪԪ����������Ϊ�и����
    s = inf(b, b); % ���ۣ���ΪԪ����������Ϊ�и��λ��
    for n=2:b % �����ң��������Ԫ����Ŀ
        for k=1:n-1 % �и����
            for j=k+1:n % �����ң��и��λ��
                if k==1
                    s(n,j-1) = D(1,j-1) + D(j, n);
                else
                    s(n,j-1) = L(P(j,k-1)) + D(j, n);
                end            
            end

            % ����P, L
            [L(n, k), P(n, k)] = min(s(n, :));
        end
    end
end