clear all
function string_multiplication(str,n)
    text_m=[]
    for i=1:n
        string(i)=str;
    end
    big_string=strcat(text_m);
    display(big_string)

end

function disp_book(Tit,Aut,Nu_of_pg)
fprintf('Title: %s\n',Tit)
fprintf('Author: %s\n',Aut)
fprintf('Number of pages: %d\n',Nu_of_pg)
end