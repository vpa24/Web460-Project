using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web460_Bookstore_v2.business;
using Web460_Bookstore_v2.data;

namespace Web460_Bookstore_v2.presentation
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            (this.Master as DefaultMaster).enableNaviation(false);
        }
        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            Employee aEmployee = new Employee();
            aEmployee.UserName = Login1.UserName;
            aEmployee.Password = Login1.Password;

            UserLoginData.VerifyUser(aEmployee);

            if (aEmployee.SecurityLevel != null && aEmployee.SecurityLevel.Length == 1)
            {
                Session["employee"] = aEmployee;
                e.Authenticated = true;
                Response.Redirect("~/index.aspx");
            }
            else
            {
                e.Authenticated = false;
            }
        }
        }
}