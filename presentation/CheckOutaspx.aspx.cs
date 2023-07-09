using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web460_Week_1.business;

namespace Web460_Week_1.presentation
{
    public partial class Checkoutaspx : System.Web.UI.Page
    {
        public String FirstName
        {
            get { return txtFistName.Text; }
        }
        public String LastName
        {
            get { return txtLastName.Text;}
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
        public Person getPersonInformation
        {
            get
            {
                Person aPerson = new Person();
                aPerson.FirstName = this.FirstName;
                aPerson.LastName = this.LastName;
                aPerson.Email = this.Email;
                aPerson.Phone = this.Phone;
                aPerson.Address1 = this.Address1;
                aPerson.Address2 = this.Address2;
                aPerson.City = this.City;
                aPerson.State = this.State;
                aPerson.CreditCard = this.CreditCard;
                aPerson.CreditCardNumber = this.CreditCardNumber;
                return aPerson;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                Session["person"] = this.getPersonInformation;
                Response.Redirect("~/presentation/CheckoutConfirm.aspx");
            }
        }
    }
}