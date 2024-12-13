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

%Plotting options

x = rand(10,1);

y = rand(10,1);

z = rand(10,1);

plot(x,y); 

figure, plot(x,y);  % for holding a plot so that it is not over written 


subplot(2,2,1), plot(x,y); 
subplot(2,2,2), plot(x,z); 
subplot(2,2,3), plot(y,z); 
subplot(2,2,4), plot(x,x); 

%Combining plots with hold on
x = 0:0.2:10; 

y1 = sin(x);

plot(x,y1); 

hold on

y2 = sin(x/2); 

plot(x,y2);  

plot(x,y2);

y3 = 2*sin(x); 

scatter(x,y3)

bar(x,y3)

%Creating plots with two axes



month = 1:12; 

percep = [3.4 3.3 4.3 3.7 3.5 3.7 3.4 3.4 3.4 3.9 4.0 3.8];

temp = [16 25 40 58 59 70 77 77 65 56 47 34]; 

yyaxis left

figure,plot(month,percep); 

ylabel('percipitation'); 

xlabel('month'); 

yyaxis right 

plot(month,temp); 

ylabel('temperature'); 
