

function [path,Seta_A2G_opt,R_A2G,h_UAV]= A2G_model2_R_h(env,f,h_ms,A,Go,seta_3db,Ptx,Prx)


eta_LOSx={1.6,1,.1,.1};
eta_NLOSx={23,20,21,21};

ax={15,11,5,5};
bx={.16,.18,.3,.3};

eta_LOS=eta_LOSx{env};
eta_NLOS=eta_NLOSx{env};
a=ax{env};
b=bx{env};

% %parameter A
% A=eta_LOS-eta_NLOS;
% %parameter B
% B=-147.55+20*log10(f)+eta_NLOS;
%pathloss
PL=Ptx-Prx;


v=1;
w=89;
    for i=v:1:w
         seta=i;
      
        R=10^(-(-PL+(-147.5+20*log10(f)-...
                    20*log10(cos(pi()/180*seta)))-...
                    A*(2*Go-(12*((seta)/seta_3db)^2)-(12*((seta)/seta_3db)^2))+...
                    20*log10((10^(eta_NLOS/20)*...
                (1-(1/(a*exp(-b*(seta-a))+1))))+...
                (eta_LOS*(1/(a*exp(-b*(seta-a))+1)))))/20);
%         eqn_0=-PL+(A/(a*exp(-b*(seta-a))+1))+...
%           20*log10(R/cos(pi()/180*seta))+B;

      
        path(i+1,1)=R*tan(pi()/180*seta)+h_ms;
        path(i+1,2)=R;
        path(i+1,3)=seta;
        
    end
    
% %========calculate seta optm==============================================%
%     %==== dR/d(seta) =0====================%
% syms eqn_1 seta_A2G
% eqn_1=pi()*tan(pi()/180*seta_A2G)/(9*2.3)+ (a*b*A*exp(-b*(seta_A2G-a)))/...
%      (a*exp(-b*(seta_A2G-a))+1)^2;
%     %======optm elvation angle=============%
% Seta_A2G_opt=vpasolve(eqn_1,seta_A2G,[89 10]);
% %=========================================================================%
% %====calculate pathloss at seta-optm======================================%
% seta_A2G_C=Seta_A2G_opt;
%  syms   eqn_2 R 
%     %===PL equation==========================%
%     eqn_2=-PL+(A/(a*exp(-b*(seta_A2G_C-a))+1))+...
%           20*log10(R/cos(pi()/180*seta_A2G_C))+B;
%     %======coverage Raduis===================%  
%     R_A2G=vpasolve(eqn_2==0,R);
%     %======UAV height========================%
%     h_UAV=R_A2G*tan(3.14/180*seta_A2G_C)+h_ms;\
    R_A2G=max(path(:,2));
    h_UAV=path(find(path(:,2)==max(path(:,2))),1);
    Seta_A2G_opt=path(find(path(:,2)==max(path(:,2))),3);
%=========================================================================%
% COLR={'-r','--b',':k','-.g'};
% plot(path(v+1:w,1+0*3),path(v+1:w,2+0*3),COLR{1+1},double(h_UAV),double(R_A2G),'xr','LineWidth',2);
% title('Ground Distance V.s. UAV  Height');
% ylabel('Ground Distance Between ms and UAV [m]');
% xlabel('UAV Height h [m]');

