using System;
using System.Data.SqlClient;
using Web460_Bookstore_v2.business;

namespace Web460_Bookstore_v2.data
{
    public class UserLoginData : DataParent
    {
        public static void VerifyUser(Employee user)
        {
            String level;
            SqlDataReader reader = null;

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "VerifyUser";
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.Add("userName", System.Data.SqlDbType.VarChar).Value = user.UserName;
            cmd.Parameters.Add("password", System.Data.SqlDbType.VarChar).Value = user.Password;

            try
            {
                getConnection();
                cmd.Connection = cnn;
                reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        user.ID = (int)reader["Id"];
                        user.FirstName = (string)reader["firstName"];
                        user.LastName = (string)reader["lastName"];
                        user.Email = (string)reader["email"];
                        user.Phone = (string)reader["phone"];
                        user.SecurityLevel = (string)reader["securityLevel"];
                        user.HireDate = (DateTime)reader["hireDate"];
                        user.Password = String.Empty;  //DO NOT store the password in the employee object
                    }
                }
            }
            catch (Exception ex)
            {
                level = String.Empty;
            }
            finally
            {
                if (reader != null)
                {
                    reader.Close();
                }
            }

        }

    }
}