<%@ Page Title="" Language="C#" MasterPageFile="~/presentation/Default.Master" AutoEventWireup="true" CodeBehind="EmployeeInformation.aspx.cs" Inherits="Web460_Bookstore_v2.presentation.CheckOut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageImage" runat="server">
    <asp:Image runat="server" Width="100px" CssClass="img-fluid" ImageUrl="~/presentation/images/employee.png" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="pageInformation" runat="server">
    <h2>Employee Information</h2>
    <p>Please complete the form and click subnmit!</p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="mainContent" runat="server">
    <div class="mb-3">
              <asp:label ID="label" runat="server" Text="First Name"></asp:label>
                <asp:TextBox ID="txtFirstName" name="txtFirstName" runat="server" ValidationGroup="personnel" CssClass="textBox"></asp:TextBox>
                <asp:RequiredFieldValidator cssClass="error" ID="firstNameValidator" runat="server" ControlToValidate="txtFirstName" ErrorMessage="First name is required" ValidationGroup="personnel" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </div>    
        <div class="mb-3">
                <asp:label ID="label2" runat="server" Text="Last Name"></asp:label>
                <asp:TextBox ID="txtLastName" name="txtLastName" runat="server" ValidationGroup="personnel" CssClass="textBox"></asp:TextBox>
       <asp:RequiredFieldValidator cssClass="error" ID="lastNameValidator" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last name is required" ValidationGroup="personnel" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </div>
            <div class="mb-3">
                <asp:label ID="label8" runat="server" Text="Email"></asp:label>
                <asp:TextBox ID="txtEmail" name="txtEmail" runat="server" ValidationGroup="personnel" CssClass="textBox"></asp:TextBox>
       <asp:RequiredFieldValidator cssClass="error" ID="EmailValidator" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" ValidationGroup="personnel" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator cssClass="error" ID="emailFormat" runat="server" ControlToValidate="txtEmail"
        ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$" ErrorMessage = "Invalid email address"  ValidationGroup="personnel">
    </asp:RegularExpressionValidator>
                </div>

            <div class="mb-3">
                <asp:label ID="label7" runat="server" Text="Phone"></asp:label>
                <asp:TextBox ID="txtPhone" runat="server" Columns="50"></asp:TextBox>
                <asp:RegularExpressionValidator cssClass="error" ID="phoneValidator" runat="server" ControlToValidate="txtPhone"
                 ErrorMessage="Enter a 10 digit phone number" ValidationGroup="personnel"
                 ValidationExpression="^[0-9]{10}$">
                </asp:RegularExpressionValidator>
            </div>
        <div class="mb-3">
                <asp:label ID="label3" runat="server" Text="Hire Date" ></asp:label>
                <asp:Calendar ID="calStartDate" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" OnSelectionChanged="Calendar1_SelectionChanged" Width="350px">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                    <TodayDayStyle BackColor="#CCCCCC" />

                </asp:Calendar>
            </div>
       <div class="mb-3">
                <asp:label ID="label1" runat="server" Text="Security Level"></asp:label>
           <asp:RadioButtonList ID="radSecurityLevel" runat="server">
               <asp:ListItem>Administrator</asp:ListItem>
               <asp:ListItem>Business User</asp:ListItem>
           </asp:RadioButtonList>
            </div>
            <div class="mb-3">
                <asp:Button ID="btnSubmmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"/>
                <asp:Button ID="btnClear" runat="server" Text="Cancel" />
            </div>
            <div class="mb-3">
                 <asp:label ID="lblStatus" runat="server"></asp:label>
            </div>
</asp:Content>
