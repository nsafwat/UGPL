

function  [path]=A2G_model1_PL_h(env,f,L_r,h_ms,h_B,A,Go,seta_3db,h_UAV)
ax={15,11,5,5};
bx={.16,.18,.3,.3};
a=ax{env};
b=bx{env};
v=1;
w=89;
    for i=v:1:w
         seta=i;
       
        R=(h_UAV-h_ms)/tan(pi/180*seta);
        
        PL=(-147.5+20*log10(f)+20*log10(R)-...
                    20*log10(cos(pi()/180*seta)))-...
                    A*(2*Go-(12*((seta)/seta_3db)^2)-(12*((seta)/seta_3db)^2))+...
                    20*log10((10^((-68.8+10*log10(f)+10*log10(h_B-h_ms)+...
                    20*log10(cos(pi()*seta/180))-...
                    10*log10(1+sqrt(2)/(L_r^2 )))/20)*...
                (1-(1/(a*exp(-b*(seta-a))+1))))+...
                (1*(1/(a*exp(-b*(seta-a))+1))));
     
        path(i+1,1)=seta;
        path(i+1,2)=PL;
        path(i+1,3)=R;
        
        
    end
%     