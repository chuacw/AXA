<%@ Page language="c#" Debug="true" Codebehind="ViewData.pas" AutoEventWireup="false" Inherits="ViewData.TWebForm1" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <title></title>
  </head>

  <body>
     <form runat="server">
      <ASP:DataGrid id="DataGrid1" runat="server" bordercolor="#999999" borderstyle="None" borderwidth="1px" backcolor="White" cellpadding="3" gridlines="Vertical" allowpaging="True" allowsorting="True" showfooter="True"
                    datasource="<%# DataView1 %>" autogeneratecolumns="False" datakeyfield="MachID">
        <FooterStyle forecolor="Black" backcolor="#CCCCCC"></FooterStyle>
        <SelectedItemStyle font-bold="True" forecolor="White" backcolor="#008A8C"></SelectedItemStyle>
        <AlternatingItemStyle backcolor="Gainsboro"></AlternatingItemStyle>
        <ItemStyle forecolor="Black" backcolor="#EEEEEE"></ItemStyle>
        <HeaderStyle font-bold="True" forecolor="White" backcolor="#000084"></HeaderStyle>
        <Columns>
          <ASP:BoundColumn datafield="MachID" sortexpression="MachID" readonly="True" headertext="MachID"></ASP:BoundColumn>
          <ASP:BoundColumn datafield="Domain" sortexpression="Domain" readonly="True" headertext="Domain"></ASP:BoundColumn>
          <ASP:BoundColumn datafield="Workgroup" sortexpression="Workgroup" readonly="True" headertext="Workgroup"></ASP:BoundColumn>
          <ASP:BoundColumn datafield="FullName" sortexpression="FullName" readonly="True" headertext="User Display Name"></ASP:BoundColumn>
          <ASP:BoundColumn datafield="CommonUser" sortexpression="CommonUser" headertext="CommonUser"></ASP:BoundColumn>
          <ASP:TemplateColumn headertext="Location">
            <ItemTemplate>
              <ASP:Label id="lbLocation" runat="server" text='<%# DataBinder.Eval(Container, "DataItem.Location", "{0}") %>' visible="True" width="49px"></ASP:Label>
              <ASP:DropDownList id="ddlLocation" runat="server" width="118px" enabled="False" visible="False"></ASP:DropDownList>
            </ItemTemplate>
            <EditItemTemplate>
              <ASP:Label id="lbLocation" runat="server" text='<%# DataBinder.Eval(Container, "DataItem.Location", "{0}") %>' width="49px"></ASP:Label>
              <ASP:DropDownList id="ddlEditLocation" runat="server" width="118px" enabled="False" visible="False"></ASP:DropDownList>
            </EditItemTemplate>
          </ASP:TemplateColumn>
          <ASP:BoundColumn datafield="Server" sortexpression="Server" readonly="True" headertext="Server"></ASP:BoundColumn>
          <ASP:BoundColumn datafield="Role" sortexpression="Role" readonly="True" headertext="Role"></ASP:BoundColumn>
          <ASP:BoundColumn datafield="OpSys" sortexpression="OpSys" readonly="True" headertext="Operating System"></ASP:BoundColumn>
          <ASP:BoundColumn datafield="OpSysVer" sortexpression="OpSysVer" readonly="True" headertext="OS Version"></ASP:BoundColumn>
          <ASP:BoundColumn datafield="OpSysPatch" sortexpression="OpSysPatch" readonly="True" headertext="OS Patch"></ASP:BoundColumn>
          <ASP:TemplateColumn sortexpression="Comment" headertext="Comment">
            <ItemTemplate>
              <asp:Label id="lblComments" runat="server" text='<%# DataBinder.Eval(Container, "DataItem.Comment") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
              <asp:TextBox id="tbComments" runat="server" text='<%# DataBinder.Eval(Container, "DataItem.Comment") %>' width="201px" textmode="MultiLine" rows="5"></asp:TextBox>
            </EditItemTemplate>
          </ASP:TemplateColumn>
          <ASP:TemplateColumn sortexpression="CustomField1" headertext="CustomField1">
            <ItemTemplate>
              <asp:Label id="lbCustomField1" runat="server" text='<%# DataBinder.Eval(Container, "DataItem.CustomField1") %>' width="225px"></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
              <asp:TextBox id="tbCustomField1" runat="server" text='<%# DataBinder.Eval(Container, "DataItem.CustomField1") %>' width="233px"></asp:TextBox>
            </EditItemTemplate>
          </ASP:TemplateColumn>
          <ASP:TemplateColumn sortexpression="CustomField2" headertext="CustomField2">
            <ItemTemplate>
              <asp:Label id="lblCustomField2" runat="server" text='<%# DataBinder.Eval(Container, "DataItem.CustomField2") %>' width="217px"></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
              <asp:TextBox id="tbCustomField2" runat="server" text='<%# DataBinder.Eval(Container, "DataItem.CustomField2") %>' width="225px"></asp:TextBox>
            </EditItemTemplate>
          </ASP:TemplateColumn>
          <ASP:TemplateColumn sortexpression="CustomField3" headertext="CustomField3">
            <ItemTemplate>
              <asp:Label id="lblCustomField3" runat="server" text='<%# DataBinder.Eval(Container, "DataItem.CustomField3") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
              <asp:TextBox id="tbCustomField3" runat="server" text='<%# DataBinder.Eval(Container, "DataItem.CustomField3") %>'></asp:TextBox>
            </EditItemTemplate>
          </ASP:TemplateColumn>
          <ASP:TemplateColumn sortexpression="CustomField4" headertext="CustomField4">
            <ItemTemplate>
              <asp:Label id="lblCustomField4" runat="server" text='<%# DataBinder.Eval(Container, "DataItem.CustomField4") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
              <asp:TextBox id="tbCustomField4" runat="server" text='<%# DataBinder.Eval(Container, "DataItem.CustomField4") %>'></asp:TextBox>
            </EditItemTemplate>
          </ASP:TemplateColumn>
          <ASP:TemplateColumn sortexpression="CustomField5" headertext="CustomField5">
            <ItemTemplate>
              <asp:Label id="lblCustomField5" runat="server" text='<%# DataBinder.Eval(Container, "DataItem.CustomField5") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
              <asp:TextBox id="tbCustomField5" runat="server" text='<%# DataBinder.Eval(Container, "DataItem.CustomField5") %>'></asp:TextBox>
            </EditItemTemplate>
          </ASP:TemplateColumn>
          <ASP:TemplateColumn sortexpression="CustomField6" headertext="CustomField6">
            <ItemTemplate>
              <asp:Label id="lblCustomField6" runat="server" text='<%# DataBinder.Eval(Container, "DataItem.CustomField6") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
              <asp:TextBox id="tbCustomField6" runat="server" text='<%# DataBinder.Eval(Container, "DataItem.CustomField6") %>'></asp:TextBox>
            </EditItemTemplate>
          </ASP:TemplateColumn>
          <ASP:TemplateColumn sortexpression="CustomField7" headertext="CustomField7">
            <ItemTemplate>
              <asp:Label id="lblCustomField7" runat="server" text='<%# DataBinder.Eval(Container, "DataItem.CustomField7") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
              <asp:TextBox id="tbCustomField7" runat="server" text='<%# DataBinder.Eval(Container, "DataItem.CustomField7") %>'></asp:TextBox>
            </EditItemTemplate>
          </ASP:TemplateColumn>
          <ASP:TemplateColumn sortexpression="CustomField8" headertext="CustomField8">
            <ItemTemplate>
              <asp:Label id="lblCustomField8" runat="server" text='<%# DataBinder.Eval(Container, "DataItem.CustomField8") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
              <asp:TextBox id="tbCustomField8" runat="server" text='<%# DataBinder.Eval(Container, "DataItem.CustomField8") %>'></asp:TextBox>
            </EditItemTemplate>
          </ASP:TemplateColumn>
          <ASP:TemplateColumn sortexpression="CustomField9" headertext="CustomField9">
            <ItemTemplate>
              <asp:Label id="lblCustomField9" runat="server" text='<%# DataBinder.Eval(Container, "DataItem.CustomField9") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
              <asp:TextBox id="tbCustomField9" runat="server" text='<%# DataBinder.Eval(Container, "DataItem.CustomField9") %>'></asp:TextBox>
            </EditItemTemplate>
          </ASP:TemplateColumn>
          <ASP:TemplateColumn sortexpression="CustomField10" headertext="CustomField10">
            <ItemTemplate>
              <asp:Label id="lblCustomField10" runat="server" text='<%# DataBinder.Eval(Container, "DataItem.CustomField10") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
              <asp:TextBox id="tbCustomField10" runat="server" text='<%# DataBinder.Eval(Container, "DataItem.CustomField10") %>'></asp:TextBox>
            </EditItemTemplate>
          </ASP:TemplateColumn>
          <ASP:EditCommandColumn buttontype="LinkButton" updatetext="Save" canceltext="Cancel" edittext="Edit"></ASP:EditCommandColumn>
        </Columns>
        <PagerStyle nextpagetext="Next Page" prevpagetext="Prev Page" horizontalalign="Left" forecolor="Black" position="TopAndBottom" backcolor="#999999" mode="NumericPages"></PagerStyle>
      </ASP:DataGrid>
     </form>
  </body>
</html>
