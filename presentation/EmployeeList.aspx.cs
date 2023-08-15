using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web460_Bookstore_v2.business;

namespace Web460_Bookstore_v2.presentation
{
    public partial class EmployeeList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            (this.Master as DefaultMaster).setNavigation();
            (this.Master as DefaultMaster).checkSecurityLevel("A");
        }

        protected void grdEmployees_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            if (Page.IsValid)
            {
                GridViewRow row = (GridViewRow)grdEmployees.Rows[e.RowIndex];
                Label lblStatus = (Label)row.FindControl("lblStatus");
                string passWord = ((TextBox)row.Cells[3].Controls[1]).Text;
                string message = null;
                lblStatus.Visible = true;
                Boolean validPassword = PasswordHelpers.ValidatePassword(passWord, out message);
                if (validPassword)
                {
                    string userName = ((TextBox)row.Cells[2].Controls[1]).Text;
                    lblSuccess.Text = userName + " updated.";
                    lblSuccess.CssClass = "text-success fw-bold";
                    lblSuccess.Visible = true;
                }
                else
                {
                    lblStatus.Text = message;
                    lblStatus.CssClass = "text-danger";
                    e.Cancel = true;
                }
            }
        }
    }
}