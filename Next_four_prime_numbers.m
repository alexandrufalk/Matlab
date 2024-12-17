% Input the starting number
n = input('Enter the starting number: ');

% Initialize variables
found_primes = 0; % Counter for found primes
primes_list = []; % List to store primes
current_num = n + 1; % Start checking numbers after the given number

% Loop until 4 primes are found
while found_primes < 4
    if isprime(current_num)
        primes_list(end + 1) = current_num; % Add to the list of primes
        found_primes = found_primes + 1; % Increment the counter
    end
    current_num = current_num + 1; % Check the next number
end

% Display the result
disp('The first 4 prime numbers after the given number are:');
disp(primes_list);
