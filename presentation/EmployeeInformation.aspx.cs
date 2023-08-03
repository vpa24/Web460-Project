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
                aEmployee.Password = txtPassword.Text;
                lblStatus.Visible = true;
                if (EmployeeData.saveEmployee(aEmployee))
                {
                    lblStatus.Text = aEmployee.FullName + " saved.";
                    lblStatus.CssClass = "no error";
                }
                else
                {
                    lblStatus.Text = aEmployee.FullName + " NOT saved.";
                    lblStatus.CssClass = "error";
                }
            }
        }
    }
}