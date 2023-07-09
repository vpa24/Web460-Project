<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckOutaspx.aspx.cs" Inherits="Web460_Week_1.presentation.Checkoutaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Checkout</title>
    <link href="../Content/bootstrap-grid.css" rel="stylesheet" />
    <link href="../Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <div class="container-fluid">
        <form id="form1" runat="server" class="mt-3">
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
            </form>
    </div>
</body>
</html>
