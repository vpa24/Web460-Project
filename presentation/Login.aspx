<%@ Page Title="" Language="C#" MasterPageFile="~/presentation/DefaultMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Web460_Bookstore_v2.presentation.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageImage" runat="server">
    <asp:Image runat="server" Width="100px" CssClass="img-fluid" ImageUrl="~/presentation/images/login.png" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="pageInformation" runat="server">
    <h2>Bookstore Login</h2>
    <p>Provide your user name and password to login.</p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="mainContent" runat="server">
    <asp:Login ID="Login1" runat="server" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333">
    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
    <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
    <TextBoxStyle Font-Size="0.8em" />
    <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
</asp:Login>
</asp:Content>
