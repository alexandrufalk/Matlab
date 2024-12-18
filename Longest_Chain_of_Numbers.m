clear all;

% Initialize variables
max_num = 100;
chain_length = zeros(1, max_num);

% Iterate through numbers 1 to max_num
for i = 1:max_num
    n = i; % Current number in the sequence
    j = 1; % Step counter
    
    % Compute the Collatz sequence for the current number
    while n ~= 1  
        % Update n based on whether it is even or odd
        if mod(n, 2) == 0
            n = n / 2;
        else
            n = 3 * n + 1;
        end
        j = j + 1; % Increment the step counter
    end
    
    % Store the length of the chain for the current number
    chain_length(i) = j;
end

% Find the number with the maximum chain length
[max_length, max_index] = max(chain_length);

% Display the result
fprintf('The number under %d with the maximum chain length is %d with length %d.\n', max_num, max_index, max_length);
