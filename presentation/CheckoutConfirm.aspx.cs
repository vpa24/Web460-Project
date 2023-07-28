using System;
using Web460_Bookstore_v2.business;

namespace Web460_Bookstore_v2.presentation
{
    public partial class CheckoutConfirm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Order aOrder;
            if (!IsPostBack)
            {
                try
                {
                    aOrder = (Order)Session["order"];
                    lblName.Text = aOrder.FullName;
                    lblEmail.Text = aOrder.Email;
                    lblPhone.Text = aOrder.Phone;
                    txtAddress.Text = aOrder.FullAddress;
                    lblCreditCard.Text = aOrder.CreditCardInformation;

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