function op=position_control(u)
global m g
c8=1;
c7=1;
x1=u(1); x3=u(2); x7=u(3); x8=u(4);
x7d=u(5);dx7d=u(6);ddx7d=u(7);
b4=1/m;
z8=x8-dx7d-c7*(x7d-x7);
z7=x7d-x7;
dz7=dx7d-x8;
op=(1/(b4*cos(x1)*cos(x3)))*(-c8*z8+g+ddx7d+c7*dz7+z7);
end