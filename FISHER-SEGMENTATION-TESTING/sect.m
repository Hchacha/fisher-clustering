 
function [array] = sect(vector,n)  
%vector Ϊ��Ʒ���󣬵�ֱ�Ӷ���Ʒ������зָ�ʱ���øú���
%array ������Ʒ���� n �ָ�ķָ��� 
%n ΪҪ�ָ�Ķ���
[a,b]=size(vector); 

[d,a,b]=range1(vector);
for num=n:-1:2   
    [S,alp]=divi(vector,num,d);
    if num == n       
        array(num-1)=alp(1, b);  
    else
        array(num-1)=alp(array(num));  
    end
end
 