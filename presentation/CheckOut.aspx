<%@ Page Title="" Language="C#" MasterPageFile="~/presentation/Default.Master" AutoEventWireup="true" CodeBehind="CheckOut.aspx.cs" Inherits="Web460_Week_1.presentation.CheckOut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageImage" runat="server">
    <asp:Image runat="server" Width="100px" CssClass="img-fluid" ImageUrl="~/presentation/images/shoppingCart.png" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="pageInformation" runat="server">
    <h2>Order Information</h2>
    <p>Please complete the form and click subnmit!</p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="mainContent" runat="server">
       <div class="mb-3">
                <asp:label ID="label" runat="server" Text="First Name"></asp:label>
                <asp:TextBox ID="txtFistName" runat="server" Columns="50" ValidationGroup="person"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:label ID="label2" runat="server" Text="Last Name"></asp:label>
                <asp:TextBox ID="txtLastName" runat="server" Columns="50" ValidationGroup="person"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:label ID="label3" runat="server" Text="Address Line 1"></asp:label>
                <asp:TextBox ID="txtLine1" runat="server" Columns="50" ValidationGroup="person"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:label ID="label4" runat="server" Text="Address Line 2"></asp:label>
                <asp:TextBox ID="txtLine2" runat="server" Columns="50" ValidationGroup="person"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:label ID="label5" runat="server" Text="City"></asp:label>
                <asp:TextBox ID="txtCity" runat="server" Columns="50" ValidationGroup="person"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:label ID="label6" runat="server" Text="State"></asp:label>
                <asp:TextBox ID="txtState" runat="server" Columns="50" ValidationGroup="person"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:label ID="label7" runat="server" Text="Phone #"></asp:label>
                <asp:TextBox ID="txtPhone" runat="server" Columns="50"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:label ID="label8" runat="server" Text="Email"></asp:label>
                <asp:TextBox ID="txtEmail" runat="server" Columns="50" ValidationGroup="person"></asp:TextBox>
            </div>
            <div class="mb-3 form-check">
               <asp:label ID="label9" runat="server" Text="Credit Card"></asp:label>
               <asp:RadioButtonList ID="radCreditCard" runat="server">
                   <asp:ListItem>Visa</asp:ListItem>
                   <asp:ListItem>Discover</asp:ListItem>
                   <asp:ListItem>Master Card</asp:ListItem>
                   <asp:ListItem>America Express</asp:ListItem>
               </asp:RadioButtonList>
            </div>
            <div class="mb-3">
                <asp:label ID="label10" runat="server" Text="Card Number"></asp:label>
                <asp:TextBox ID="txtCardNumber" runat="server" Columns="50"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Button ID="btnSubmmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"/>
                <asp:Button ID="btnClear" runat="server" Text="Cancel" />
            </div>
</asp:Content>
