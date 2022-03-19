%====This script is an example for the UGPL matlab application===== =======%
%==First app to calculate the coverage raduis vs UAV height and to
%calculate the optimum elevation angle====================================%
%== second app to calculate the path loss vs elevation angle at certain UAV
%height===================================================================%
%=========================================================================%
%=========================================================================%

%==First app to calculate the coverage raduis vs UAV height and to
%calculate the optimum elevation angle====================================%
%===paramters intial values================================================
        path=0;
        path3=0; 
        path4=0;
        i=0;
        j=0;
        ColorSet=varycolor(floor(90))
%=======pathloss input parameters==========================================
%==enviroment type selection===%       
        env=2;
%=====operating frequency frequency====%
        f=1000000000*2;
 %==reflection loss===================%
        L_r=.3;
  %===mobile station height===========%
        h_ms=2;
  %==Building height===================%
        h_B=35;
  %=== transmiting power==============%
        Ptx=20;
  %===received power=================%
        Prx=-80;  
  %====antenna loss=====================%
        A=1; %to calculate with, A=0 to calculate without antenna loss==%
  %=========max antenna gain=============%
        Go=2.15;
  %=============antenna 3db bandwidth=======%
        seta_3db=76;  
   %========================call path loss function model1================%
 [path,Seta_A2G_opt,R_A2G,h_UAV]=A2G_model1_R_h(env,f,L_r,h_ms,h_B,A,Go,...
     seta_3db,Ptx,Prx)
   
%================%configure plot axes=====================================
        fig1=figure;
        ax=gca;
        hold;
        color=1;        
%==========================% plot function===============================
       draw_R_h(ax,path,R_A2G,h_UAV,color);
%             

%===========call the path loss function model2=============================    
       [path,Seta_A2G_opt,R_A2G,h_UAV]=A2G_model2_R_h(env,f,h_ms,A,Go,...
           seta_3db,Ptx,Prx)
      
%===================%call pot function=======================
       color=2;
       draw_R_h(ax,path,R_A2G,h_UAV,color);
       legend({'model-1','optimum elevation angle','model-2'},...
           'Location','southeast')
       hold;
%===================save output figure===============================%       
     saveas(fig1,'A2Gpathloss coverage vs hight.png') 
%==========================================================================
%==========================================================================
%==========================================================================

%== second app to calculate the path loss vs elevation angle at certain UAV
%height===================================================================%
% %input param
%UAAV height%
        h_UAV=200;
%             
%===========call the path loss function model1=============================    
            path3=A2G_model1_PL_h(env,f,L_r,h_ms,h_B,A,Go,seta_3db,h_UAV);
%================%configure plot axes=====================================
            fig2=figure;
            hold
            ax=gca;
            color=1;
            grid(ax,'on');
%=============%set the 3d plot resolution================================
            seta=85;
            scale=1;
%==============%call plot function=====================================
%=======plot path loss vs. elevation angle at certian height=============== 
            draw_PL_h(ax,path3,color);
         
%===========call the path loss function model2=============================        
            path4=A2G_model2_PL_h(env,f,h_ms,A,Go,seta_3db,h_UAV);
            color=2;
%=======plot path loss vs. elevation angle at certian height=============== 
            draw_PL_h(ax,path4,color);
            legend({'model-1','model-2'},'Location','southeast')
             saveas(fig2,'A2Gpathloss  vs elevation angle.png') 
%=================%3d plot plot path loss vs. coverage raduis==============
           fig3=figure;
           hold
           ax2=gca
           grid(ax2,'on');
           A2G_draw_PL_h(ax2,path3,seta,scale);
           hold(ax);
           hold(ax2);
           saveas(fig3,'3d A2Gpathloss  vs elevation angle.png')
