function plotCircle3D_Ax_clr(ax,center,normal,radius,clr)

theta=0:0.01:2*pi;
v=null(normal);
points=repmat(center',1,size(theta,2))+radius*(v(:,1)*cos(theta)+v(:,2)*sin(theta));
plot3(ax,points(1,:),points(2,:),points(3,:),'LineWidth',1,'color',clr);

end