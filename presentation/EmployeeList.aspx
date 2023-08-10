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
              <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ControlStyle-CssClass="commandButton" />
              <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
              <asp:TemplateField HeaderText="First Name" SortExpression="firstName">
                  <EditItemTemplate>
                      <asp:TextBox ID="txtFirstName" CssClass="mediumTextBox" runat="server" Text='<%# Bind("firstName") %>'></asp:TextBox>
                      <asp:RequiredFieldValidator cssClass="error" ID="firstNameValidator" runat="server" ControlToValidate="txtFirstName" ErrorMessage="First name is required" ValidationGroup="personnel" SetFocusOnError="True"></asp:RequiredFieldValidator>
                  </EditItemTemplate>
                  <ItemTemplate>
                      <asp:Label ID="Label1" runat="server" Text='<%# Bind("firstName") %>'></asp:Label>
                  </ItemTemplate>
              </asp:TemplateField>
              <asp:BoundField DataField="lastName" HeaderText="lastName" SortExpression="lastName" />
              <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
              <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
              <asp:BoundField DataField="securityLevel" HeaderText="securityLevel" SortExpression="securityLevel" />
              <asp:BoundField DataField="hireDate" HeaderText="hireDate" SortExpression="hireDate" />
              <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
              <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
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
