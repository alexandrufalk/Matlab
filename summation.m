function a = summation(N)
    % Check if N is a valid input
    if N <= 0
        a = 0; 
        disp('The summation is not possible in this case'); 
        return; 
    end 

    % Initialize summation variable
    summ = 0;

    % Perform summation from 1 to N
    for i = 1:N
        summ = summ + i;
    end 

    % Assign result to output
    a = summ;  
end
