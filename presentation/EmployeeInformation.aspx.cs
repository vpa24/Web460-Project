using System;
using System.Web.UI;
using Web460_Bookstore_v2.business;
using Web460_Bookstore_v2.data;

namespace Web460_Bookstore_v2.presentation
{
    public partial class EmployeeInformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                (this.Master as DefaultMaster).setNavigation();
                (this.Master as DefaultMaster).checkSecurityLevel("A");
            }
        }
        protected void btnSubmit(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Employee aEmployee = new Employee();
                aEmployee.FirstName = txtFirstName.Text;
                aEmployee.LastName = txtLastName.Text;
                aEmployee.Email = txtEmail.Text;
                aEmployee.Phone = txtPhone.Text;
                aEmployee.HireDate = Convert.ToDateTime(calStartDate.SelectedDate.ToShortDateString());
                aEmployee.SecurityLevel = radSecurityLevel.SelectedValue;
                aEmployee.UserName = txtUsername.Text;
                string passWord = txtPassword.Text;
                string message = String.Empty;
                Boolean validPassword = PasswordHelpers.ValidatePassword(passWord, out message);
                if (validPassword)
                {
                    lblPasswordError.Visible = false;
                    lblStatus.Visible = true;
                    aEmployee.Password = passWord;
                    if (EmployeeData.saveEmployee(aEmployee))
                    {
                        lblStatus.Text = aEmployee.FullName + " saved.";
                        lblStatus.CssClass = "no error";
                    }
                    else
                    {
                        String errMsg = aEmployee.FullName + " NOT saved.";
                        if (!String.IsNullOrEmpty(message))
                        {
                            errMsg += ": " + message;
                        }
                        lblStatus.CssClass = "text-danger";
                    }
                }
                else
                {
                    lblPasswordError.Visible = true;
                    lblPasswordError.Text = message;
                }
            }
        }
    }
}