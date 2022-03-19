

function  [path,Seta_A2G_opt,R_A2G,h_UAV]=A2G_model1_R_h(env,f,L_r,h_ms,h_B,A,Go,seta_3db,Ptx,Prx)
ax={15,11,5,5};
bx={.16,.18,.3,.3};
a=ax{env};
b=bx{env};

%pathloss
PL=Ptx-Prx;

v=1;
w=89;
    for i=v:1:w
         seta=i;
       

               R= 10^(-(-PL+(-147.5+20*log10(f)-...
                    20*log10(cos(pi()/180*seta)))-...
                    A*(2*Go-(12*((seta)/seta_3db)^2)-(12*((seta)/seta_3db)^2))+...
                    20*log10((10^((-68.8+10*log10(f)+10*log10(h_B-h_ms)+...
                    20*log10(cos(pi()*seta/180))-...
                    10*log10(1+sqrt(2)/(L_r^2 )))/20)*...
                (1-(1/(a*exp(-b*(seta-a))+1))))+...
                (1*(1/(a*exp(-b*(seta-a))+1)))))/20);
      
        path(i+1,1)=R*tan(pi()/180*seta)+h_ms;
        path(i+1,2)=R;
        path(i+1,3)=seta;
        
    end
    R_A2G=max(path(:,2));
    h_UAV=path(find(path(:,2)==max(path(:,2))),1);
    Seta_A2G_opt=path(find(path(:,2)==max(path(:,2))),3);
    
    
%
