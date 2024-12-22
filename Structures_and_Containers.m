
clear all
% Creating structure

student=struct('dateofbirth','','Age',{},'Grades',{})
student(1).dateofbirth = '2000-12-5'
student(1).Age = 17

student(1).Grades = 80

student(2).Grades = 90
student(2).dateofbirth = '1999-6-6'

student(2).Age = 18
student(2)

student(1) 

student(1:2).dateofbirth

student(1:2).Age

student(1).dateofbirth(1:4)

%Retriving data

student = struct('dateofbirth','','Age',{},'Subjects',{},'Grades',{})

student(1).Subjects={'English' 'Math' 'Science' 'General Knowledge '}

student(1).Grades = [80 70 85 90]

student(1).Grades(1)

student(1).Subjects(2) 

student(1).Subjects{2} 

%Concatenating structures

s1.a=[1 2 3];
s1.b={'a' 'b' 'c'};
s2.a=rand(3);
s2.b='hello';
s1,s2
combined_s1s2=[s1,s2]
combined_s1s2(1)
s1(1)
combined_s1s2(2)
s2(1)

%Storing data from a structure

s1(2).a = 'Hello'

s1(3).a = rand(3) 

[v1,v2,v3]  = s1.a 
m=s1.a
m=s1(1:3).a
C={s1.a}
C{1}
C{2}
C{3}
C = {s1.a}

%More operations on structure

a = rand(3) 

Structure.a = a  

student = struct('dateofbirth','','Age',{},'Subjects',{},'Grades',{})

isfield(student,'Age')

isfield(student,{'Age' 'Grades' 'subject'})

isstruct(student) 

isstruct(C) 

isstruct(v1) 

isstruct(s1)

%Creating Map Container

mycont=containers.Map({'jan','feb','march'},{1 2 3})

mycont('jan')

x = rand(3)

mycont = containers.Map({'jan','feb','march'}, {x(1,:),x(2,:),x(3,:)})

mycont('feb')

keys(mycont)

values(mycont)

%Concatenating containers

 mycont = containers.Map({'jan','feb','march'},{rand(1,3), [5;6;9], 'hello'})

 remove(mycont,'jan')

 %mycont('jan') 

 isKey(mycont,'feb') 

 isKey(mycont,{'feb' 'march'})
mycont = containers.Map({'jan','feb','march'},{rand(1,3), [5;6;9], 'hello'})

mycont2 = containers.Map({'apr','may','jun'},{rand(1,3), [10;15], 'world'})

mylargecont=[mycont;mycont2]
keys(mylargecont)
values(mylargecont) 
values(mycont)
mylargecont('jan')
mycont('jan')
mycont2('jan')