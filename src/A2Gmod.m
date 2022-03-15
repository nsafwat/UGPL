classdef A2Gmod < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        A2G_PathLoss                    matlab.ui.Figure
        TabGroup                        matlab.ui.container.TabGroup
        CalculateOptimumElevationAngleatCertainAllowablePathLossTab  matlab.ui.container.Tab
        CalculateOptimumElevationAngleatCertainAllowablePathLossLabel  matlab.ui.control.Label
        InputsPanel                     matlab.ui.container.Panel
        FrequencyGHzEditFieldLabel      matlab.ui.control.Label
        FrequencyGHzEditField           matlab.ui.control.NumericEditField
        MobilestationheightmEditFieldLabel  matlab.ui.control.Label
        MobilestationheightmEditField   matlab.ui.control.NumericEditField
        ReflectionCoeffEditFieldLabel   matlab.ui.control.Label
        ReflectionCoeffEditField        matlab.ui.control.NumericEditField
        BuildingheightmEditFieldLabel   matlab.ui.control.Label
        BuildingheightmEditField        matlab.ui.control.NumericEditField
        TxpowerdBmLabel_3               matlab.ui.control.Label
        TxpowerdBmEditField             matlab.ui.control.NumericEditField
        RxpowerdBmLabel_3               matlab.ui.control.Label
        RxpowerdBmEditField             matlab.ui.control.NumericEditField
        WithAntennalossButtonGroup      matlab.ui.container.ButtonGroup
        YESButton                       matlab.ui.control.RadioButton
        NOButton                        matlab.ui.control.RadioButton
        EnvironmentTypeLabel            matlab.ui.control.Label
        EnvironmentTypeDropDown         matlab.ui.control.DropDown
        OutputPanel                     matlab.ui.container.Panel
        optimumElevationangledegreeEditField  matlab.ui.control.NumericEditField
        optimumElevationangledegreeEditFieldLabel  matlab.ui.control.Label
        CoverageRadiusmEditField        matlab.ui.control.NumericEditField
        CoverageRadiusmEditFieldLabel   matlab.ui.control.Label
        UAVheightmEditField             matlab.ui.control.NumericEditField
        UAVheightmEditFieldLabel        matlab.ui.control.Label
        AntennaParametersPanel          matlab.ui.container.Panel
        AntennagainGodBiEditFieldLabel  matlab.ui.control.Label
        AntennagainGodBiEditField       matlab.ui.control.NumericEditField
        Antenna3dBBWdBiEditFieldLabel   matlab.ui.control.Label
        Antenna3dBBWdBiEditField        matlab.ui.control.NumericEditField
        InputsPanel_2                   matlab.ui.container.Panel
        WithAntennalossButtonGroup_2    matlab.ui.container.ButtonGroup
        YESButton_2                     matlab.ui.control.RadioButton
        NOButton_2                      matlab.ui.control.RadioButton
        MobilestationheightmEditField_2Label  matlab.ui.control.Label
        MobilestationheightmEditField_2  matlab.ui.control.NumericEditField
        TxpowerdBmEditField_2Label      matlab.ui.control.Label
        TxpowerdBmEditField_2           matlab.ui.control.NumericEditField
        RxpowerdBmEditField_2Label      matlab.ui.control.Label
        RxpowerdBmEditField_2           matlab.ui.control.NumericEditField
        EnvironmentTypeDropDown_2Label  matlab.ui.control.Label
        EnvironmentTypeDropDown_2       matlab.ui.control.DropDown
        FrequencyGHzEditField_2Label    matlab.ui.control.Label
        FrequencyGHzEditField_2         matlab.ui.control.NumericEditField
        OutputPanel_2                   matlab.ui.container.Panel
        optimumElevationangledegreeEditField_2  matlab.ui.control.NumericEditField
        optimumElevationangledegreeEditField_2Label  matlab.ui.control.Label
        CoverageRadiusmEditField_2      matlab.ui.control.NumericEditField
        CoverageRadiusmEditField_2Label  matlab.ui.control.Label
        UAVheightmEditField_2           matlab.ui.control.NumericEditField
        UAVheightmEditField_2Label      matlab.ui.control.Label
        RUNButton                       matlab.ui.control.Button
        RUNButton_2                     matlab.ui.control.Button
        MODEL1Label                     matlab.ui.control.Label
        MODEL2Label                     matlab.ui.control.Label
        UIAxes                          matlab.ui.control.UIAxes
        ClearButton                     matlab.ui.control.Button
        Label_2                         matlab.ui.control.Label
        CalculatePathLossvsElevationangleTab  matlab.ui.container.Tab
        CalculatePathLossvsElevationangleLabel  matlab.ui.control.Label
        InputsPanel_3                   matlab.ui.container.Panel
        FrequencyGHzEditField_3Label    matlab.ui.control.Label
        FrequencyGHzEditField_3         matlab.ui.control.NumericEditField
        MobilestationheightmEditField_3Label  matlab.ui.control.Label
        MobilestationheightmEditField_3  matlab.ui.control.NumericEditField
        ReflectionCoeffEditField_2Label  matlab.ui.control.Label
        ReflectionCoeffEditField_3      matlab.ui.control.NumericEditField
        BuildingheightmEditField_2Label  matlab.ui.control.Label
        BuildingheightmEditField_3      matlab.ui.control.NumericEditField
        UAVHeightmEditFieldLabel        matlab.ui.control.Label
        UAVHeightmEditField_3           matlab.ui.control.NumericEditField
        WithAntennalossButtonGroup_3    matlab.ui.container.ButtonGroup
        YESButton_3                     matlab.ui.control.RadioButton
        NOButton_3                      matlab.ui.control.RadioButton
        EnvironmentTypeLabel_2          matlab.ui.control.Label
        EnvironmentTypeDropDown_3       matlab.ui.control.DropDown
        OutputPanel_3                   matlab.ui.container.Panel
        CoverageRadiusmEditField_3      matlab.ui.control.NumericEditField
        CoverageRadiusmEditField_3Label  matlab.ui.control.Label
        ElevationangleSlider_2Label     matlab.ui.control.Label
        ElevationangleSlider_1          matlab.ui.control.Slider
        PathLossdBEditField_3           matlab.ui.control.NumericEditField
        PathLossdBEditFieldLabel        matlab.ui.control.Label
        RUNButton_3                     matlab.ui.control.Button
        InputsPanel_4                   matlab.ui.container.Panel
        WithAntennalossButtonGroup_4    matlab.ui.container.ButtonGroup
        YESButton_4                     matlab.ui.control.RadioButton
        NOButton_4                      matlab.ui.control.RadioButton
        MobilestationheightmEditField_4Label  matlab.ui.control.Label
        MobilestationheightmEditField_4  matlab.ui.control.NumericEditField
        UAVHeightmLabel                 matlab.ui.control.Label
        UAVHeightmEditField_4           matlab.ui.control.NumericEditField
        EnvironmentTypeLabel_3          matlab.ui.control.Label
        EnvironmentTypeDropDown_4       matlab.ui.control.DropDown
        FrequencyGHzEditField_4Label    matlab.ui.control.Label
        FrequencyGHzEditField_4         matlab.ui.control.NumericEditField
        OutputPanel_4                   matlab.ui.container.Panel
        CoverageRadiusmEditField_4      matlab.ui.control.NumericEditField
        CoverageRadiusmEditField_4Label  matlab.ui.control.Label
        PathLossdBEditField_4           matlab.ui.control.NumericEditField
        PathLossdBEditField_2Label      matlab.ui.control.Label
        ElevationangleSliderLabel       matlab.ui.control.Label
        ElevationangleSlider_2          matlab.ui.control.Slider
        RUNButton_4                     matlab.ui.control.Button
        MODEL1Label_3                   matlab.ui.control.Label
        MODEL2Label_4                   matlab.ui.control.Label
        AntennaParametersPanel_2        matlab.ui.container.Panel
        AntennagainGodBiLabel           matlab.ui.control.Label
        AntennagainGodBiEditField_2     matlab.ui.control.NumericEditField
        Antenna3dBBWdBiLabel            matlab.ui.control.Label
        Antenna3dBBWdBiEditField_2      matlab.ui.control.NumericEditField
        UIAxes_2                        matlab.ui.control.UIAxes
        ClearButton_2                   matlab.ui.control.Button
        Label                           matlab.ui.control.Label
        UIAxes2                         matlab.ui.control.UIAxes
        Label_4                         matlab.ui.control.Label
        Label_3                         matlab.ui.control.Label
        Label_6                         matlab.ui.control.Label
        Label_5                         matlab.ui.control.Label
    end


    properties (Access = private)
        path3=0; % Description
        path4=0;
        i=0;
        j=0;
      ColorSet=varycolor(floor(90));
        
    end


    methods (Access = private)

        % Button pushed function: RUNButton
        function RUNButtonPushed(app, event)

            %disable Button while computing
            set(app.RUNButton, 'Enable', 'off')
            set(app.RUNButton_2, 'Enable', 'off')
            set(app.Label_2, 'Text', 'Computing......')
            pause(1);
            
            %input param
            env=str2double(app.EnvironmentTypeDropDown.Value);
            f=1000000000*app.FrequencyGHzEditField.Value;
            L_r=app.ReflectionCoeffEditField.Value;
            h_ms=app.MobilestationheightmEditField.Value;
            h_B=app.BuildingheightmEditField.Value;
            Ptx=app.TxpowerdBmEditField.Value;
            Prx=app.RxpowerdBmEditField.Value;
            
            %with or without antenna loss
            switch app.WithAntennalossButtonGroup.SelectedObject.Text
                case 'YES'
                        A=1;
                        Go=app.AntennagainGodBiEditField.Value;
                        seta_3db=app.Antenna3dBBWdBiEditField.Value;
                 case 'NO'
                       A=0;
                       Go=0;
                       seta_3db=1;
             end
             
             % call path loss function
            [path,Seta_A2G_opt,R_A2G,h_UAV]=A2G_model1_R_h(env,f,L_r,h_ms,h_B,A,Go,seta_3db,Ptx,Prx);
            
            
            %output param
            app.optimumElevationangledegreeEditField.Value=Seta_A2G_opt;
            app.CoverageRadiusmEditField.Value=R_A2G;
            app.UAVheightmEditField.Value=h_UAV;
            
            %configure plot axes
            ax=app.UIAxes;
            hold(ax);
            view(ax,2);
            color=1;
            
            % plot fuction
            draw_R_h(ax,path,R_A2G,h_UAV,color);
            hold(ax);
            
            %enable button after computing
            set(app.Label_2, 'Text', '')
            set(app.RUNButton, 'Enable', 'on')
            set(app.RUNButton_2, 'Enable', 'on')
            
        end

        % Button pushed function: RUNButton_2
        function RUNButton_2Pushed(app, event)
            %button disable while comupting
            set(app.RUNButton, 'Enable', 'off')
            set(app.RUNButton_2, 'Enable', 'off')
            set(app.Label_2, 'Text', 'Computing......')
            pause(1);
            
            %input param
            env=str2double(app.EnvironmentTypeDropDown_2.Value);
            f=1000000000*app.FrequencyGHzEditField_2.Value;
            h_ms=app.MobilestationheightmEditField_2.Value;
            Ptx=app.TxpowerdBmEditField_2.Value;
            Prx=app.RxpowerdBmEditField_2.Value;
            
            %with or without antenna loss
            switch app.WithAntennalossButtonGroup_2.SelectedObject.Text
                case 'YES'
                        A=1;
                        Go=app.AntennagainGodBiEditField.Value;
                        seta_3db=app.Antenna3dBBWdBiEditField.Value;
                 case 'NO'
                       A=0;
                       Go=0;
                       seta_3db=1;
             end
             %call the path loss function    
            [path,Seta_A2G_opt,R_A2G,h_UAV]=A2G_model2_R_h(env,f,h_ms,A,Go,seta_3db,Ptx,Prx);
           
            % output param
            app.optimumElevationangledegreeEditField_2.Value=Seta_A2G_opt;
            app.CoverageRadiusmEditField_2.Value=R_A2G;
            app.UAVheightmEditField_2.Value=h_UAV;
            
            %configure axes plot
            ax=app.UIAxes;
            hold(ax);
            view(ax,2);
            color=2;
            
            
            %call pot function
            draw_R_h(ax,path,R_A2G,h_UAV,color);
            hold(ax);
            
            %enable Button after computing
            set(app.Label_2, 'Text', '')
            set(app.RUNButton, 'Enable', 'on')
            set(app.RUNButton_2, 'Enable', 'on')
        end

        % Button pushed function: ClearButton
        function ClearButtonPushed(app, event)
            cla(app.UIAxes);
        end

        % Button pushed function: RUNButton_3
        function RUNButton_3Pushed(app, event)
            
            %disable Buttons whilecomputing
            set(app.RUNButton_3, 'Enable', 'off')
            set(app.RUNButton_4, 'Enable', 'off')
            set(app.Label, 'Text', 'Computing......')
            pause(1);
            
            %input param
            env=str2double(app.EnvironmentTypeDropDown_3.Value);
            f=1000000000*app.FrequencyGHzEditField_3.Value;
            h_ms=app.MobilestationheightmEditField_3.Value;
            L_r=app.ReflectionCoeffEditField_3.Value;
            h_B=app.BuildingheightmEditField_3.Value;
            h_UAV=app.UAVHeightmEditField_3.Value;
            
            %with or without antenna loss
            switch app.WithAntennalossButtonGroup_3.SelectedObject.Text
                case 'YES'
                        A=1;
                        Go=app.AntennagainGodBiEditField_2.Value;
                        seta_3db=app.Antenna3dBBWdBiEditField_2.Value;
                 case 'NO'
                       A=0;
                       Go=0;
                       seta_3db=1;
             end
             
             %output param
            path=A2G_model1_PL_h(env,f,L_r,h_ms,h_B,A,Go,seta_3db,h_UAV);
            %set output labels
            set(app.Label_5,'Text','Model-1');
            set(app.Label_3,'Text','Model-1 Output')
            set(app.Label_4,'Text','')
            
            
            app.path3=path;
            
            %config axes
            ax=app.UIAxes_2;
            ax2=app.UIAxes2;
            %clear axes
            cla(ax2);
            %hold plots
            hold(ax);
            hold(ax2);
            view(ax,2);
            color=2;
            grid(ax,'on');
            %set the 3d plot resolution
            seta=85;
            scale=1;
            %call plot function
            %plot path loss vs. elevation angle at certian height 
            draw_PL_h(ax,path,color);
            %3d plot plot path loss vs. coverage raduis
            A2G_draw_PL_h(ax2,path,seta,scale);
            hold(ax);
            hold(ax2);
            
            %enable buttton after computing
            set(app.Label, 'Text', '')
            set(app.RUNButton_3, 'Enable', 'on')
            set(app.RUNButton_4, 'Enable', 'on')
            set(app.ElevationangleSlider_1, 'Enable', 'on')
        end

        % Button pushed function: RUNButton_4
        function RUNButton_4Pushed(app, event)
            %disable Buttons whilecomputing
            set(app.RUNButton_3, 'Enable', 'off')
            set(app.RUNButton_4, 'Enable', 'off')
            set(app.Label, 'Text', 'Computing......')
            
            
            pause(1);
            
            %input param
            env=str2double(app.EnvironmentTypeDropDown_3.Value);
            f=1000000000*app.FrequencyGHzEditField_4.Value;
            h_ms=app.MobilestationheightmEditField_4.Value;
            h_UAV=app.UAVHeightmEditField_4.Value;
            
            %with or without antenna loss
            switch app.WithAntennalossButtonGroup_4.SelectedObject.Text
                case 'YES'
                        A=1;
                        Go=app.AntennagainGodBiEditField_2.Value;
                        seta_3db=app.Antenna3dBBWdBiEditField_2.Value;
                 case 'NO'
                       A=0;
                       Go=0;
                       seta_3db=1;
             end
             
             %output param
            path=A2G_model2_PL_h(env,f,h_ms,A,Go,seta_3db,h_UAV);
          
            app.path4=path;
            
            %set model label
            %set model label
            set(app.Label_6,'Text','Model-2');
            set(app.Label_3,'Text','')
            set(app.Label_4,'Text','Model-2 Output')
            
            
            %config axes
            ax=app.UIAxes_2;
            ax2=app.UIAxes2;
            %cleat the axes
            cla(ax2);
            %hold plots
            hold(ax);
            hold(ax2);
            
            view(ax,2);
            %2d plot color
            color=1;
            grid(ax,'on');
            %call plot function
            %plot path loss vs. elevation angle at certian height 
            draw_PL_h(ax,path,color);
            %3d plot plot path loss vs. coverage raduis
            A2G_draw_PL_h(ax2,path,85,1);
            hold(ax);
            hold(ax2);
            %enable buttton after computing
            set(app.Label, 'Text', '')
            set(app.RUNButton_3, 'Enable', 'on')
            set(app.RUNButton_4, 'Enable', 'on')
            set(app.ElevationangleSlider_2, 'Enable', 'on')
        end

        % Button pushed function: ClearButton_2
        function ClearButton_2Pushed(app, event)
           cla(app.UIAxes_2);
        end

        % Value changed function: ElevationangleSlider_1
        function ElevationangleSlider_1ValueChanged(app, event)
            %set model label
           set(app.Label_3,'Text','Model-1 Output')
           set(app.Label_4,'Text','')
            %get the angle value
            value = app.ElevationangleSlider_1.Value;
            %set the angle as index
            index=value;
            index=floor(index);
            %asgin the axes
            ax=app.UIAxes2;
           %outputs coverage raduis and path loss at the selected engle
            app.CoverageRadiusmEditField_3.Value=app.path3(index,3);
            app.PathLossdBEditField_3.Value=app.path3(index,2);
            %clear the axes at the first run
            if app.j==0
             cla(ax);
             app.i=app.j+1;
            end
            %sort the path loss from low to high
           x=sort(app.path3(:,2));
            %plot the the coverage raduis with color code
            %with respect to pathloss from low to high
          plotCircle3D_Ax_clr(ax,[0 0 0],[0 0 0],app.path3(index,3),app.ColorSet((find(x==app.path3(index,2))),1:3))
          %hold 3d plot
          hold(ax);
          %plot the uav height
          stem3(ax,0,0,200,'-.k'); 
          %relase plot
          hold(ax);
     
            
        end

        % Value changed function: ElevationangleSlider_2
        function ElevationangleSlider_2ValueChanged(app, event)
            %set model label
           set(app.Label_3,'Text','')
           set(app.Label_4,'Text','Model-2 Output')
            %get the angle value
            value = app.ElevationangleSlider_2.Value;
            index=value;
            %set the angle as index
            ax=app.UIAxes2;
            index=floor(index);
            %outputs coverage raduis and path loss at the selected engle
            app.CoverageRadiusmEditField_4.Value=app.path4(index,3);
            app.PathLossdBEditField_4.Value=app.path4(index,2);
            %clear the axes at the first run
           if app.i==0
             cla(ax);
             app.i=app.i+1;
           end
           %plot the the coverage raduis with color code
           %with respect to pathloss from low to high
          x=sort(app.path4(:,2));
          plotCircle3D_Ax_clr(ax,[0 0 0],[0 0 0],app.path4(index,3),app.ColorSet((find(x==app.path4(index,2))),1:3))
          %hold 3d plot
          hold(ax);
          %plot the uav height
          stem3(ax,0,0,200,'-.k');  
          %plot the uav height
          hold(ax);
     
        end
    end

    % App initialization and construction
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create A2G_PathLoss
            app.A2G_PathLoss = uifigure;
            app.A2G_PathLoss.Position = [10 40 1200 700];
            app.A2G_PathLoss.Name = 'A2G PathLLoss';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.A2G_PathLoss);
            app.TabGroup.Position = [1 10 1200 691];

            % Create CalculateOptimumElevationAngleatCertainAllowablePathLossTab
            app.CalculateOptimumElevationAngleatCertainAllowablePathLossTab = uitab(app.TabGroup);
            app.CalculateOptimumElevationAngleatCertainAllowablePathLossTab.Title = 'Calculate Optimum Elevation Angle at Certain Allowable PathLoss';

            % Create CalculateOptimumElevationAngleatCertainAllowablePathLossLabel
            app.CalculateOptimumElevationAngleatCertainAllowablePathLossLabel = uilabel(app.CalculateOptimumElevationAngleatCertainAllowablePathLossTab);
            app.CalculateOptimumElevationAngleatCertainAllowablePathLossLabel.BackgroundColor = [0.9294 0.6902 0.1294];
            app.CalculateOptimumElevationAngleatCertainAllowablePathLossLabel.HorizontalAlignment = 'center';
            app.CalculateOptimumElevationAngleatCertainAllowablePathLossLabel.FontSize = 14;
            app.CalculateOptimumElevationAngleatCertainAllowablePathLossLabel.FontWeight = 'bold';
            app.CalculateOptimumElevationAngleatCertainAllowablePathLossLabel.Position = [164 626 455 29];
            app.CalculateOptimumElevationAngleatCertainAllowablePathLossLabel.Text = 'Calculate Optimum Elevation Angle at Certain Allowable PathLoss';

            % Create InputsPanel
            app.InputsPanel = uipanel(app.CalculateOptimumElevationAngleatCertainAllowablePathLossTab);
            app.InputsPanel.ForegroundColor = [0 1 0];
            app.InputsPanel.TitlePosition = 'centertop';
            app.InputsPanel.Title = 'Inputs';
            app.InputsPanel.FontWeight = 'bold';
            app.InputsPanel.FontSize = 14;
            app.InputsPanel.Position = [21 106 281 488];

            % Create FrequencyGHzEditFieldLabel
            app.FrequencyGHzEditFieldLabel = uilabel(app.InputsPanel);
            app.FrequencyGHzEditFieldLabel.HorizontalAlignment = 'right';
            app.FrequencyGHzEditFieldLabel.Position = [18 403 148 22];
            app.FrequencyGHzEditFieldLabel.Text = 'Frequency (GHz)              :';

            % Create FrequencyGHzEditField
            app.FrequencyGHzEditField = uieditfield(app.InputsPanel, 'numeric');
            app.FrequencyGHzEditField.Limits = [1 10];
            app.FrequencyGHzEditField.Position = [177 403 95 22];
            app.FrequencyGHzEditField.Value = 5.8;

            % Create MobilestationheightmEditFieldLabel
            app.MobilestationheightmEditFieldLabel = uilabel(app.InputsPanel);
            app.MobilestationheightmEditFieldLabel.HorizontalAlignment = 'right';
            app.MobilestationheightmEditFieldLabel.Position = [15 374 150 22];
            app.MobilestationheightmEditFieldLabel.Text = 'Mobile station height (m)   :';

            % Create MobilestationheightmEditField
            app.MobilestationheightmEditField = uieditfield(app.InputsPanel, 'numeric');
            app.MobilestationheightmEditField.Limits = [0 2];
            app.MobilestationheightmEditField.Position = [180 374 92 22];
            app.MobilestationheightmEditField.Value = 2;

            % Create ReflectionCoeffEditFieldLabel
            app.ReflectionCoeffEditFieldLabel = uilabel(app.InputsPanel);
            app.ReflectionCoeffEditFieldLabel.HorizontalAlignment = 'right';
            app.ReflectionCoeffEditFieldLabel.Position = [14 343 151 22];
            app.ReflectionCoeffEditFieldLabel.Text = 'Reflection Coeff                 :';

            % Create ReflectionCoeffEditField
            app.ReflectionCoeffEditField = uieditfield(app.InputsPanel, 'numeric');
            app.ReflectionCoeffEditField.Limits = [0 1];
            app.ReflectionCoeffEditField.Position = [180 343 92 22];
            app.ReflectionCoeffEditField.Value = 0.2;

            % Create BuildingheightmEditFieldLabel
            app.BuildingheightmEditFieldLabel = uilabel(app.InputsPanel);
            app.BuildingheightmEditFieldLabel.HorizontalAlignment = 'right';
            app.BuildingheightmEditFieldLabel.Position = [13 312 152 22];
            app.BuildingheightmEditFieldLabel.Text = 'Building height (m)             :';

            % Create BuildingheightmEditField
            app.BuildingheightmEditField = uieditfield(app.InputsPanel, 'numeric');
            app.BuildingheightmEditField.Limits = [20 70];
            app.BuildingheightmEditField.Position = [180 312 92 22];
            app.BuildingheightmEditField.Value = 35;

            % Create TxpowerdBmLabel_3
            app.TxpowerdBmLabel_3 = uilabel(app.InputsPanel);
            app.TxpowerdBmLabel_3.HorizontalAlignment = 'right';
            app.TxpowerdBmLabel_3.Position = [10 282 151 22];
            app.TxpowerdBmLabel_3.Text = 'Tx power (dBm)                 :';

            % Create TxpowerdBmEditField
            app.TxpowerdBmEditField = uieditfield(app.InputsPanel, 'numeric');
            app.TxpowerdBmEditField.Limits = [0 50];
            app.TxpowerdBmEditField.Position = [180 282 92 22];
            app.TxpowerdBmEditField.Value = 20;

            % Create RxpowerdBmLabel_3
            app.RxpowerdBmLabel_3 = uilabel(app.InputsPanel);
            app.RxpowerdBmLabel_3.HorizontalAlignment = 'right';
            app.RxpowerdBmLabel_3.Position = [10 253 156 22];
            app.RxpowerdBmLabel_3.Text = 'Rx power (dBm)                 : ';

            % Create RxpowerdBmEditField
            app.RxpowerdBmEditField = uieditfield(app.InputsPanel, 'numeric');
            app.RxpowerdBmEditField.Limits = [-150 -60];
            app.RxpowerdBmEditField.Position = [181 253 91 22];
            app.RxpowerdBmEditField.Value = -80;

            % Create WithAntennalossButtonGroup
            app.WithAntennalossButtonGroup = uibuttongroup(app.InputsPanel);
            app.WithAntennalossButtonGroup.Title = 'With Antenna loss';
            app.WithAntennalossButtonGroup.Position = [102 164 123 77];

            % Create YESButton
            app.YESButton = uiradiobutton(app.WithAntennalossButtonGroup);
            app.YESButton.Text = 'YES';
            app.YESButton.Position = [11 31 58 22];
            app.YESButton.Value = true;

            % Create NOButton
            app.NOButton = uiradiobutton(app.WithAntennalossButtonGroup);
            app.NOButton.Text = 'NO';
            app.NOButton.Position = [11 9 65 22];

            % Create EnvironmentTypeLabel
            app.EnvironmentTypeLabel = uilabel(app.InputsPanel);
            app.EnvironmentTypeLabel.HorizontalAlignment = 'right';
            app.EnvironmentTypeLabel.Position = [17 435 149 22];
            app.EnvironmentTypeLabel.Text = 'Environment  Type            :';

            % Create EnvironmentTypeDropDown
            app.EnvironmentTypeDropDown = uidropdown(app.InputsPanel);
            app.EnvironmentTypeDropDown.Items = {'', 'Dense Urban', 'Urban', 'SubUrban'};
            app.EnvironmentTypeDropDown.ItemsData = {'0', '1', '2', '3'};
            app.EnvironmentTypeDropDown.Position = [172 435 100 22];
            app.EnvironmentTypeDropDown.Value = '1';

            % Create OutputPanel
            app.OutputPanel = uipanel(app.InputsPanel);
            app.OutputPanel.ForegroundColor = [0 0 1];
            app.OutputPanel.TitlePosition = 'centertop';
            app.OutputPanel.Title = 'Output';
            app.OutputPanel.FontWeight = 'bold';
            app.OutputPanel.FontSize = 14;
            app.OutputPanel.Position = [1 9 260 140];

            % Create optimumElevationangledegreeEditField
            app.optimumElevationangledegreeEditField = uieditfield(app.OutputPanel, 'numeric');
            app.optimumElevationangledegreeEditField.Editable = 'off';
            app.optimumElevationangledegreeEditField.Position = [204 87 43 22];

            % Create optimumElevationangledegreeEditFieldLabel
            app.optimumElevationangledegreeEditFieldLabel = uilabel(app.OutputPanel);
            app.optimumElevationangledegreeEditFieldLabel.HorizontalAlignment = 'right';
            app.optimumElevationangledegreeEditFieldLabel.Position = [8 87 184 22];
            app.optimumElevationangledegreeEditFieldLabel.Text = 'optimum Elevation angle (degree)';

            % Create CoverageRadiusmEditField
            app.CoverageRadiusmEditField = uieditfield(app.OutputPanel, 'numeric');
            app.CoverageRadiusmEditField.Editable = 'off';
            app.CoverageRadiusmEditField.Position = [204 55 46 22];

            % Create CoverageRadiusmEditFieldLabel
            app.CoverageRadiusmEditFieldLabel = uilabel(app.OutputPanel);
            app.CoverageRadiusmEditFieldLabel.HorizontalAlignment = 'right';
            app.CoverageRadiusmEditFieldLabel.Position = [8 55 121 22];
            app.CoverageRadiusmEditFieldLabel.Text = 'Coverage Radius (m) ';

            % Create UAVheightmEditField
            app.UAVheightmEditField = uieditfield(app.OutputPanel, 'numeric');
            app.UAVheightmEditField.Editable = 'off';
            app.UAVheightmEditField.Position = [204 23 46 22];

            % Create UAVheightmEditFieldLabel
            app.UAVheightmEditFieldLabel = uilabel(app.OutputPanel);
            app.UAVheightmEditFieldLabel.HorizontalAlignment = 'right';
            app.UAVheightmEditFieldLabel.Position = [8 23 121 22];
            app.UAVheightmEditFieldLabel.Text = 'UAV height  (m)         ';

            % Create AntennaParametersPanel
            app.AntennaParametersPanel = uipanel(app.CalculateOptimumElevationAngleatCertainAllowablePathLossTab);
            app.AntennaParametersPanel.ForegroundColor = [0.4902 0.1804 0.5608];
            app.AntennaParametersPanel.Title = 'Antenna Parameters';
            app.AntennaParametersPanel.BackgroundColor = [1 1 1];
            app.AntennaParametersPanel.FontWeight = 'bold';
            app.AntennaParametersPanel.FontSize = 14;
            app.AntennaParametersPanel.Position = [804 511 299 111];

            % Create AntennagainGodBiEditFieldLabel
            app.AntennagainGodBiEditFieldLabel = uilabel(app.AntennaParametersPanel);
            app.AntennagainGodBiEditFieldLabel.HorizontalAlignment = 'right';
            app.AntennagainGodBiEditFieldLabel.Position = [3 46 154 22];
            app.AntennagainGodBiEditFieldLabel.Text = 'Antenna gain Go (dBi)        :';

            % Create AntennagainGodBiEditField
            app.AntennagainGodBiEditField = uieditfield(app.AntennaParametersPanel, 'numeric');
            app.AntennagainGodBiEditField.Position = [176 46 100 22];
            app.AntennagainGodBiEditField.Value = 2.15;

            % Create Antenna3dBBWdBiEditFieldLabel
            app.Antenna3dBBWdBiEditFieldLabel = uilabel(app.AntennaParametersPanel);
            app.Antenna3dBBWdBiEditFieldLabel.HorizontalAlignment = 'right';
            app.Antenna3dBBWdBiEditFieldLabel.Position = [3 5 160 22];
            app.Antenna3dBBWdBiEditFieldLabel.Text = 'Antenna 3dB  BW  (dBi)       :';

            % Create Antenna3dBBWdBiEditField
            app.Antenna3dBBWdBiEditField = uieditfield(app.AntennaParametersPanel, 'numeric');
            app.Antenna3dBBWdBiEditField.Position = [178 5 100 22];
            app.Antenna3dBBWdBiEditField.Value = 76;

            % Create InputsPanel_2
            app.InputsPanel_2 = uipanel(app.CalculateOptimumElevationAngleatCertainAllowablePathLossTab);
            app.InputsPanel_2.ForegroundColor = [0 1 0];
            app.InputsPanel_2.TitlePosition = 'centertop';
            app.InputsPanel_2.Title = 'Inputs';
            app.InputsPanel_2.FontSize = 14;
            app.InputsPanel_2.Position = [412 106 286 488];

            % Create WithAntennalossButtonGroup_2
            app.WithAntennalossButtonGroup_2 = uibuttongroup(app.InputsPanel_2);
            app.WithAntennalossButtonGroup_2.Title = 'With Antenna loss';
            app.WithAntennalossButtonGroup_2.Position = [83 164 123 87];

            % Create YESButton_2
            app.YESButton_2 = uiradiobutton(app.WithAntennalossButtonGroup_2);
            app.YESButton_2.Text = 'YES';
            app.YESButton_2.Position = [11 41 58 22];
            app.YESButton_2.Value = true;

            % Create NOButton_2
            app.NOButton_2 = uiradiobutton(app.WithAntennalossButtonGroup_2);
            app.NOButton_2.Text = 'NO';
            app.NOButton_2.Position = [11 19 65 22];

            % Create MobilestationheightmEditField_2Label
            app.MobilestationheightmEditField_2Label = uilabel(app.InputsPanel_2);
            app.MobilestationheightmEditField_2Label.HorizontalAlignment = 'right';
            app.MobilestationheightmEditField_2Label.Position = [10 374 150 22];
            app.MobilestationheightmEditField_2Label.Text = 'Mobile station height (m)   :';

            % Create MobilestationheightmEditField_2
            app.MobilestationheightmEditField_2 = uieditfield(app.InputsPanel_2, 'numeric');
            app.MobilestationheightmEditField_2.Limits = [0 2];
            app.MobilestationheightmEditField_2.Position = [175 374 100 22];
            app.MobilestationheightmEditField_2.Value = 2;

            % Create TxpowerdBmEditField_2Label
            app.TxpowerdBmEditField_2Label = uilabel(app.InputsPanel_2);
            app.TxpowerdBmEditField_2Label.HorizontalAlignment = 'right';
            app.TxpowerdBmEditField_2Label.Position = [10 343 151 22];
            app.TxpowerdBmEditField_2Label.Text = 'Tx power (dBm)                 :';

            % Create TxpowerdBmEditField_2
            app.TxpowerdBmEditField_2 = uieditfield(app.InputsPanel_2, 'numeric');
            app.TxpowerdBmEditField_2.Limits = [0 50];
            app.TxpowerdBmEditField_2.Position = [175 343 100 22];
            app.TxpowerdBmEditField_2.Value = 20;

            % Create RxpowerdBmEditField_2Label
            app.RxpowerdBmEditField_2Label = uilabel(app.InputsPanel_2);
            app.RxpowerdBmEditField_2Label.HorizontalAlignment = 'right';
            app.RxpowerdBmEditField_2Label.Position = [10 312 156 22];
            app.RxpowerdBmEditField_2Label.Text = 'Rx power (dBm)                 : ';

            % Create RxpowerdBmEditField_2
            app.RxpowerdBmEditField_2 = uieditfield(app.InputsPanel_2, 'numeric');
            app.RxpowerdBmEditField_2.Limits = [-150 -60];
            app.RxpowerdBmEditField_2.Position = [175 312 98 22];
            app.RxpowerdBmEditField_2.Value = -80;

            % Create EnvironmentTypeDropDown_2Label
            app.EnvironmentTypeDropDown_2Label = uilabel(app.InputsPanel_2);
            app.EnvironmentTypeDropDown_2Label.HorizontalAlignment = 'right';
            app.EnvironmentTypeDropDown_2Label.Position = [10 435 146 22];
            app.EnvironmentTypeDropDown_2Label.Text = 'Environment  Type           :';

            % Create EnvironmentTypeDropDown_2
            app.EnvironmentTypeDropDown_2 = uidropdown(app.InputsPanel_2);
            app.EnvironmentTypeDropDown_2.Items = {'Dense Urban', 'Urban', 'Sub Urban'};
            app.EnvironmentTypeDropDown_2.ItemsData = {'1', '2 ', '3'};
            app.EnvironmentTypeDropDown_2.Position = [171 435 100 22];
            app.EnvironmentTypeDropDown_2.Value = '1';

            % Create FrequencyGHzEditField_2Label
            app.FrequencyGHzEditField_2Label = uilabel(app.InputsPanel_2);
            app.FrequencyGHzEditField_2Label.HorizontalAlignment = 'right';
            app.FrequencyGHzEditField_2Label.Position = [10 403 148 22];
            app.FrequencyGHzEditField_2Label.Text = 'Frequency (GHz)              :';

            % Create FrequencyGHzEditField_2
            app.FrequencyGHzEditField_2 = uieditfield(app.InputsPanel_2, 'numeric');
            app.FrequencyGHzEditField_2.Limits = [1 10];
            app.FrequencyGHzEditField_2.Position = [173 403 100 22];
            app.FrequencyGHzEditField_2.Value = 5.8;

            % Create OutputPanel_2
            app.OutputPanel_2 = uipanel(app.InputsPanel_2);
            app.OutputPanel_2.ForegroundColor = [0 0 1];
            app.OutputPanel_2.TitlePosition = 'centertop';
            app.OutputPanel_2.Title = 'Output';
            app.OutputPanel_2.FontWeight = 'bold';
            app.OutputPanel_2.FontSize = 14;
            app.OutputPanel_2.Position = [15 15 260 129];

            % Create optimumElevationangledegreeEditField_2
            app.optimumElevationangledegreeEditField_2 = uieditfield(app.OutputPanel_2, 'numeric');
            app.optimumElevationangledegreeEditField_2.Editable = 'off';
            app.optimumElevationangledegreeEditField_2.Position = [204 76 43 22];

            % Create optimumElevationangledegreeEditField_2Label
            app.optimumElevationangledegreeEditField_2Label = uilabel(app.OutputPanel_2);
            app.optimumElevationangledegreeEditField_2Label.HorizontalAlignment = 'right';
            app.optimumElevationangledegreeEditField_2Label.Position = [8 76 184 22];
            app.optimumElevationangledegreeEditField_2Label.Text = 'optimum Elevation angle (degree)';

            % Create CoverageRadiusmEditField_2
            app.CoverageRadiusmEditField_2 = uieditfield(app.OutputPanel_2, 'numeric');
            app.CoverageRadiusmEditField_2.Editable = 'off';
            app.CoverageRadiusmEditField_2.Position = [204 44 46 22];

            % Create CoverageRadiusmEditField_2Label
            app.CoverageRadiusmEditField_2Label = uilabel(app.OutputPanel_2);
            app.CoverageRadiusmEditField_2Label.HorizontalAlignment = 'right';
            app.CoverageRadiusmEditField_2Label.Position = [8 44 121 22];
            app.CoverageRadiusmEditField_2Label.Text = 'Coverage Radius (m) ';

            % Create UAVheightmEditField_2
            app.UAVheightmEditField_2 = uieditfield(app.OutputPanel_2, 'numeric');
            app.UAVheightmEditField_2.Editable = 'off';
            app.UAVheightmEditField_2.Position = [203 12 48 22];

            % Create UAVheightmEditField_2Label
            app.UAVheightmEditField_2Label = uilabel(app.OutputPanel_2);
            app.UAVheightmEditField_2Label.HorizontalAlignment = 'right';
            app.UAVheightmEditField_2Label.Position = [8 12 121 22];
            app.UAVheightmEditField_2Label.Text = 'UAV height  (m)         ';

            % Create RUNButton
            app.RUNButton = uibutton(app.CalculateOptimumElevationAngleatCertainAllowablePathLossTab, 'push');
            app.RUNButton.ButtonPushedFcn = createCallbackFcn(app, @RUNButtonPushed, true);
            app.RUNButton.BackgroundColor = [1 0 0];
            app.RUNButton.FontColor = [0.902 0.902 0.902];
            app.RUNButton.Position = [312 528 60 35];
            app.RUNButton.Text = 'RUN';

            % Create RUNButton_2
            app.RUNButton_2 = uibutton(app.CalculateOptimumElevationAngleatCertainAllowablePathLossTab, 'push');
            app.RUNButton_2.ButtonPushedFcn = createCallbackFcn(app, @RUNButton_2Pushed, true);
            app.RUNButton_2.BackgroundColor = [1 0 0];
            app.RUNButton_2.FontColor = [0.902 0.902 0.902];
            app.RUNButton_2.Position = [717 530 59 35];
            app.RUNButton_2.Text = 'RUN';

            % Create MODEL1Label
            app.MODEL1Label = uilabel(app.CalculateOptimumElevationAngleatCertainAllowablePathLossTab);
            app.MODEL1Label.BackgroundColor = [1 1 0];
            app.MODEL1Label.HorizontalAlignment = 'center';
            app.MODEL1Label.FontWeight = 'bold';
            app.MODEL1Label.Position = [62 600 202 22];
            app.MODEL1Label.Text = 'MODEL 1';

            % Create MODEL2Label
            app.MODEL2Label = uilabel(app.CalculateOptimumElevationAngleatCertainAllowablePathLossTab);
            app.MODEL2Label.BackgroundColor = [1 1 0];
            app.MODEL2Label.HorizontalAlignment = 'center';
            app.MODEL2Label.FontWeight = 'bold';
            app.MODEL2Label.Position = [454 600 202 22];
            app.MODEL2Label.Text = 'MODEL 2';

            % Create UIAxes
            app.UIAxes = uiaxes(app.CalculateOptimumElevationAngleatCertainAllowablePathLossTab);
            title(app.UIAxes, 'Title')
            xlabel(app.UIAxes, 'X')
            ylabel(app.UIAxes, 'Y')
            app.UIAxes.PlotBoxAspectRatio = [1 0.705882352941176 0.705882352941176];
            app.UIAxes.Box = 'on';
            app.UIAxes.XGrid = 'on';
            app.UIAxes.YGrid = 'on';
            app.UIAxes.Position = [807 119 376 288];

            % Create ClearButton
            app.ClearButton = uibutton(app.CalculateOptimumElevationAngleatCertainAllowablePathLossTab, 'push');
            app.ClearButton.ButtonPushedFcn = createCallbackFcn(app, @ClearButtonPushed, true);
            app.ClearButton.BackgroundColor = [1 1 0];
            app.ClearButton.FontColor = [0.4902 0.1804 0.5608];
            app.ClearButton.Position = [946 430 86 29];
            app.ClearButton.Text = 'Clear';

            % Create Label_2
            app.Label_2 = uilabel(app.CalculateOptimumElevationAngleatCertainAllowablePathLossTab);
            app.Label_2.HorizontalAlignment = 'center';
            app.Label_2.FontSize = 14;
            app.Label_2.FontColor = [1 0 0];
            app.Label_2.Position = [256 363 272 22];
            app.Label_2.Text = '';

            % Create CalculatePathLossvsElevationangleTab
            app.CalculatePathLossvsElevationangleTab = uitab(app.TabGroup);
            app.CalculatePathLossvsElevationangleTab.Title = 'Calculate Path Loss v.s. Elevation angle';

            % Create CalculatePathLossvsElevationangleLabel
            app.CalculatePathLossvsElevationangleLabel = uilabel(app.CalculatePathLossvsElevationangleTab);
            app.CalculatePathLossvsElevationangleLabel.BackgroundColor = [0.9294 0.6902 0.1294];
            app.CalculatePathLossvsElevationangleLabel.HorizontalAlignment = 'center';
            app.CalculatePathLossvsElevationangleLabel.FontSize = 14;
            app.CalculatePathLossvsElevationangleLabel.FontWeight = 'bold';
            app.CalculatePathLossvsElevationangleLabel.Position = [164 626 455 29];
            app.CalculatePathLossvsElevationangleLabel.Text = 'Calculate Path Loss v.s. Elevation angle';

            % Create InputsPanel_3
            app.InputsPanel_3 = uipanel(app.CalculatePathLossvsElevationangleTab);
            app.InputsPanel_3.ForegroundColor = [0 1 0];
            app.InputsPanel_3.TitlePosition = 'centertop';
            app.InputsPanel_3.Title = 'Inputs';
            app.InputsPanel_3.FontWeight = 'bold';
            app.InputsPanel_3.FontSize = 14;
            app.InputsPanel_3.Position = [21 77 300 517];

            % Create FrequencyGHzEditField_3Label
            app.FrequencyGHzEditField_3Label = uilabel(app.InputsPanel_3);
            app.FrequencyGHzEditField_3Label.HorizontalAlignment = 'right';
            app.FrequencyGHzEditField_3Label.Position = [18 432 148 22];
            app.FrequencyGHzEditField_3Label.Text = 'Frequency (GHz)              :';

            % Create FrequencyGHzEditField_3
            app.FrequencyGHzEditField_3 = uieditfield(app.InputsPanel_3, 'numeric');
            app.FrequencyGHzEditField_3.Limits = [1 10];
            app.FrequencyGHzEditField_3.Position = [177 432 48 22];
            app.FrequencyGHzEditField_3.Value = 5.8;

            % Create MobilestationheightmEditField_3Label
            app.MobilestationheightmEditField_3Label = uilabel(app.InputsPanel_3);
            app.MobilestationheightmEditField_3Label.HorizontalAlignment = 'right';
            app.MobilestationheightmEditField_3Label.Position = [15 403 150 22];
            app.MobilestationheightmEditField_3Label.Text = 'Mobile station height (m)   :';

            % Create MobilestationheightmEditField_3
            app.MobilestationheightmEditField_3 = uieditfield(app.InputsPanel_3, 'numeric');
            app.MobilestationheightmEditField_3.Limits = [0 2];
            app.MobilestationheightmEditField_3.Position = [180 403 45 22];
            app.MobilestationheightmEditField_3.Value = 2;

            % Create ReflectionCoeffEditField_2Label
            app.ReflectionCoeffEditField_2Label = uilabel(app.InputsPanel_3);
            app.ReflectionCoeffEditField_2Label.HorizontalAlignment = 'right';
            app.ReflectionCoeffEditField_2Label.Position = [14 372 151 22];
            app.ReflectionCoeffEditField_2Label.Text = 'Reflection Coeff                 :';

            % Create ReflectionCoeffEditField_3
            app.ReflectionCoeffEditField_3 = uieditfield(app.InputsPanel_3, 'numeric');
            app.ReflectionCoeffEditField_3.Limits = [0 1];
            app.ReflectionCoeffEditField_3.Position = [180 372 45 22];
            app.ReflectionCoeffEditField_3.Value = 0.2;

            % Create BuildingheightmEditField_2Label
            app.BuildingheightmEditField_2Label = uilabel(app.InputsPanel_3);
            app.BuildingheightmEditField_2Label.HorizontalAlignment = 'right';
            app.BuildingheightmEditField_2Label.Position = [13 341 152 22];
            app.BuildingheightmEditField_2Label.Text = 'Building height (m)             :';

            % Create BuildingheightmEditField_3
            app.BuildingheightmEditField_3 = uieditfield(app.InputsPanel_3, 'numeric');
            app.BuildingheightmEditField_3.Limits = [20 70];
            app.BuildingheightmEditField_3.Position = [180 341 45 22];
            app.BuildingheightmEditField_3.Value = 35;

            % Create UAVHeightmEditFieldLabel
            app.UAVHeightmEditFieldLabel = uilabel(app.InputsPanel_3);
            app.UAVHeightmEditFieldLabel.HorizontalAlignment = 'right';
            app.UAVHeightmEditFieldLabel.Position = [12 311 153 22];
            app.UAVHeightmEditFieldLabel.Text = 'UAV Height (m)                 :';

            % Create UAVHeightmEditField_3
            app.UAVHeightmEditField_3 = uieditfield(app.InputsPanel_3, 'numeric');
            app.UAVHeightmEditField_3.Limits = [10 400];
            app.UAVHeightmEditField_3.Position = [180 311 45 22];
            app.UAVHeightmEditField_3.Value = 200;

            % Create WithAntennalossButtonGroup_3
            app.WithAntennalossButtonGroup_3 = uibuttongroup(app.InputsPanel_3);
            app.WithAntennalossButtonGroup_3.Title = 'With Antenna loss';
            app.WithAntennalossButtonGroup_3.Position = [102 193 123 77];

            % Create YESButton_3
            app.YESButton_3 = uiradiobutton(app.WithAntennalossButtonGroup_3);
            app.YESButton_3.Text = 'YES';
            app.YESButton_3.Position = [11 31 58 22];
            app.YESButton_3.Value = true;

            % Create NOButton_3
            app.NOButton_3 = uiradiobutton(app.WithAntennalossButtonGroup_3);
            app.NOButton_3.Text = 'NO';
            app.NOButton_3.Position = [11 9 65 22];

            % Create EnvironmentTypeLabel_2
            app.EnvironmentTypeLabel_2 = uilabel(app.InputsPanel_3);
            app.EnvironmentTypeLabel_2.HorizontalAlignment = 'right';
            app.EnvironmentTypeLabel_2.Position = [13 464 120 22];
            app.EnvironmentTypeLabel_2.Text = 'Environment  Type  :';

            % Create EnvironmentTypeDropDown_3
            app.EnvironmentTypeDropDown_3 = uidropdown(app.InputsPanel_3);
            app.EnvironmentTypeDropDown_3.Items = {'', 'Dense Urban', 'Urban', 'SubUrban'};
            app.EnvironmentTypeDropDown_3.ItemsData = {'0', '1', '2', '3'};
            app.EnvironmentTypeDropDown_3.Position = [134 464 91 22];
            app.EnvironmentTypeDropDown_3.Value = '1';

            % Create OutputPanel_3
            app.OutputPanel_3 = uipanel(app.InputsPanel_3);
            app.OutputPanel_3.ForegroundColor = [0 0 1];
            app.OutputPanel_3.TitlePosition = 'centertop';
            app.OutputPanel_3.Title = 'Output';
            app.OutputPanel_3.FontWeight = 'bold';
            app.OutputPanel_3.FontSize = 14;
            app.OutputPanel_3.Position = [22 10 248 169];

            % Create CoverageRadiusmEditField_3
            app.CoverageRadiusmEditField_3 = uieditfield(app.OutputPanel_3, 'numeric');
            app.CoverageRadiusmEditField_3.Editable = 'off';
            app.CoverageRadiusmEditField_3.Position = [178 17 50 22];

            % Create CoverageRadiusmEditField_3Label
            app.CoverageRadiusmEditField_3Label = uilabel(app.OutputPanel_3);
            app.CoverageRadiusmEditField_3Label.HorizontalAlignment = 'right';
            app.CoverageRadiusmEditField_3Label.Position = [6 17 121 22];
            app.CoverageRadiusmEditField_3Label.Text = 'Coverage Radius (m) ';

            % Create ElevationangleSlider_2Label
            app.ElevationangleSlider_2Label = uilabel(app.OutputPanel_3);
            app.ElevationangleSlider_2Label.HorizontalAlignment = 'right';
            app.ElevationangleSlider_2Label.Enable = 'off';
            app.ElevationangleSlider_2Label.Position = [79 113 88 22];
            app.ElevationangleSlider_2Label.Text = 'Elevation angle';

            % Create ElevationangleSlider_1
            app.ElevationangleSlider_1 = uislider(app.OutputPanel_3);
            app.ElevationangleSlider_1.Limits = [10 85];
            app.ElevationangleSlider_1.ValueChangedFcn = createCallbackFcn(app, @ElevationangleSlider_1ValueChanged, true);
            app.ElevationangleSlider_1.Enable = 'off';
            app.ElevationangleSlider_1.Position = [19 111 209 3];
            app.ElevationangleSlider_1.Value = 10;

            % Create PathLossdBEditField_3
            app.PathLossdBEditField_3 = uieditfield(app.OutputPanel_3, 'numeric');
            app.PathLossdBEditField_3.Editable = 'off';
            app.PathLossdBEditField_3.Position = [178 52 50 22];

            % Create PathLossdBEditFieldLabel
            app.PathLossdBEditFieldLabel = uilabel(app.OutputPanel_3);
            app.PathLossdBEditFieldLabel.HorizontalAlignment = 'right';
            app.PathLossdBEditFieldLabel.Position = [4 52 121 22];
            app.PathLossdBEditFieldLabel.Text = 'PathLoss (dB)           ';

            % Create RUNButton_3
            app.RUNButton_3 = uibutton(app.InputsPanel_3, 'push');
            app.RUNButton_3.ButtonPushedFcn = createCallbackFcn(app, @RUNButton_3Pushed, true);
            app.RUNButton_3.BackgroundColor = [1 0 0];
            app.RUNButton_3.FontColor = [0.902 0.902 0.902];
            app.RUNButton_3.Position = [235 448 60 35];
            app.RUNButton_3.Text = 'RUN';

            % Create InputsPanel_4
            app.InputsPanel_4 = uipanel(app.CalculatePathLossvsElevationangleTab);
            app.InputsPanel_4.ForegroundColor = [0 1 0];
            app.InputsPanel_4.TitlePosition = 'centertop';
            app.InputsPanel_4.Title = 'Inputs';
            app.InputsPanel_4.FontSize = 14;
            app.InputsPanel_4.Position = [333 74 296 517];

            % Create WithAntennalossButtonGroup_4
            app.WithAntennalossButtonGroup_4 = uibuttongroup(app.InputsPanel_4);
            app.WithAntennalossButtonGroup_4.Title = 'With Antenna loss';
            app.WithAntennalossButtonGroup_4.Position = [83 193 123 87];

            % Create YESButton_4
            app.YESButton_4 = uiradiobutton(app.WithAntennalossButtonGroup_4);
            app.YESButton_4.Text = 'YES';
            app.YESButton_4.Position = [11 41 58 22];
            app.YESButton_4.Value = true;

            % Create NOButton_4
            app.NOButton_4 = uiradiobutton(app.WithAntennalossButtonGroup_4);
            app.NOButton_4.Text = 'NO';
            app.NOButton_4.Position = [11 19 65 22];

            % Create MobilestationheightmEditField_4Label
            app.MobilestationheightmEditField_4Label = uilabel(app.InputsPanel_4);
            app.MobilestationheightmEditField_4Label.HorizontalAlignment = 'right';
            app.MobilestationheightmEditField_4Label.Position = [10 403 150 22];
            app.MobilestationheightmEditField_4Label.Text = 'Mobile station height (m)   :';

            % Create MobilestationheightmEditField_4
            app.MobilestationheightmEditField_4 = uieditfield(app.InputsPanel_4, 'numeric');
            app.MobilestationheightmEditField_4.Limits = [0 2];
            app.MobilestationheightmEditField_4.HorizontalAlignment = 'center';
            app.MobilestationheightmEditField_4.Position = [175 403 46 22];
            app.MobilestationheightmEditField_4.Value = 2;

            % Create UAVHeightmLabel
            app.UAVHeightmLabel = uilabel(app.InputsPanel_4);
            app.UAVHeightmLabel.HorizontalAlignment = 'right';
            app.UAVHeightmLabel.Position = [9 372 152 22];
            app.UAVHeightmLabel.Text = 'UAV Height (m)                  :';

            % Create UAVHeightmEditField_4
            app.UAVHeightmEditField_4 = uieditfield(app.InputsPanel_4, 'numeric');
            app.UAVHeightmEditField_4.Limits = [10 Inf];
            app.UAVHeightmEditField_4.Position = [175 372 46 22];
            app.UAVHeightmEditField_4.Value = 200;

            % Create EnvironmentTypeLabel_3
            app.EnvironmentTypeLabel_3 = uilabel(app.InputsPanel_4);
            app.EnvironmentTypeLabel_3.HorizontalAlignment = 'right';
            app.EnvironmentTypeLabel_3.Position = [8 464 119 22];
            app.EnvironmentTypeLabel_3.Text = 'Environment  Type  : ';

            % Create EnvironmentTypeDropDown_4
            app.EnvironmentTypeDropDown_4 = uidropdown(app.InputsPanel_4);
            app.EnvironmentTypeDropDown_4.Items = {'Dense Urban', 'Urban', 'Sub Urban'};
            app.EnvironmentTypeDropDown_4.ItemsData = {'1', '2 ', '3'};
            app.EnvironmentTypeDropDown_4.Position = [126 464 91 22];
            app.EnvironmentTypeDropDown_4.Value = '1';

            % Create FrequencyGHzEditField_4Label
            app.FrequencyGHzEditField_4Label = uilabel(app.InputsPanel_4);
            app.FrequencyGHzEditField_4Label.HorizontalAlignment = 'right';
            app.FrequencyGHzEditField_4Label.Position = [10 432 148 22];
            app.FrequencyGHzEditField_4Label.Text = 'Frequency (GHz)              :';

            % Create FrequencyGHzEditField_4
            app.FrequencyGHzEditField_4 = uieditfield(app.InputsPanel_4, 'numeric');
            app.FrequencyGHzEditField_4.Limits = [1 10];
            app.FrequencyGHzEditField_4.Position = [173 432 48 22];
            app.FrequencyGHzEditField_4.Value = 5.8;

            % Create OutputPanel_4
            app.OutputPanel_4 = uipanel(app.InputsPanel_4);
            app.OutputPanel_4.ForegroundColor = [0 0 1];
            app.OutputPanel_4.TitlePosition = 'centertop';
            app.OutputPanel_4.Title = 'Output';
            app.OutputPanel_4.FontWeight = 'bold';
            app.OutputPanel_4.FontSize = 14;
            app.OutputPanel_4.Position = [15 4 260 169];

            % Create CoverageRadiusmEditField_4
            app.CoverageRadiusmEditField_4 = uieditfield(app.OutputPanel_4, 'numeric');
            app.CoverageRadiusmEditField_4.Editable = 'off';
            app.CoverageRadiusmEditField_4.Position = [201 17 50 22];

            % Create CoverageRadiusmEditField_4Label
            app.CoverageRadiusmEditField_4Label = uilabel(app.OutputPanel_4);
            app.CoverageRadiusmEditField_4Label.HorizontalAlignment = 'right';
            app.CoverageRadiusmEditField_4Label.Position = [9 17 121 22];
            app.CoverageRadiusmEditField_4Label.Text = 'Coverage Radius (m) ';

            % Create PathLossdBEditField_4
            app.PathLossdBEditField_4 = uieditfield(app.OutputPanel_4, 'numeric');
            app.PathLossdBEditField_4.Editable = 'off';
            app.PathLossdBEditField_4.Position = [201 52 48 22];

            % Create PathLossdBEditField_2Label
            app.PathLossdBEditField_2Label = uilabel(app.OutputPanel_4);
            app.PathLossdBEditField_2Label.HorizontalAlignment = 'right';
            app.PathLossdBEditField_2Label.Position = [6 52 121 22];
            app.PathLossdBEditField_2Label.Text = 'PathLoss (dB)           ';

            % Create ElevationangleSliderLabel
            app.ElevationangleSliderLabel = uilabel(app.OutputPanel_4);
            app.ElevationangleSliderLabel.HorizontalAlignment = 'right';
            app.ElevationangleSliderLabel.Enable = 'off';
            app.ElevationangleSliderLabel.Position = [82 112 88 22];
            app.ElevationangleSliderLabel.Text = 'Elevation angle';

            % Create ElevationangleSlider_2
            app.ElevationangleSlider_2 = uislider(app.OutputPanel_4);
            app.ElevationangleSlider_2.Limits = [10 85];
            app.ElevationangleSlider_2.ValueChangedFcn = createCallbackFcn(app, @ElevationangleSlider_2ValueChanged, true);
            app.ElevationangleSlider_2.Enable = 'off';
            app.ElevationangleSlider_2.Position = [23 110 218 3];
            app.ElevationangleSlider_2.Value = 10;

            % Create RUNButton_4
            app.RUNButton_4 = uibutton(app.InputsPanel_4, 'push');
            app.RUNButton_4.ButtonPushedFcn = createCallbackFcn(app, @RUNButton_4Pushed, true);
            app.RUNButton_4.BackgroundColor = [1 0 0];
            app.RUNButton_4.FontColor = [0.902 0.902 0.902];
            app.RUNButton_4.Position = [227 454 59 35];
            app.RUNButton_4.Text = 'RUN';

            % Create MODEL1Label_3
            app.MODEL1Label_3 = uilabel(app.CalculatePathLossvsElevationangleTab);
            app.MODEL1Label_3.BackgroundColor = [1 1 0];
            app.MODEL1Label_3.HorizontalAlignment = 'center';
            app.MODEL1Label_3.FontWeight = 'bold';
            app.MODEL1Label_3.Position = [55 600 202 22];
            app.MODEL1Label_3.Text = 'MODEL 1';

            % Create MODEL2Label_4
            app.MODEL2Label_4 = uilabel(app.CalculatePathLossvsElevationangleTab);
            app.MODEL2Label_4.BackgroundColor = [1 1 0];
            app.MODEL2Label_4.HorizontalAlignment = 'center';
            app.MODEL2Label_4.FontWeight = 'bold';
            app.MODEL2Label_4.Position = [371 600 202 22];
            app.MODEL2Label_4.Text = 'MODEL 2';

            % Create AntennaParametersPanel_2
            app.AntennaParametersPanel_2 = uipanel(app.CalculatePathLossvsElevationangleTab);
            app.AntennaParametersPanel_2.ForegroundColor = [0.4902 0.1804 0.5608];
            app.AntennaParametersPanel_2.Title = 'Antenna Parameters';
            app.AntennaParametersPanel_2.BackgroundColor = [1 1 1];
            app.AntennaParametersPanel_2.FontWeight = 'bold';
            app.AntennaParametersPanel_2.FontSize = 14;
            app.AntennaParametersPanel_2.Position = [638 480 203 111];

            % Create AntennagainGodBiLabel
            app.AntennagainGodBiLabel = uilabel(app.AntennaParametersPanel_2);
            app.AntennagainGodBiLabel.HorizontalAlignment = 'center';
            app.AntennagainGodBiLabel.Position = [10 42 134 26];
            app.AntennagainGodBiLabel.Text = 'Antenna gain Go (dBi) : ';

            % Create AntennagainGodBiEditField_2
            app.AntennagainGodBiEditField_2 = uieditfield(app.AntennaParametersPanel_2, 'numeric');
            app.AntennagainGodBiEditField_2.Limits = [0 Inf];
            app.AntennagainGodBiEditField_2.Position = [145 46 36 22];
            app.AntennagainGodBiEditField_2.Value = 2.15;

            % Create Antenna3dBBWdBiLabel
            app.Antenna3dBBWdBiLabel = uilabel(app.AntennaParametersPanel_2);
            app.Antenna3dBBWdBiLabel.HorizontalAlignment = 'right';
            app.Antenna3dBBWdBiLabel.Position = [2 12 143 22];
            app.Antenna3dBBWdBiLabel.Text = 'Antenna 3dB  BW  (dBi) : ';

            % Create Antenna3dBBWdBiEditField_2
            app.Antenna3dBBWdBiEditField_2 = uieditfield(app.AntennaParametersPanel_2, 'numeric');
            app.Antenna3dBBWdBiEditField_2.Limits = [0 90];
            app.Antenna3dBBWdBiEditField_2.Position = [159 14 26 22];
            app.Antenna3dBBWdBiEditField_2.Value = 76;

            % Create UIAxes_2
            app.UIAxes_2 = uiaxes(app.CalculatePathLossvsElevationangleTab);
            title(app.UIAxes_2, 'Title')
            xlabel(app.UIAxes_2, 'X')
            ylabel(app.UIAxes_2, 'Y')
            app.UIAxes_2.PlotBoxAspectRatio = [1 0.708474576271186 0.708474576271186];
            app.UIAxes_2.Position = [853 346 332 248];

            % Create ClearButton_2
            app.ClearButton_2 = uibutton(app.CalculatePathLossvsElevationangleTab, 'push');
            app.ClearButton_2.ButtonPushedFcn = createCallbackFcn(app, @ClearButton_2Pushed, true);
            app.ClearButton_2.BackgroundColor = [1 1 0];
            app.ClearButton_2.FontColor = [0.4902 0.1804 0.5608];
            app.ClearButton_2.Position = [970 600 86 29];
            app.ClearButton_2.Text = 'Clear';

            % Create Label
            app.Label = uilabel(app.CalculatePathLossvsElevationangleTab);
            app.Label.HorizontalAlignment = 'center';
            app.Label.FontSize = 14;
            app.Label.FontColor = [1 0 0];
            app.Label.Position = [167 367 272 22];
            app.Label.Text = '';

            % Create UIAxes2
            app.UIAxes2 = uiaxes(app.CalculatePathLossvsElevationangleTab);
            title(app.UIAxes2, 'Title')
            xlabel(app.UIAxes2, 'X')
            ylabel(app.UIAxes2, 'Y')
            app.UIAxes2.PlotBoxAspectRatio = [1 0.601823708206687 0.601823708206687];
            app.UIAxes2.Box = 'on';
            app.UIAxes2.XGrid = 'on';
            app.UIAxes2.YGrid = 'on';
            app.UIAxes2.Position = [696 1 489 286];

            % Create Label_4
            app.Label_4 = uilabel(app.CalculatePathLossvsElevationangleTab);
            app.Label_4.FontColor = [0 0 1];
            app.Label_4.Position = [1018 234 116 22];
            app.Label_4.Text = '';

            % Create Label_3
            app.Label_3 = uilabel(app.CalculatePathLossvsElevationangleTab);
            app.Label_3.Position = [1018 234 115 22];
            app.Label_3.Text = '';

            % Create Label_6
            app.Label_6 = uilabel(app.CalculatePathLossvsElevationangleTab);
            app.Label_6.FontColor = [0 0 1];
            app.Label_6.Position = [1100 547 74 22];
            app.Label_6.Text = '';

            % Create Label_5
            app.Label_5 = uilabel(app.CalculatePathLossvsElevationangleTab);
            app.Label_5.Position = [1100 517 74 22];
            app.Label_5.Text = '';
        end
    end

    methods (Access = public)

        % Construct app
        function app = A2Gmod

            % Create and configure components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.A2G_PathLoss)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.A2G_PathLoss)
        end
    end
end

