<%@ Page language="c#" Debug="true" Codebehind="Login.pas" AutoEventWireup="false" Inherits="Login.TWebForm1" %>
<%@ Register TagPrefix="ajax" Namespace="MagicAjax.UI.Controls" Assembly="MagicAjax" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <title></title>
  </head>

  <body>
     <form runat="server">
      <ajax:AjaxPanel id="AjaxPanel1" style="POSITION: relative" runat="server" width="100%" height="212px">
        <P>
      <ASP:Panel id="pnlCredentials" runat="server" width="100%">
      <table style="WIDTH: 465px; HEIGHT: 100px" cellspacing="1" cellpadding="1" width="100%" border="0">
          <tr>
            <td>
              <ASP:Literal id="Literal1" runat="server" text="User Name"></ASP:Literal></td>
            <td>
              <ASP:TextBox id="tbUserName" runat="server" maxlength="50" width="200px"></ASP:TextBox>
      <ASP:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" errormessage="User Name is missing!" controltovalidate="tbUserName"></ASP:RequiredFieldValidator></td>
          </tr>
          <tr>
            <td>
              <ASP:Literal id="Literal2" runat="server" text="Password"></ASP:Literal></td>
            <td>
              <ASP:TextBox id="tbPassword" runat="server" maxlength="50" width="200px" textmode="Password"></ASP:TextBox>
      <ASP:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" errormessage="Password is missing!" controltovalidate="tbPassword"></ASP:RequiredFieldValidator></td>
          </tr>
          <tr>
            <td style="HEIGHT: 32px"></td>
            <td style="HEIGHT: 32px">
              <ASP:Button id="btnLogin" runat="server" text="Login"></ASP:Button></td>
          </tr>
      </table>
      <ASP:CustomValidator id="CustomValidator1" runat="server" errormessage="CustomValidator" enableclientscript="False">Invalid UserName or Password!</ASP:CustomValidator>
      </ASP:Panel><br>
        </P>
        <ASP:Panel id="NavigationPanel" runat="server" width="100%" height="47px" visible="False">
        <UL>
          <li>
            <ASP:HyperLink id="HyperLink1" runat="server" navigateurl="ViewSoftwareList.aspx">View Software List</ASP:HyperLink></li>
          <li>
            <ASP:HyperLink id="HyperLink2" runat="server" navigateurl="ViewMachines.aspx">View Machines</ASP:HyperLink></li>
          <li>
              <ASP:HyperLink id="HyperLink3" runat="server" navigateurl="UserAdmin.aspx">User Admin</ASP:HyperLink>
          </li>
        </UL>
              <ASP:Button id="btnBackDateCookie" runat="server" text="Log off" causesvalidation="False"></ASP:Button>
        </ASP:Panel>
        <P></P>
        <P></P>
        <P></P>
      </ajax:AjaxPanel>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
     </form>
  </body>
</html>
