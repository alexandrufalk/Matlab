function a = summation(N) 

if N <= 0
	a = 0; 
	disp('The summation is not possible in this case\n'); 
	return; 
end 

for i=1:10 
	summ = summ + i;
end 

a = summ;  
end 
