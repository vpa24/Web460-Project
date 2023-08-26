using System;

namespace Web460_Week_1.presentation
{
    public partial class LogoutTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            System.Web.Security.FormsAuthentication.SignOut();
            Session.Abandon();
            Session["employee"] = null;
            Response.Redirect("Login.aspx");
        }
    }
}