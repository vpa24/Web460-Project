using System;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Web460_Bookstore_v2.business
{
    public class Employee
    {
        public int ID { get; set; }
        public String FirstName { get; set; }
        public String LastName { get; set; }
        public String FullName
        {
            get { return this.FirstName + " " + this.LastName; }
        }
        public String Email { get; set; }
        public String Phone { get; set; }

        [DataType(DataType.Date)]
        public DateTime HireDate { get; set; }

        public String SecurityLevel { get; set; }

        public override string ToString()
        {
            StringBuilder str = new StringBuilder();
            str.AppendLine("ID: " + ID);
            str.AppendLine(FirstName + " " + LastName);
            str.AppendLine("Email: " + Email);
            str.AppendLine("Phone: " + Phone);
            str.AppendLine("Hire Date: " + HireDate.ToString("MM/dd/yyyy"));
            str.AppendLine("Security Level: " + SecurityLevel);

            return str.ToString();
        }

    }
}