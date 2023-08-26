using System;
using System.Web.UI;
using Web460_Bookstore_v2.business;
using Web460_Bookstore_v2.data;

namespace Web460_Bookstore_v2.presentation
{
    public partial class CheckOut : System.Web.UI.Page
    {
        public String FirstName
        {
            get { return txtFirstName.Text; }
        }
        public String LastName
        {
            get { return txtLastName.Text; }
        }
        public String Email
        {
            get { return txtEmail.Text; }
        }
        public String Phone
        {
            get { return txtPhone.Text; }
        }
        public String Address1
        {
            get { return txtLine1.Text; }
        }
        public String Address2
        {
            get { return txtLine2.Text; }
        }
        public String City
        {
            get { return txtCity.Text; }
        }
        public String State
        {
            get { return txtState.Text; }
        }
        public String CreditCard
        {
            get { return radCreditCard.SelectedValue; }
        }
        public String CreditCardNumber
        {
            get { return txtCardNumber.Text; }
        }
        public Order getOrder
        {
            get
            {
                Order aOrder = new Order();
                aOrder.FirstName = this.FirstName;
                aOrder.LastName = this.LastName;
                aOrder.Email = this.Email;
                aOrder.Phone = this.Phone;
                aOrder.Address1 = this.Address1;
                aOrder.Address2 = this.Address2;
                aOrder.City = this.City;
                aOrder.State = this.State;
                aOrder.CreditCard = this.CreditCard;
                aOrder.CreditCardNumber = this.CreditCardNumber;
                return aOrder;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            (this.Master as DefaultMaster).setNavigation();
            (this.Master as DefaultMaster).checkSecurityLevel("B");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Order theOrder = this.getOrder;
                if (OrderData.saveOrder(theOrder))
                {
                    Session["order"] = theOrder;
                }
                else
                {
                    Session["order"] = null;
                }
                Response.Redirect("~/presentation/CheckOutConfirm.aspx");
            }
        }
    }
}