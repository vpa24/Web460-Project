using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web460_Week_1.business;

namespace Web460_Week_1.presentation
{
    public partial class CheckOutConfirm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Person aPerson;
            if(!IsPostBack)
            {
                try
                {
                    aPerson = (Person)Session["person"];
                    lblName.Text = aPerson.FullName;
                    lblEmail.Text = aPerson.Email;
                    lblPhone.Text = aPerson.Phone;
                    txtAddress.Text = aPerson.FullAddress;
                    lblCreditCard.Text = aPerson.CreditCardInformation;

                    lblStatus.Text = "All good";
                    lblStatus.ForeColor = System.Drawing.Color.Black;
                }
                catch (Exception ex)
                {
                    lblStatus.Text = ex.Message;
                    lblStatus.ForeColor = System.Drawing.Color.Red; 
                }
            }
        }
    }
}