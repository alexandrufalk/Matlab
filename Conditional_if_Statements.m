A = rand(4);

B = rand(4);

if isequal(size(A),size(B))
	C = [A;B]
else 
	disp('The two matrices are not of the same size'); 
end 


marks = input('Please enter your marks'); 

if marks >= 90 
	Grade = string('A')

elseif marks >=80 && marks < 90
	Grade = string('B')

elseif marks >=70 && marks < 80
	Grade = string('C')

elseif marks >=60 && marks < 70
	Grade = string('D')

else 
	Grade = string('F')

end