using System;
using System.Text;

namespace Web460_Bookstore_v2.business
{
    public class Order
    {
        public int ID { get; set; }
        public String FirstName { get; set; }
        public String LastName { get; set; }
        public String FullName
        {
            get { return this.FirstName + " " + this.LastName; }
        }
        public String Email
        {
            get; set;
        }
        public String Address1 { get; set; }
        public String Address2 { get; set; }
        public String FullAddress
        {
            get
            {
                StringBuilder str = new StringBuilder();
                str.AppendLine(this.Address1);
                if (!string.IsNullOrEmpty(this.Address2))
                {
                    str.AppendLine(this.Address2);
                }
                str.AppendLine(this.City + ", " + this.State);
                return str.ToString();
            }
        }
        public String City { get; set; }
        public String State { get; set; }
        public String PaymentMethod { get; set; }
        public String CreditCard { get; set; }
        public String CreditCardNumber { get; set; }
        public String CreditCardInformation
        {
            get { return this.CreditCard + ": " + this.CreditCardNumber; }
        }
        public String Phone { get; set; }
    }
}