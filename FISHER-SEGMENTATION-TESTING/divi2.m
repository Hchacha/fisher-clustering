function [S,alp]=divi2(vector,k)
%���Ŷ��ָ�,S Ϊ���Ŷ��ָ���εķָ�㣬
%a1 ��¼�˶��ָ����� 
[d,a,b]=range1(vector);
alp=ones(k-1,b);%al(i,j)��ʾǰ i ����Ʒ�ĵ� j �ηָ��
S=zeros(b,b);
s = inf(b, b);

for m=2:b
    for j=1:m-1  
        s(m,j)=d(1,j)+d(j+1,m); 
    end
    [S_temp(m,1), alp(k-1,m)]=min(s(m,1:m-1)); 

    for t=1:m    
        S(t,alp(k-1,t))=S_temp(t,1); 
    end
end