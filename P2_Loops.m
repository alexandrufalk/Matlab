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

