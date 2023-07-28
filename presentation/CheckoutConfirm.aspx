<%@ Page Title="" Language="C#" MasterPageFile="~/presentation/Default.Master" AutoEventWireup="true" CodeBehind="CheckoutConfirm.aspx.cs" Inherits="Web460_Bookstore_v2.presentation.CheckoutConfirm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageImage" runat="server">
    <asp:Image runat="server" Width="100px" CssClass="img-fluid" ImageUrl="~/presentation/images/orderSuccess.jpg" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="pageInformation" runat="server">
    <h2>Thank you for your order!</h2>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="mainContent" runat="server">
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

</asp:Content>
