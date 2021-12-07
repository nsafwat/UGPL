function draw_R_h(ax,path,R_A2G,h_UAV,c)
v=10;
w=89;
COLR={'-r','--b',':k','-.g'};
plot(ax,path(v+1:w,1+0*3),path(v+1:w,2+0*3),COLR{1+c},double(h_UAV),double(R_A2G),'xg','LineWidth',3);
title(ax,'Ground Distance V.s. UAV  Height');
ylabel(ax,'Ground Distance Between ms and UAV [m]');
xlabel(ax,'UAV Height h [m]');