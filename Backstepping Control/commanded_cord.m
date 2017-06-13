function op=commanded_cord(u)
global g
xd=u(1); dxd=u(2); ddxd=u(3);
yd=u(4); dyd=u(5); ddyd=u(6);
psid=u(7);
x=u(8); dx=u(9); 
y=u(10); dy=u(11);
Kdx=1;Kpx=10;
Kdy=1;Kpy=10;
ddxc=ddxd+Kdx*(dxd-dx)+Kpx*(xd-x);
ddyc=ddyd+Kdy*(dyd-dy)+Kpy*(yd-y);
phiC=(1/g)*(ddxc*sin(psid)-ddyc*cos(psid));
phiC=atan2(sin(phiC),cos(phiC));
thtC=(1/g)*(ddxc*cos(psid)+ddyc*sin(psid));
thtC=atan2(sin(thtC),cos(thtC));
op=[phiC;thtC;psid];
end