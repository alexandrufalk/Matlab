function matrix=Enlarge_matrix(A,B)
    size_A=size(A)
    matrix=zeros(B(1,1)*size_A(1,1),B(1,2)*size_A(1,2))
    a=0;
    b=0;
    
    for i=1:size_A(1,1)
        fprintf('i is: %d \n',i)
        for j=1:size_A(1,2)
            fprintf('j is: %d \n',j)
            for k=0:((B(1,1)-1))  %relation to i (1 2 3)
                for l=0:(B(1,2)-1) % relation to j (1 2 )
                    %matrix((i+k):((i+k)+B(1,1)),(j+l):((j+l)+B(1,2)))=A(i,j)
                    fprintf('a is: %d \n',a)
                    fprintf('b is: %d \n',b)
                    matrix((i+k+a),j+l+b)=A(i,j)
                    
  
                    
                end
                
                
                
            end
            b=b+B(1,2)-1;
           
        end
        b=0;
        a=a+B(1,1)-1;
    end  
    a=0;
     
end

%a11 a12 a13     0 1 ->1 ; 1 2-> 2; 2 3 ->3
%a21 a22 a23
%a31 a32 a33

%aij                       l            k
%a11 a12 a13 a14 a15 a16 ->0 1 1 2 2 3 | 0   a11->j:B(1,2)  a12->(j+1):((j+1)+B(1,2))  
%a21 a22 a23 a24 a25 a26               V 1   a13->j+2:((j+2)+B(1,2))
%a31 a32 a33 a34 a35 a36                 2   a11->i:B(1,1)  
%a41 a42 a43 a44 a45 a46                 2   a21->i
%a51 a52 a53 a54 a55 a56                 3   a31->
%a61 a62 a63 a64 a65 a66                 4   
%a71 a72 a73 a74 a75 a76                 4
%a81 a82 a83 a84 a85 a86                 5
%a91 a92 a93 a94 a95 a96                 6
