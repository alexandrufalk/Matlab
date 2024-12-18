function big_string = string_multiplication(str, n)
    % Check for valid inputs
    if ~ischar(str) && ~isstring(str)
        error('Input must be a string or character array.');
    end
    if ~isscalar(n) || n <= 0 || floor(n) ~= n
        error('n must be a positive integer.');
    end

    % Initialize empty string for concatenation
    big_string = ""; 

    % Loop to concatenate the string n times
    for i = 1:n
        big_string = big_string + str; % Use string addition
    end

    % Display the result
    disp(big_string);
end
