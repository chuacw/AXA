<%@ Page language="c#" Debug="true" Codebehind="UserAdmin.pas" AutoEventWireup="false" Inherits="UserAdmin.wfAdminPage" %>
<%@ Register TagPrefix="uc1" TagName="NavigationalPanel" Src="NavigationalPanel.ascx" %>
<%@ Register TagPrefix="cc1" Namespace="System.Web.UI.WebControls.DomValidators" Assembly="System.Web.UI.WebControls.DomValidators" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <title></title>
  </head>

  <body>
     <form runat="server" name="text_form">
      <p>
      <ASP:DataGrid id="DataGrid1" runat="server" width="545px" bordercolor="#999999" borderstyle="None" borderwidth="1px" backcolor="White" cellpadding="3" gridlines="Vertical" datasource="<%# DataView1 %>" autogeneratecolumns="False">
          <FooterStyle forecolor="Black" backcolor="#CCCCCC"></FooterStyle>
          <SelectedItemStyle font-bold="True" forecolor="White" backcolor="#008A8C"></SelectedItemStyle>
          <AlternatingItemStyle backcolor="Gainsboro"></AlternatingItemStyle>
          <ItemStyle forecolor="Black" backcolor="#EEEEEE"></ItemStyle>
          <HeaderStyle font-bold="True" forecolor="White" backcolor="#000084"></HeaderStyle>
          <Columns>
            <ASP:BoundColumn datafield="UserName" sortexpression="UserName" readonly="True" headertext="UserName"></ASP:BoundColumn>
            <ASP:TemplateColumn headertext="Password">
              <ItemTemplate>
              <asp:Label id="lblPassword" runat="server" width="185px" text='<%# DataBinder.Eval(Container, "DataItem.Password") %>'></asp:Label>
              </ItemTemplate>
              <EditItemTemplate>
              <asp:TextBox id="tbEditPassword" runat="server" width="193px" text='<%# DataBinder.Eval(Container, "DataItem.Password") %>'></asp:TextBox>
              </EditItemTemplate>
            </ASP:TemplateColumn>
            <ASP:TemplateColumn headertext="Filter Criteria Name">
              <ItemTemplate>
              <asp:Label id="lblFilterCriteriaName1" runat="server" width="241px" text='<%# DataBinder.Eval(Container, "DataItem.FilterCriteriaName") %>'></asp:Label>
              <ASP:ListBox id="lbFilterCriteriaName1" runat="server" width="249px" rows="1" datasource="<%# GetFilterList() %>" datavaluefield="Value" datatextfield="Name">
                <ASP:ListItem></ASP:ListItem>
                <ASP:ListItem value="Domain">Domain</ASP:ListItem>
                <ASP:ListItem value="IPAddress">IP Address</ASP:ListItem></ASP:ListBox>
              </ItemTemplate>
              <EditItemTemplate>

              <asp:Label id="lblFilterCriteriaName2" runat="server" width="241px" text='<%# DataBinder.Eval(Container, "DataItem.FilterCriteriaName") %>'></asp:Label>
              <ASP:ListBox id="lbFilterCriteriaName2" runat="server" width="249px" rows="1" datasource="<%# GetFilterList() %>" datatextfield="Name" datavaluefield="Value">
                <ASP:ListItem></ASP:ListItem>
                <ASP:ListItem value="Domain">Domain</ASP:ListItem>
                <ASP:ListItem value="IPAddress">IP Address</ASP:ListItem></ASP:ListBox>
                <cc1:RequiredDomValidator id="RequiredDomValidator1" runat="server" errormessage="You need to select a filter criteria." controltovalidate="lbFilterCriteriaName2" display="None"></cc1:RequiredDomValidator>
              </EditItemTemplate>
            </ASP:TemplateColumn>
            <ASP:TemplateColumn headertext="Filter Criteria Value">
              <ItemTemplate>
              <asp:Label id="lblFilterCriteriaValue" runat="server" text='<%# DataBinder.Eval(Container, "DataItem.FilterCriteriaValue") %>' width="239px"></asp:Label>
              </ItemTemplate>
              <EditItemTemplate>
              <asp:TextBox id="tbFilterCriteriaValue2" runat="server" text='<%# DataBinder.Eval(Container, "DataItem.FilterCriteriaValue") %>' width="239px"></asp:TextBox>
                <cc1:RequiredDomValidator id="RequiredDomValidator2" runat="server" errormessage="Filter Criteria Value is not set." controltovalidate="tbFilterCriteriaValue2" display="None"></cc1:RequiredDomValidator>
              </EditItemTemplate>
            </ASP:TemplateColumn>
            <ASP:EditCommandColumn buttontype="PushButton" updatetext="Save" canceltext="Cancel" edittext="Edit"></ASP:EditCommandColumn>
          </Columns>
          <PagerStyle horizontalalign="Center" forecolor="Black" backcolor="#999999" mode="NumericPages"></PagerStyle>
      </ASP:DataGrid><br>
        <cc1:DomValidationSummary id="DomValidationSummary1" runat="server" width="801px" showsummary="True"></cc1:DomValidationSummary>
      </p>
      <uc1:NavigationalPanel id="UserControl1" runat="server"></uc1:NavigationalPanel>
     </form>
  </body>
</html>
