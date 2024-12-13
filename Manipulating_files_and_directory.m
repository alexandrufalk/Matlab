exist x

exist html 

exist Analysis_1.m

exist sort

%Manipulating directory
dir 

dir *.m

dir */*.m 

dir **/*.m

dir *f.m

dir *f*.m 

y = dir 

y(3) 

y(4) 

y(4).folder 

y = dir('html'); 

cd ../

dir 

cd ../

cd ./R2016b 

cd ./bin

mkdir result3

cd ./result3 

cd ../ 

rmdir result3

rmdir result1 

rmdir('results1','s'); %This is an optional flag indicating that the folder and all its contents (files and subfolders) should be deleted recursively.
                        %Without this flag, rmdir will only delete the folder if it is empty.

movefile data.csv results2 

what results2 

what html 