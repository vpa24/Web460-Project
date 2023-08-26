using System;
using Web460_Bookstore_v2.business;

namespace Web460_Bookstore_v2.presentation
{
    public partial class DefaultMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string currentPage = System.IO.Path.GetFileName(Request.Url.AbsolutePath);
            string excludedPage = "EmployeeList.aspx";

            if (!string.Equals(currentPage, excludedPage, StringComparison.OrdinalIgnoreCase))
            {
                ContactUsSection.Visible = true;
            }
            else
            {
                ContactUsSection.Visible = false;
            }
        }
        public void enableAdmin(Boolean enable)
        {
            liEmp.Visible = enable;
            liManage.Visible = enable;
        }
        public void enableBusiness(Boolean enable)
        {
            liIndex.Visible = enable;
            liLogout.Visible = enable;
            liCheckout.Visible = enable;
            enableAdmin(false);
        }
        public void enableNaviation(Boolean enable)
        {
            enableAdmin(enable);
            enableBusiness(enable);
        }

        public void setNavigation()
        {
            Employee aEmployee = (Employee)Session["employee"];
            if (aEmployee != null)
            {
                if (String.Equals(aEmployee.SecurityLevel, "A"))
                {
                    enableAdmin(true);
                }
                else if (String.Equals(aEmployee.SecurityLevel, "B"))
                {
                    enableBusiness(true);
                }
            }
            else
            {
                enableNaviation(false);
            }
        }
        public void checkSecurityLevel(string requiredLevel)
        {
            Boolean reject = true;
            Employee aEmployee = (Employee)Session["employee"];
            if (aEmployee == null)
            {
                reject = true;
            }
            else if (String.Equals(requiredLevel, "B") && String.Equals(aEmployee.SecurityLevel, "A"))
            {
                reject = false;
            }
            else if (String.Equals(requiredLevel, aEmployee.SecurityLevel))
            {
                reject = false;
            }
            if (reject)
            {
                Response.End();
            }
        }
    }
}