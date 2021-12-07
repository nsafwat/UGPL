function A2G_draw_PL_h(ax,path,seta,scale)
%to plot coverage raduis with color code with rspect to pathloss from low
%to hight 
%generate color codes 
ColorSet = varycolor(floor(seta));
%plot circles with color codes 
for m = 11:scale:seta
    x=sort(path(:,2));
 plotCircle3D_Ax_clr(ax,[0 0 0],[0 0 0],path(find(path(:,2)==x(m)),3),ColorSet(m,1:3))
end
%plot the uav hight
stem3(ax,0,0,200,'-.k');
%view plot in 3d
view(ax,3);
%set the color map of the axes with the colorset
colormap(ax,ColorSet)
%color bar limits
set(ax,'CLim', [floor(min(path(11:90,2))) floor(max(path(11:90,2)))]);
colorbar(ax);
%titles
title(ax,'Path Loss V.s. Coverage Radius');
ylabel(ax,'Path Loss [dB]');
xlabel(ax,'Coverage Raduis  [m]');
zlabel(ax,'UAV height   [m]');
% xh = get(ax,'XLabel'); % Handle of the x label
% % set(xh, 'Units', 'Normalized')
% pos = get(xh, 'Position');
% set(xh, 'Position',pos,'Rotation',23)
% yh = get(ax,'YLabel'); % Handle of the y label
% % set(yh, 'Units', 'Normalized')
% pos = get(yh, 'Position');
% set(yh, 'Position',pos,'Rotation',-37.5)
% zh = get(gca,'ZLabel'); % Handle of the z label
% % set(zh, 'Units', 'Normalized')
% pos = get(zh, 'Position');
% set(zh, 'Position',pos.*[1,1,0],'Rotation',90)
