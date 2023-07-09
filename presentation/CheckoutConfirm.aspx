<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckoutConfirm.aspx.cs" Inherits="Web460_Week_1.presentation.CheckOutConfirm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order Confirmation</title>
    <link href="../Content/bootstrap-grid.css" rel="stylesheet" />
    <link href="../Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <form id="form1" runat="server">
        <div class="row">
            <div class="col-2">
                <asp:Label ID="labelCustomer" runat="server" Text="Customer Name"></asp:Label>
            </div>
            <div class="col-8">
                <asp:label ID="lblName" runat="server"></asp:label>
            </div>
        </div>
        <div class="row">
            <div class="col-2">
                <asp:Label ID="label2" runat="server" Text="Email"></asp:Label>
            </div>
            <div class="col-8">
                <asp:label ID="lblEmail" runat="server" Text=""></asp:label>
            </div>
        </div>
        <div class="row">
            <div class="col-2">
                <asp:Label ID="label3" runat="server" Text="Phone#"></asp:Label>
            </div>
            <div class="col-8">
                <asp:label ID="lblPhone" runat="server" Text=""></asp:label>
            </div>
        </div>
        <div class="row">
            <div class="col-2">
                <asp:Label ID="label4" runat="server" Text="Address"></asp:Label>
            </div>
            <div class="col-8">
                <asp:Textbox ID="txtAddress" runat="server" TextMode="MultiLine" Columns="50" Enable="False"></asp:Textbox>
            </div>
        </div>
        <div class="row">
            <div class="col-2">
                <asp:Label ID="label5" runat="server" Text="Creadit Card"></asp:Label>
            </div>
            <div class="col-8">
                <asp:label ID="lblCreditCard" runat="server"></asp:label>
            </div>
        </div>
        <div class="row">
                <asp:Label ID="lblStatus" runat="server" Text="Status" Font-Bold="True" ForeColor="Red"></asp:Label>
        </div>
        <div class="col-md-4" style="text-align: left">
              <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
         </div>
    </form>
    </div>
</body>
</html>
