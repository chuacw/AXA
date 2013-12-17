<%@ Page language="c#" Debug="true" Codebehind="ViewSoftwareList.pas" AutoEventWireup="false" Inherits="ViewSoftwareList.PageViewSoftwareList" %>
<%@ Register TagPrefix="ajax" Namespace="MagicAjax.UI.Controls" Assembly="MagicAjax" %>
<%@ Register TagPrefix="uc1" TagName="NavigationalPanel" Src="NavigationalPanel.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <title></title>
  </head>

  <body>
     <form runat="server">
        <ajax:AjaxPanel id="AjaxPanel1" runat="server" width="745px">
      <ASP:Literal id="litDataGridInfo" runat="server"></ASP:Literal><BR>
        <ASP:DataGrid id="DataGrid1" runat="server" datasource="<%# dvSoftwareSummary %>" allowpaging="True" autogeneratecolumns="False" bordercolor="#999999" borderstyle="None" borderwidth="1px" backcolor="White" cellpadding="3" gridlines="Vertical" allowsorting="True">
          <FooterStyle forecolor="Black" backcolor="#CCCCCC"></FooterStyle>
          <SelectedItemStyle font-bold="True" forecolor="White" backcolor="#008A8C"></SelectedItemStyle>
          <AlternatingItemStyle backcolor="Gainsboro"></AlternatingItemStyle>
          <ItemStyle forecolor="Black" backcolor="#EEEEEE"></ItemStyle>
          <HeaderStyle font-bold="True" forecolor="White" backcolor="#000084"></HeaderStyle>
          <Columns>
            <ASP:BoundColumn datafield="DisplayName" sortexpression="DisplayName" headertext="Software"></ASP:BoundColumn>
            <ASP:BoundColumn datafield="NumMachines" sortexpression="NumMachines" headertext="Number Detected"></ASP:BoundColumn>
            <ASP:BoundColumn datafield="FirstDiscDate" sortexpression="FirstDiscDate" headertext="First Detected Date"></ASP:BoundColumn>
            <ASP:BoundColumn datafield="LocationName" sortexpression="LocationName" headertext="Location"></ASP:BoundColumn>
          </Columns>
          <PagerStyle nextpagetext="Next Page" prevpagetext="Prev Page" horizontalalign="Left" forecolor="Black" position="TopAndBottom" backcolor="#999999" mode="NumericPages"></PagerStyle></ASP:DataGrid>
      </ajax:AjaxPanel>
      <uc1:NavigationalPanel id="UserControl1" runat="server"></uc1:NavigationalPanel>
     </form>
  </body>
</html>
