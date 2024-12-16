% ---- Example: 1 -----
for i = 1:2:10
	disp(i);
end 
 
% ---- Example: 2 -----

for i = 10:-1:1	
	disp(i);
end 

% ---- Example: 3 -----

for i = 10:-2:1   	
	disp(i);
end

% ---- Example: 4 -----
for i = 0:0.1:1    	
	disp(i);
end  

% ---- Example: 5 -----

for i = [5 8 9 10] 
	disp(i)
end 

% ---- Example: 6 -----

fprintf('Please enter 10 student Grades in the form of a pecentages \n'); 

for i=1:10
	fprintf('Please enter the grade for the student number %d\n',i);
 	grades(i) = input('');
end 
fprintf('The average grade is %d \n', mean(grades)); 

%Nested for loops

% ------ Example 1 ------ 

for i=1:5 
	i
	for j=1:5 
		j
	end 
end 

% ------ Example 2 ------ 

fprintf('Please enter 5 students Grades in the current semester \n'); 

for i=1:5
	fprintf('Please enter the value for the student number %d \n',i);
	for j=1:5
		fprintf('Please enter the grade in subject %d for student %d \n',j,i');
		grades1(i,j) = input('');
    	end
end 

fprintf('The average grade');
mean(grades1)
