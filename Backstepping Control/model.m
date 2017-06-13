function op=model(u)
global m I g
Ixx=I(1,1); Iyy=I(2,2); Izz=I(3,3);
a1=(Iyy-Izz)/Ixx; b1=1/Ixx;
a2=(Izz-Ixx)/Iyy; b2=1/Iyy;
a3=(Ixx-Iyy)/Izz; b3=1/Izz;
b4=1/m;
x1=u(1);x2=u(2);
x3=u(3);x4=u(4);
x5=u(5);x6=u(6);
x7=u(7);x8=u(8);
x9=u(9);x10=u(10);
x11=u(11);x12=u(12);
U=u(13:16);
u1=U(1);u2=U(2);u3=U(3);u4=U(4);
dx1=x2;
dx2=a1*x4*x6+b1*u2;
dx3=x4;
dx4=a2*x2*x6+b2*u3;
dx5=x6;
dx6=a3*x2*x4+b3*u4;
dx7=x8;
dx8=-g+b4*cos(x1)*cos(x3)*u1;
dx9=x10;
dx10=b4*(cos(x5)*sin(x3)+cos(x3)*sin(x1)*sin(x5))*u1;
dx11=x12;
dx12=b4*(sin(x5)*sin(x3)-cos(x3)*sin(x1)*cos(x5))*u1;
op=[dx1,dx2,dx3,dx4,dx5,dx6,dx7,dx8,dx9,dx10,dx11,dx12];
end