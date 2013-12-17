<%@ Control Language="c#" AutoEventWireup="false" Codebehind="NavigationalPanel.pas" Inherits="NavigationalPanel.TUserControl_NavigationPanel"%>
<%@ Register TagPrefix="ajax" Namespace="MagicAjax.UI.Controls" Assembly="MagicAjax" %>
<ajax:AjaxPanel id="AjaxPanel1" runat="server" width="100%">
  <P>
<hr></P>
  <P></P>
  <P></P>
  <P>
    <ASP:Literal id="Literal1" runat="server"></ASP:Literal></P>
  <P>
  <ASP:HyperLink id="HyperLinkSoftwareList" runat="server" navigateurl="ViewSoftwareList.aspx">View Software List</ASP:HyperLink>&nbsp; | 
&nbsp;<ASP:HyperLink id="HyperLinkMachines" runat="server" navigateurl="ViewMachines.aspx">View Machines</ASP:HyperLink>&nbsp; |&nbsp; 
&nbsp;
  <ASP:Button id="btnLogoff" runat="server" text="Logoff"></ASP:Button></P>
</ajax:AjaxPanel>
