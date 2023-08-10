using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;


namespace Web460_Bookstore_v2.business
{
    public class PasswordHelpers
    {
        static Regex hasNumber = new Regex(@"[0-9]+");
        static Regex hasUpperChar = new Regex(@"[A-Z]+");
        static Regex hasMiniMaxChars = new Regex(@".{8,15}");
        static Regex hasLowerChar = new Regex(@"[a-z]+");
        static Regex hasSymbols = new Regex(@"[!@#$%^&*()_+=\[{\]};:<>|./?,-]");

        public static Boolean ValidatePassword(string password, out string errorMessage)
        {
            string input = password;
            errorMessage = String.Empty;
            Boolean valid = false;
            StringBuilder msg = new StringBuilder();

            if (string.IsNullOrEmpty(password))
            {
                msg.AppendLine("Password cannot be empty");
            }
            else
            {
                if (!hasLowerChar.IsMatch(input))
                {
                    msg.Append("Password should contain At least one lower case letter");        
                }
                if (!hasUpperChar.IsMatch(input))
                {
                    msg.AppendLine("<br />Password should contain At least one upper case letter");
                }
                if (!hasMiniMaxChars.IsMatch(input))
                {
                    msg.AppendLine("<br />Password should be between 8 and 15 characters");
                }
                if (!hasNumber.IsMatch(input))
                {
                    msg.AppendLine("<br />Password should contain At least one numeric value");
                }
                if (!hasSymbols.IsMatch(input))
                {
                    msg.AppendLine("<br />Password should contain At least one special case characters");
                }
                else
                {
                    valid = true;
                }
            }

            errorMessage = msg.ToString();

            return valid;
        }
        public static string ObsurePassword()
        {
            return "**************";
        }
    }
}