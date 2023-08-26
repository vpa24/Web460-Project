using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web460_Bookstore_v2.business;

namespace Web460_Bookstore_v2.presentation
{
    public partial class DefaultMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Get the current page's file name
            string currentPage = System.IO.Path.GetFileName(Request.Url.AbsolutePath);

            // Specify the page where you don't want to display the "Contact Us" section
            string excludedPage = "EmployeeList.aspx";

            // Check if the current page is the excluded page
            if (!string.Equals(currentPage, excludedPage, StringComparison.OrdinalIgnoreCase))
            {
                // Show the "Contact Us" section
                ContactUsSection.Visible = true;
            }
            else
            {
                // Hide the "Contact Us" section
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