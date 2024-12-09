clear all
N=input('Please enter a number: ');

%Step 1 find the factors of the number N and find the prime numbers
Unique_factors_of_N=unique(factor(N));

%Step 2 find the unique prime nubers 
Unique_factors_of_N(isprime(Unique_factors_of_N))