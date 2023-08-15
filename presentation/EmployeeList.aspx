<%@ Page Title="" Language="C#" MasterPageFile="~/presentation/DefaultMaster.Master" AutoEventWireup="true" CodeBehind="EmployeeList.aspx.cs" Inherits="Web460_Bookstore_v2.presentation.EmployeeList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageImage" runat="server">
    <asp:Image runat="server" Width="100px" CssClass="img-fluid" ImageUrl="~/presentation/images/EmployeeList.png" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="pageInformation" runat="server">
    <h2>User Management</h2>
    <p>Edit or delete users</p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="mainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookstoreConnectionString %>" DeleteCommand="DELETE FROM [Employee] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Employee] ([firstName], [lastName], [email], [phone], [securityLevel], [hireDate], [username], [password]) VALUES (@firstName, @lastName, @email, @phone, @securityLevel, @hireDate, @username, @password)" SelectCommand="SELECT * FROM [Employee]" UpdateCommand="UPDATE [Employee] SET [firstName] = @firstName, [lastName] = @lastName, [email] = @email, [phone] = @phone, [securityLevel] = @securityLevel, [hireDate] = @hireDate, [username] = @username, [password] = pwdencrypt(@password) WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="firstName" Type="String" />
            <asp:Parameter Name="lastName" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="securityLevel" Type="String" />
            <asp:Parameter Name="hireDate" Type="DateTime" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="firstName" Type="String" />
            <asp:Parameter Name="lastName" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="securityLevel" Type="String" />
            <asp:Parameter Name="hireDate" Type="DateTime" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
      <asp:label runat="server" ID="lblSuccess" Visible="false"></asp:label>
    <asp:GridView CssClass="table table-hover table-bordered" ID="grdEmployees" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnRowUpdating="grdEmployees_RowUpdating">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
              <asp:TemplateField HeaderText="User Name" SortExpression="username">
                <EditItemTemplate>
                    <asp:TextBox ID="txtUserName" runat="server" Text='<%# Bind("username") %>' CssClass="mediumTextBox"></asp:TextBox>
                       <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUserName" ErrorMessage="User name is required" ValidationGroup="personnel" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("username") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Password" SortExpression="password">
                <EditItemTemplate>
                    <asp:TextBox ID="txtPassword" runat="server" Text=''></asp:TextBox>
                     <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" ValidationGroup="personnel" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:Label ID="lblStatus" runat="server" Visible="false"></asp:Label>
                </EditItemTemplate>
            <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='********'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="First Name" SortExpression="firstName">
                <EditItemTemplate>
                    <asp:TextBox ID="txtFirstName" runat="server" Text='<%# Bind("firstName") %>' CssClass="mediumTextBox"></asp:TextBox>
                      <asp:RequiredFieldValidator CssClass="text-danger" ID="firstNameValidator" runat="server" ControlToValidate="txtFirstName" ErrorMessage="First name is required" ValidationGroup="personnel" SetFocusOnError="True"></asp:RequiredFieldValidator>  
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("firstName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Last Name" SortExpression="lastName">
                <EditItemTemplate>
                    <asp:TextBox ID="txtLastName" runat="server" Text='<%# Bind("lastName") %>' CssClass="mediumTextBox"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="text-danger" ID="lastNameValidator" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last name is required" ValidationGroup="personnel" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("lastName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email" SortExpression="email">
                <EditItemTemplate>
                    <asp:TextBox ID="txtEmail" runat="server" Text='<%# Bind("email") %>' CssClass="mediumTextBox"></asp:TextBox>
                     <asp:RequiredFieldValidator CssClass="text-danger" ID="EmailValidator" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" ValidationGroup="personnel" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator CssClass="text-danger" ID="emailFormat" runat="server" ControlToValidate="txtEmail"
        ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$" ErrorMessage = "Invalid email address"  ValidationGroup="personnel">
    </asp:RegularExpressionValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Phone" SortExpression="phone">
                <EditItemTemplate>
                    <asp:TextBox ID="txtPhone" runat="server" Text='<%# Bind("phone") %>' CssClass="mediumTextBox"></asp:TextBox>
                     <asp:RequiredFieldValidator CssClass="text-danger" ID="reqPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone is required" ValidationGroup="personnel" SetFocusOnError="True"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator CssClass="text-danger" ID="phoneValidator" runat="server" ControlToValidate="txtPhone"
                         ErrorMessage="Enter a 10 digit phone number" ValidationGroup="personnel"
                         ValidationExpression="^[0-9]{10}$">
                        </asp:RegularExpressionValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("phone") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Sec Level" SortExpression="securityLevel">
                <EditItemTemplate>
                    <asp:TextBox ID="txtSecLevel" runat="server" Text='<%# Bind("securityLevel") %>' CssClass="smallTextBox"></asp:TextBox>
                      <asp:RequiredFieldValidator CssClass="text-danger" ID="reqSecLevel" runat="server" ControlToValidate="txtSecLevel" ErrorMessage="Please check the Sevurity Level"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator CssClass="text-danger" ID="secValidator" runat="server" ControlToValidate="txtSecLevel"
                          ValidationExpression="AB" ValidationGroup="personel"  Display="Dynamic"></asp:RegularExpressionValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("securityLevel") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Hire Date" SortExpression="hireDate">
                <EditItemTemplate>
                    <asp:TextBox ID="txtHireDate" runat="server" Text='<%# Bind("hireDate", "{0:MM/dd/yyyy}") %>'></asp:TextBox>
                   <asp:RequiredFieldValidator ID="hireReq" runat="server"
                          ControlToValidate="txtHireDate" CssClass="text-danger" Display="Dynamic" 
                          ErrorMessage="Date must be in format mm/dd/yyyy (e.g 8/10/2023)"
                          ValidationGroup="personel" ValidationExpression="\d{1,2}\/d{1,2}\/d{4}$">
                      </asp:RequiredFieldValidator>
                      <asp:RequiredFieldValidator CssClass="text-danger" ID="reqHire" runat="server"
                          ControlToValidate="txtHireDate" ErrorMessage="Hire date is requrired"
                          ValidationGroup="personel" Display="Dynamic"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblHireDate" runat="server" Text='<%# Bind("hireDate", "{0:MM/dd/yyyy}") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
 </asp:Content>
