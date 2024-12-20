C = {} 

C = cell(4,6)

C = cell(4,6,2)

C = {1,2,3: 'text', rand(5,2,3), 'mycell'}

cellplot(C) 

celldisp(C)  


C = {1,2,3;'text', rand(5,2,3),'mycell'}

C{1,1} 

C{2,2} 
C{2,2}(1,1,1) 
C{2,2}(1,2,1) 

C{2,2}(2,1,1)

C{2,1} 

C{2,2}(1)
C{2,2}(2)

C{2,2}(3)

C(1,1)

C(2,2) 

%Accessing Data in a cell

C = {1,2,3;'text', {1,2,3},'mycell'}
 
cellplot(C) 

C{2,2} 

C{2,2}{1} 

C{2,2}{1,1} 

C{2,2}{1,2} 

C{2,2}{1,3} 

C{2,2}{3} 

%Adding and deleting elements
C = {1,2,3;4,5,6} 

C{3,3} = 9

C{3,4} = 9 
 
C{2,2} = [] 
 
C{1,1} = [2 5; 6 5]

C{1,1} = [] 

C(1:2,:) = [] 

C(:,2:3) = []

%Concateneting Cells

C1 = {1,2,3} 

C2 = {'A','B','C'} 

C3 = {10,20,30} 

C = [C1 C2 C3] 

C = {C1 C2 C3}
C = {C1;C2;C3}

C = {'plot data', rand(20,2)}

cellplot(C) 

plot(C{1,2}) 

plot(C{1,2}(:,1))  



