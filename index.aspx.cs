using System;
using Web460_Bookstore_v2.presentation;

namespace Web460_Bookstore_v2
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            (this.Master as DefaultMaster).setNavigation();
        }
    }
}