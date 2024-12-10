clear all

%Symbolic variable
a = sym(5/3) 

syms a 

syms a b c 

a = sym('a')

syms a 

phi = (1+sqrt(sym(5)))/2 

f = phi^2 + phi 

syms a b c x 

f = a*x^2 + b*x + c 

%Differantion and integration

syms x 

f = sin(x)^2 

diff(f) 

syms x y 

f = sin(x)^2 + cos(x)^2 

diff(f)

diff(f,y) 

diff(f,y,2) 

diff(f,2) 

diff(diff(f))

int(f) 

int(f,y) 

int(f,1,10) 

%Solving equations
syms x 

f = x^3 + 6*x^2 == 6 - 11*x 

solve(f)

f = x^3 + 6*x^2 + 6 - 11*x 

solve(f) 

f = 6*x^2 - 6*x^2*y + x*y^2 - x*y + y^3 - y^2 == 0

solve(f) 

solve(f,y) 

syms x y z

f = z == 4*x 

f1 = x == y 

f2 = z == x^2 + y^2 

[x, y, z] = solve(f,f1,f2)

syms x f

f =  x^3 + x^2 

subs(f,5) 

syms x y f 

f =  x^3 + y^2 

subs(f,5)

subs(f,y,5) 

subs(f,y,x) 

f = 20*x^3 + 10 *x^2 

sym2poly(f)

%Symbolic functions

syms x y 

f(x,y) = 2*x^2 + 3*y^2 

diff(f(x,y),2,y) 

diff(f(x,y),1,x)

f(y+1,y)  
 
f(2,3) 