﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <telerik:RadStyleSheetManager ID="RadStyleSheetManager1" runat="server" />
</head>
<body>
    <form id="form1" runat="server">
        <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
            <Scripts>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js" />
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js" />
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js" />
            </Scripts>
        </telerik:RadScriptManager>
        <script type="text/javascript">
            //Put your JavaScript code here.
        </script>
        <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
        </telerik:RadAjaxManager>
        <div>
            <telerik:RadGrid ID="RadGrid1" runat="server" AutoGenerateEditColumn="True" CellSpacing="0" GridLines="None" 
                OnUpdateCommand="RadGrid1_UpdateCommand"
                OnNeedDataSource="RadGrid1_NeedDataSource">
                <ExportSettings>
                    <Pdf PageWidth="" />
                </ExportSettings>

                <MasterTableView AutoGenerateColumns="false">
                    <EditFormSettings>
                        <PopUpSettings Modal="true" />
                    </EditFormSettings>
                    <CommandItemSettings ExportToPdfText="Export to PDF" />
                    <RowIndicatorColumn FilterControlAltText="Filter RowIndicator column" Visible="True">
                        <HeaderStyle Width="20px" />
                    </RowIndicatorColumn>
                    <ExpandCollapseColumn FilterControlAltText="Filter ExpandColumn column" Visible="True">
                        <HeaderStyle Width="20px" />
                    </ExpandCollapseColumn>
                    <Columns>
                        <telerik:GridBoundColumn DataField="ID" HeaderText="ID">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="Description" HeaderText="Description">
                        </telerik:GridBoundColumn>
                        <telerik:GridTemplateColumn FilterControlAltText="Filter TemplateColumn column" UniqueName="AsyncUpload" HeaderText="Async Upload">
                            <EditItemTemplate>
                                <telerik:RadAsyncUpload ID="RadAsyncUpload1" runat="server"></telerik:RadAsyncUpload>
                            </EditItemTemplate>
                            <ItemTemplate>
                                Async Upload
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                    </Columns>
                    <EditFormSettings>
                        <EditColumn FilterControlAltText="Filter EditCommandColumn column">
                        </EditColumn>
                    </EditFormSettings>
                    <PagerStyle PageSizeControlType="RadComboBox" />
                </MasterTableView>

                <PagerStyle PageSizeControlType="RadComboBox"></PagerStyle>

                <FilterMenu EnableImageSprites="False"></FilterMenu>
            </telerik:RadGrid>

        </div>
    </form>
</body>
</html>
