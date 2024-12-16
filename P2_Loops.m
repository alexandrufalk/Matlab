clear all
%Q1

% Ascending pattern
for i=1:2:10
    for j=1:i
        fprintf('*')  
    end
    fprintf('\n')
end

% Descending pattern

for i=9:-2:1
    for j=1:i
        fprintf('*')  
    end
    fprintf('\n')
end

% Ascending pattern
for i = 1:2:10
    fprintf('%s\n', repmat('*', 1, i));
end

% Descending pattern
for i = 9:-2:1
    fprintf('%s\n', repmat('*', 1, i));
end


n = 5; % Number of rows in the top half

for i = 1:(2*n-1)
    if i <= n
        stars = 2*i - 1; % Ascending part
    else
        stars = 2*(2*n - i) - 1; % Descending part
    end
    
    % Print stars for the current row
    for j = 1:stars
        fprintf('*');
    end
    fprintf('\n'); % Move to the next row
end



%Q2
%a11 a21 a31 a41 a51 3 3 3 3 3   2 3 4 5 6
%a12 a22 a32 a42 a52 3 2 2 2 3   3 4 5 6 7
%a13 a23 a33 a43 a53 3 2 1 2 3   4 5 6 7 8
%a14 a24 a34 a44 a54 3 2 2 2 3   5 6 7 8 9
%a15 a25 a35 a45 a55 3 3 3 3 3   6 7 8 9 10

%Code for number=5
m=input('Enter an odd number: \n')

center=(m+1)/2

for i=1:m
    for j=1:m
        if i==center && j==center
            matrix(i,j)=1;
        elseif i==1 || i==m
            matrix(i,j)=center;
        elseif j==1 || j==m
            matrix(i,j)=center;
        else
            matrix(i,j)=center-1;
        end    
        
    end
end


%Generalise for n

l = input('Enter an odd number2: \n');
if mod(l, 2) == 0
    error("Input has to be an odd number");
end

A = zeros(l); % Initialize the matrix
center2 = (l+1)/2; % Center index

% Loop through layers, starting from the center
for i = 1:center2
    A(i:end-i+1,i) = (center2-i) +1;
    A(i,i:(end-i+1)) = (center2-i) +1;
    A(i:(end-i+1),end-i+1) = (center2-i) +1;
    A(end-i+1, i:end-i+1) = (center2-i) +1;
end

disp(A);

