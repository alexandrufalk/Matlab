x = [5 8 9 7 6 5]

y = [4 5 8 7 9 6 ]

plot(x,y)

plot(x) 

x = magic(6) 

plot(x,y)  

plot(x,y,'*')

plot(x,y,'--')

plot(x,y,'Color',[0,0.7,0.9])

plot(x,y,'Color',[0,0.7,1.0])

plot(x,y,'Color',[0,0.7,0.9]); title('2-D line plot'); xlabel('x-axis'); ylabel('values'); 

%Plotting 3D data

A = [1 5 0 7 0]

B = [1 1 0 2 3 ]

C = [5 8 7 9 6]

plot3(A,B,C)

stem3(A,B,C) 

impz(A,B,C) 