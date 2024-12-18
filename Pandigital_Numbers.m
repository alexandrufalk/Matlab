clear all 

%Step 3: For each number from 9,999 to 1,000 
for i=9999:-1:1000
 
    %Step 4: Check if the current number is a prime
    if isprime(i)

        %Step 5: Check if the current number is a pandigital
        string_form_number = num2str(i); 
        Unit_digit = (str2num(string_form_number(4)) == 0:9);
        Tenth_digit = (str2num(string_form_number(3)) == 0:9);
        Hundredth_digit = (str2num(string_form_number(2)) == 0:9);
        Thousandth_digit = (str2num(string_form_number(1)) == 0:9);
    
        if sum(or(or(or(Unit_digit,Tenth_digit),Hundredth_digit), Thousandth_digit)) == 4
            pandigital = i; 
            break;
        end
    end 
    
end

%Step 8: Print the maximum of pandigital_numbers
fprintf('The maximum pandigital number with four digits which is also a prime number %d \n',pandigital)

%%%%%% Further reducing the iterations with primes buitin function %%%%%%%%
clear all 

Prime_numbers = primes(9999); 

%Step 3: For each prime four digit prime number from highest to lowest 
for i=length(Prime_numbers):-1:1
 
        %Step 5: Check if the current number is a pandigital
        string_form_number = num2str(Prime_numbers(i)); 
        Unit_digit = (str2num(string_form_number(4)) == 0:9);
        Tenth_digit = (str2num(string_form_number(3)) == 0:9);
        Hundredth_digit = (str2num(string_form_number(2)) == 0:9);
        Thousandth_digit = (str2num(string_form_number(1)) == 0:9);
    
        if sum(or(or(or(Unit_digit,Tenth_digit),Hundredth_digit), Thousandth_digit)) == 4
            pandigital = Prime_numbers(i); 
            break;
        end
    
    
end

%Step 8: Print the maximum of pandigital_numbers
fprintf('The maximum pandigital number with four digits which is also a prime number %d \n',pandigital)
