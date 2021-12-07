

function [path]=A2G_model2_PL_h(env,f,h_ms,A,Go,seta_3db,h_UAV)


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
% % %pathloss
% % PL=Ptx-Prx;

v=1;
w=89;
    for i=v:1:w
         seta=i;
         R=(h_UAV-h_ms)/tan(pi/180*seta);
         
        PL=(-147.5+20*log10(f)+20*log10(R)-...
                    20*log10(cos(pi()/180*seta)))-...
                    A*(2*Go-(12*((seta)/seta_3db)^2)-(12*((seta)/seta_3db)^2))+...
                    20*log10((10^(eta_NLOS/20)*...
                (1-(1/(a*exp(-b*(seta-a))+1))))+...
                (eta_LOS*(1/(a*exp(-b*(seta-a))+1))));
       path(i+1,1)=seta;
        path(i+1,2)=PL;
        path(i+1,3)=R;
        
    end
    

