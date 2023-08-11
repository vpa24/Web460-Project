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
      <asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:BookstoreConnectionString %>" DeleteCommand="DELETE FROM [Employee] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Employee] ([firstName], [lastName], [email], [phone], [securityLevel], [hireDate], [username], [password]) VALUES (@firstName, @lastName, @email, @phone, @securityLevel, @hireDate, @username, @password)" SelectCommand="SELECT * FROM [Employee]" UpdateCommand="UPDATE [Employee] SET [firstName] = @firstName, [lastName] = @lastName, [email] = @email, [phone] = @phone, [securityLevel] = @securityLevel, [hireDate] = @hireDate, [username] = @username, [password] = pwdencrypt(@password) WHERE [Id] = @Id" OnSelecting="Unnamed2_Selecting">
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
      <asp:GridView ID="grdEmployees" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="+" ForeColor="#333333" GridLines="None">
          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
          <Columns>
              <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ControlStyle-CssClass="btn-primary" >
<ControlStyle CssClass="btn-primary"></ControlStyle>
              </asp:CommandField>
              <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
              <asp:TemplateField HeaderText="Username" SortExpression="username">
                  <EditItemTemplate>
                      <asp:TextBox ID="txtUserName" runat="server" Text='<%# Bind("username") %>'></asp:TextBox>
                      <asp:RequiredFieldValidator cssClass="error" ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUserName" ErrorMessage="User name is required" ValidationGroup="personnel" SetFocusOnError="True"></asp:RequiredFieldValidator>
                  </EditItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label7" runat="server" Text='<%# Bind("username") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
                <asp:TemplateField HeaderText="Password" SortExpression="password">
                  <EditItemTemplate>
                      <asp:TextBox ID="txtPassword" runat="server" Text='<%# Bind("password") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator cssClass="error" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" ValidationGroup="personnel" SetFocusOnError="True"></asp:RequiredFieldValidator>
                  </EditItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="lblPassword" runat="server" Text='*************'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="First Name" SortExpression="firstName">
                  <EditItemTemplate>
                      <asp:TextBox ID="txtFirstName" CssClass="mediumTextBox" runat="server" Text='<%# Bind("firstName") %>'></asp:TextBox>
                      <asp:RequiredFieldValidator cssClass="error" ID="firstNameValidator" runat="server" ControlToValidate="txtFirstName" ErrorMessage="First name is required" ValidationGroup="personnel" SetFocusOnError="True"></asp:RequiredFieldValidator>
                  </EditItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label1" runat="server" Text='<%# Bind("firstName") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Last Name" SortExpression="lastName">
                  <EditItemTemplate>
                      <asp:TextBox ID="txtLastName" CssClass="mediumTextBox" runat="server" Text='<%# Bind("lastName") %>'></asp:TextBox>
                      <asp:RequiredFieldValidator cssClass="error" ID="lastNameValidator" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last name is required" ValidationGroup="personnel" SetFocusOnError="True"></asp:RequiredFieldValidator>
                  </EditItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label2" runat="server" Text='<%# Bind("lastName") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Email" SortExpression="email">
                  <EditItemTemplate>
                      <asp:TextBox ID="txtEmail" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                      <asp:RequiredFieldValidator cssClass="error" ID="EmailValidator" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" ValidationGroup="personnel" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator cssClass="error" ID="emailFormat" runat="server" ControlToValidate="txtEmail"
        ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$" ErrorMessage = "Invalid email address"  ValidationGroup="personnel">
    </asp:RegularExpressionValidator>
                  </EditItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label3" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Phone" SortExpression="phone">
                  <EditItemTemplate>
                      <asp:TextBox ID="txtPhone" runat="server" Text='<%# Bind("phone") %>'  CssClass="mediumTextBox"></asp:TextBox>
                      <asp:RegularExpressionValidator cssClass="error" ID="phoneValidator" runat="server" ControlToValidate="txtPhone"
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
                      <asp:TextBox ID="textSecLevel" runat="server" Text='<%# Bind("securityLevel") %>' CssClass="smallTextBox"></asp:TextBox>
                      <asp:RequiredFieldValidator CssClass="error" ID="reqSecLevel" runat="server" ControlToValidate="textSecLevel" ErrorMessage="Please check the Sevurity Level"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator CssClass="error" ID="secValidator" runat="server" ControlToValidate="txtSecLevel"
                          ValidationExpression="AB" Display="Dynamic"></asp:RegularExpressionValidator>
                  </EditItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label5" runat="server" Text='<%# Bind("securityLevel") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Hire Date" SortExpression="hireDate">
                  <EditItemTemplate>
                      <asp:TextBox ID="txtHireDate" runat="server" Text='<%# Bind("hireDate", "{0:MM/dd/yyyy}") %>' CssClass="mediumTextBox"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="hireReq" runat="server"
                          ControlToValidate="txtHireDate" CssClass="error" Display="Dynamic" 
                          ErrorMessage="Date must be in format mm/dd/yyyy (e.g 8/10/2023)"
                          ValidationGroup="personel" ValidationExpression="\d{1,2}\/d{1,2}\/d{4}$">
                      </asp:RequiredFieldValidator>
                      <asp:RequiredFieldValidator CssClass="error" ID="reqHire" runat="server"
                          ControlToValidate="txtHireDate" ErrorMessage="Hire date is requrired"
                          ValidationGroup="personel" Display="Dynamic"></asp:RequiredFieldValidator>
                  </EditItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label6" runat="server" Text='<%# Bind("hireDate") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:BoundField />
          </Columns>
          <EditRowStyle BackColor="#999999" />
          <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
          <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
          <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
          <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
          <SortedAscendingCellStyle BackColor="#E9E7E2" />
          <SortedAscendingHeaderStyle BackColor="#506C8C" />
          <SortedDescendingCellStyle BackColor="#FFFDF8" />
          <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
      </asp:GridView>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookstoreConnectionString %>" DeleteCommand="DELETE FROM [Employee] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Employee] ([firstName], [lastName], [email], [phone], [securityLevel], [hireDate], [username], [password]) VALUES (@firstName, @lastName, @email, @phone, @securityLevel, @hireDate, @username, @password)" SelectCommand="SELECT * FROM [Employee]" UpdateCommand="UPDATE [Employee] SET [firstName] = @firstName, [lastName] = @lastName, [email] = @email, [phone] = @phone, [securityLevel] = @securityLevel, [hireDate] = @hireDate, [username] = @username, [password] = @password WHERE [Id] = @Id">
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
</asp:Content>
