classdef doan_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure       matlab.ui.Figure
        TabGroup       matlab.ui.container.TabGroup
        NghimTab       matlab.ui.container.Tab
        NisuyTab       matlab.ui.container.Tab
        HiquyTab       matlab.ui.container.Tab
        ohmTab         matlab.ui.container.Tab
        TchphnTab      matlab.ui.container.Tab
        GiithiunhmTab  matlab.ui.container.Tab
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 640 480];
            app.UIFigure.Name = 'MATLAB App';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.UIFigure);
            app.TabGroup.Position = [1 1 640 480];

            % Create NghimTab
            app.NghimTab = uitab(app.TabGroup);
            app.NghimTab.Title = 'Nghiệm';

            % Create NisuyTab
            app.NisuyTab = uitab(app.TabGroup);
            app.NisuyTab.Title = 'Nội suy';

            % Create HiquyTab
            app.HiquyTab = uitab(app.TabGroup);
            app.HiquyTab.Title = 'Hồi quy';

            % Create ohmTab
            app.ohmTab = uitab(app.TabGroup);
            app.ohmTab.Title = 'Đạo hàm';

            % Create TchphnTab
            app.TchphnTab = uitab(app.TabGroup);
            app.TchphnTab.Title = 'Tích phân';

            % Create GiithiunhmTab
            app.GiithiunhmTab = uitab(app.TabGroup);
            app.GiithiunhmTab.Title = 'Giới thiệu nhóm';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = doan_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end