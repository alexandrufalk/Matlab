
N=input('Enter a number');
Numbers=1:N-1;

%Step 1: List all the multiples of 3 below N.
mltiples_of_3=rem(Numbers,3)==0;

%Step 2: List all the multiples of 5 below N.
mltiples_of_5=rem(Numbers,5)==0;

%Step 3a: Make a list of multiples of 3 and 5 containing a single copy of
%common multiples

all_multiples=or(mltiples_of_3,mltiples_of_5);
values_of_multiples=Numbers(all_multiples);

%Step 4: Sum all the multiples
sum(values_of_multiples)
