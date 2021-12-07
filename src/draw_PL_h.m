function draw_PL_h(ax,path,c)
v=10;
w=89;
COLR={'-r','--b',':k','-.g'};
plot(ax,path(v+1:w,1+0*3),path(v+1:w,2+0*3),COLR{1+c},'LineWidth',3);
title(ax,'Path Loss V.s. Elevation angle');
ylabel(ax,'Path Loss [dB]');
xlabel(ax,'Elevation angle [degree]');