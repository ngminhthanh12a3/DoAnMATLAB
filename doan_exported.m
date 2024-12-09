classdef doan_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                     matlab.ui.Figure
        TabGroup                     matlab.ui.container.TabGroup
        NghimTab                     matlab.ui.container.Tab
        SlnlpEditField               matlab.ui.control.EditField
        SlnlpEditFieldLabel          matlab.ui.control.Label
        KtqunghimEditField           matlab.ui.control.EditField
        KtqunghimEditFieldLabel      matlab.ui.control.Label
        ChnphngphptmButtonGroup      matlab.ui.container.ButtonGroup
        NewtontiptuynButton          matlab.ui.control.RadioButton
        LpButton                     matlab.ui.control.RadioButton
        ChiaiButton                  matlab.ui.control.RadioButton
        NhpsaischophpEditField       matlab.ui.control.EditField
        NhpsaischophpEditFieldLabel  matlab.ui.control.Label
        NhpkhongphnlynghimEditField  matlab.ui.control.EditField
        NhpkhongphnlynghimEditFieldLabel  matlab.ui.control.Label
        NhpphngtrnhEditField         matlab.ui.control.EditField
        NhpphngtrnhEditFieldLabel    matlab.ui.control.Label
        UIAxes                       matlab.ui.control.UIAxes
        NisuyTab                     matlab.ui.container.Tab
        HiquyTab                     matlab.ui.container.Tab
        ohmTab                       matlab.ui.container.Tab
        TchphnTab                    matlab.ui.container.Tab
        GiithiunhmTab                matlab.ui.container.Tab
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 715 480];
            app.UIFigure.Name = 'MATLAB App';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.UIFigure);
            app.TabGroup.Position = [1 1 715 480];

            % Create NghimTab
            app.NghimTab = uitab(app.TabGroup);
            app.NghimTab.Title = 'Nghiệm';

            % Create UIAxes
            app.UIAxes = uiaxes(app.NghimTab);
            title(app.UIAxes, 'Title')
            xlabel(app.UIAxes, 'X')
            ylabel(app.UIAxes, 'Y')
            zlabel(app.UIAxes, 'Z')
            app.UIAxes.Position = [316 175 357 219];

            % Create NhpphngtrnhEditFieldLabel
            app.NhpphngtrnhEditFieldLabel = uilabel(app.NghimTab);
            app.NhpphngtrnhEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpphngtrnhEditFieldLabel.Position = [77 372 107 22];
            app.NhpphngtrnhEditFieldLabel.Text = 'Nhập phương trình';

            % Create NhpphngtrnhEditField
            app.NhpphngtrnhEditField = uieditfield(app.NghimTab, 'text');
            app.NhpphngtrnhEditField.Position = [199 372 100 22];

            % Create NhpkhongphnlynghimEditFieldLabel
            app.NhpkhongphnlynghimEditFieldLabel = uilabel(app.NghimTab);
            app.NhpkhongphnlynghimEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpkhongphnlynghimEditFieldLabel.Position = [22 340 162 22];
            app.NhpkhongphnlynghimEditFieldLabel.Text = 'Nhập khoảng phân ly nghiệm';

            % Create NhpkhongphnlynghimEditField
            app.NhpkhongphnlynghimEditField = uieditfield(app.NghimTab, 'text');
            app.NhpkhongphnlynghimEditField.Position = [199 340 100 22];

            % Create NhpsaischophpEditFieldLabel
            app.NhpsaischophpEditFieldLabel = uilabel(app.NghimTab);
            app.NhpsaischophpEditFieldLabel.HorizontalAlignment = 'right';
            app.NhpsaischophpEditFieldLabel.Position = [62 307 122 22];
            app.NhpsaischophpEditFieldLabel.Text = 'Nhập sai số cho phép';

            % Create NhpsaischophpEditField
            app.NhpsaischophpEditField = uieditfield(app.NghimTab, 'text');
            app.NhpsaischophpEditField.Position = [199 307 100 22];

            % Create ChnphngphptmButtonGroup
            app.ChnphngphptmButtonGroup = uibuttongroup(app.NghimTab);
            app.ChnphngphptmButtonGroup.Title = 'Chọn phương pháp tìm';
            app.ChnphngphptmButtonGroup.Position = [135 175 164 106];

            % Create ChiaiButton
            app.ChiaiButton = uiradiobutton(app.ChnphngphptmButtonGroup);
            app.ChiaiButton.Text = 'Chia đôi';
            app.ChiaiButton.Position = [11 60 66 22];
            app.ChiaiButton.Value = true;

            % Create LpButton
            app.LpButton = uiradiobutton(app.ChnphngphptmButtonGroup);
            app.LpButton.Text = 'Lặp';
            app.LpButton.Position = [11 38 65 22];

            % Create NewtontiptuynButton
            app.NewtontiptuynButton = uiradiobutton(app.ChnphngphptmButtonGroup);
            app.NewtontiptuynButton.Text = 'Newton (tiếp tuyến)';
            app.NewtontiptuynButton.Position = [11 16 126 22];

            % Create KtqunghimEditFieldLabel
            app.KtqunghimEditFieldLabel = uilabel(app.NghimTab);
            app.KtqunghimEditFieldLabel.HorizontalAlignment = 'right';
            app.KtqunghimEditFieldLabel.Position = [127 105 90 22];
            app.KtqunghimEditFieldLabel.Text = 'Kết quả nghiệm';

            % Create KtqunghimEditField
            app.KtqunghimEditField = uieditfield(app.NghimTab, 'text');
            app.KtqunghimEditField.Editable = 'off';
            app.KtqunghimEditField.Position = [232 105 100 22];

            % Create SlnlpEditFieldLabel
            app.SlnlpEditFieldLabel = uilabel(app.NghimTab);
            app.SlnlpEditFieldLabel.HorizontalAlignment = 'right';
            app.SlnlpEditFieldLabel.Position = [414 105 59 22];
            app.SlnlpEditFieldLabel.Text = 'Số lần lặp';

            % Create SlnlpEditField
            app.SlnlpEditField = uieditfield(app.NghimTab, 'text');
            app.SlnlpEditField.Editable = 'off';
            app.SlnlpEditField.Position = [488 105 100 22];

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