Age = [38;15;49;78;54];

Height = [4;5;9;8;10];

Weigth = [85;90;78;56;42] ;

T=table(Age,Height,Weigth);

LastNames = {'Nouman','Asif','Shahid','Joe', 'Azam'};

% Rows Names
T=table(Age,Height,Weigth,'RowNames',LastNames);
T.Properties.RowNames = LastNames;

%Variable Names

T = table(Age,Height,Weigth, 'VariableNames',{'Ages_years','Height_foots','Weight_Kgs'})
T.Properties.RowNames=LastNames


%Adding description

t1=table([45;78;89],[54;78;89],[1;0;2])
t1.Properties.VariableNames={'Variable1', 'Variable2', 'Variable3'}

T.Properties.VariableUnits={'Yrs','Foots','Kgs'}

summary(T)

T.Properties.VariableDescriptions('Ages_years')={'This variable contains ages in year'}

T.Properties.VariableDescriptions = {'This variable contains ages in years', 'This represents height', 'This is the weight variable'}

T.Ages_years
T.Weight_Kgs

%Selecting and reorderin

T(2:4,:)

T(2:4,2:3)

T(1:2:5,2:3)

T(1:2:end,2:3) 

T(end:-2:1,2:3) 

T(:,[3 1 2])

%Sorting rows

sortrows(T) 

sortrows(T,'Height_foots') 

sortrows(T,'Height_foots','descend')

sortrows(T,'RowNames','descend')

%sortrows(T,{'Height_foots','Ages_years'},{'ascend','descent'})

sortrows(T,{'Height_foots','Ages_years'},{'ascend' 'descend'})

%{
>> X = readtable('D:\iris.dat')

>> whos X 

>> X = readtable('D:\iris.xlsx')

>> X = readtable('D:\iris.xlsx','ReadVariableNames',false)

>> X = readtable('D:\iris.csv','Delimiter',',')

>> writetable(X,'D:\table1.txt','Delimiter',',')

>> writetable(X,'D:\table1.txt','Delimiter',',','WriteVariableNames',false);

>> writetable(T,'D:\table2.txt','Delimiter',',','WriteRowNames',true);

%}

%Storing summary of a table in a txt file

summary(T)
X=evalc('summary(T)')

%{
fid = fopen('D:\summary.txt','w')
fprintf(fid,'%s',X)

fclose(fid) 
%}

%Adding and deliting rows

T2 = table(4,5,6)

T(end+1,:)=T2

T=T(1:end-1,:)

T("Nouman",:)=[]

%Adding and deleting columns

T.newcol=rand(4,1)

T.newcol=[]

T.newcol=rand(4,1)

T=T(:,1:end-1)

%Dealing with missing data

%{
X = readtable('D:\iris_missing_data.csv')

X(1:5,:)

Y = rmmissing(X)

Y(1:5,:)

Y = rmmissing(X,2)

Y(1:5,:)

Y = rmmissing(X,'MinNumMissing',3)

 X(1:5,:)

Y = rmmissing(X,'MinNumMissing',2) 

Y = rmmissing(X,2,'MinNumMissing',2)

Y = rmmissing(X,2,'MinNumMissing',1)

Y = rmmissing(X,'DataVariable',{'Sepal_Length'})

Y = rmmissing(X,'DataVariable',{'Sepal_Length','Sepal_Width'})

Y = rmmissing(X,'DataVariable',{'Sepal_Width','Petal_Width'})
%}