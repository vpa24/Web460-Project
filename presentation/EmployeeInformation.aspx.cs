using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web460_Bookstore_v2.data;
using Web460_Bookstore_v2.business;

namespace Web460_Bookstore_v2.presentation
{
    public partial class EmployeeInformation : System.Web.UI.Page
    {
  
        protected void btnSubmit_Click(object sender, EventArgs e)
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
                Response.Redirect("~/presentation/CheckOutConfirm.aspx");
            }
        }
    }
}