﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace Web460_Week_1.business
{
    public class Person
    {
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
                if(!string.IsNullOrEmpty(this.Address2))
                {
                    str.AppendLine(this.Address2);
                }
                str.AppendLine(this.City + ", " + this.State);
                return str.ToString();
            }
        }
        public String City { get; set;}
        public String State { get; set; }
        public String PaymentMethod { get; set; }
        public String CreditCard { get; set;}
        public String CreditCardNumber { get; set; }
        public String CreditCardInformation
        {
            get { return this.CreditCard + ": " + this.CreditCardNumber; }
        }
        public String Phone { get; set; }
    }
}