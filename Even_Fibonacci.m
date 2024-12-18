clear all

m=[1 2];
sum=2;

for i=1:8
    m(i+2)=m(i)+m(i+1);
    if rem(m(i+2),2)==0
        sum=sum+m(i+2)
    end
end
