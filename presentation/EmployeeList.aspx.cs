using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web460_Bookstore_v2.presentation
{
    public partial class EmployeeList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            (this.Master as DefaultMaster).setNavigation();
            (this.Master as DefaultMaster).checkSecurityLevel("A");
        }
    }
}