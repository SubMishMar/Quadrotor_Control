function op=attitude_control(u)
global I 

Ixx=I(1,1); Iyy=I(2,2); Izz=I(3,3);
a1=(Iyy-Izz)/Ixx;
b1=1/Ixx;
a2=(Izz-Ixx)/Iyy ;
b2=1/Iyy;
a3=(Ixx-Iyy)/Izz;
b3=1/Izz;

x1d=u(1) ;
dx1d=u(2) ;
ddx1d=u(3);
x3d=u(4) ;
dx3d=u(5) ;
ddx3d=u(6);
x5d=u(7) ;
dx5d=u(8) ;
ddx5d=u(9);
x1=u(10) ;
x2=u(11) ;
x3=u(12) ;
x4=u(13) ;
x5=u(14) ;
x6=u(15);
c1=100;c2=100;c3=100;c4=100;c5=100;c6=100;

z1=x1d-x1;
dz1=dx1d-x2;
z2=x2-dx1d-c1*z1;
u2=(1/b1)*(ddx1d+c1*dz1-c2*z2+z1-a1*x4*x6);

z3=x3d-x3 ;
dz3=dx3d-x4;
z4=x4-dx3d-c3*z3;
u3=(1/b2)*(ddx3d+c3*dz3-c4*z4+z3-a2*x2*x6);

z5=x5d-x5 ;
dz5=dx5d-x6;
z6=x6-dx5d-c5*z5;
u4=(1/b3)*(ddx5d+c5*dz5-c6*z6+z5-a3*x2*x4);

op=[u2;u3;u4];
end