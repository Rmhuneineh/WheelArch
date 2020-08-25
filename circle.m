function [x1, y1, x2, y2] = circle(a,b,r,c,d,R)
th = 0:pi/50:2*pi;
x1 = r * cos(th) + a;
y1 = r * sin(th) + b;
x2 = R * cos(th) + c;
y2 = R * sin(th) + d;