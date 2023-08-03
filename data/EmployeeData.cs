using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using Web460_Bookstore_v2.business;

namespace Web460_Bookstore_v2.data
{
    public class EmployeeData : DataParent
    {
        public static Boolean saveEmployee(Employee aEmployee)
        {
            Boolean isValid = false;

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "InsertEmployee";
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            cmd.Parameters.Add("id", System.Data.SqlDbType.Int).Direction = System.Data.ParameterDirection.Output;
            cmd.Parameters.Add("firstName", System.Data.SqlDbType.VarChar).Value = aEmployee.FirstName;
            cmd.Parameters.Add("lastName", System.Data.SqlDbType.VarChar).Value = aEmployee.LastName;
            cmd.Parameters.Add("phone", System.Data.SqlDbType.VarChar).Value = aEmployee.Phone; 
            cmd.Parameters.Add("email", System.Data.SqlDbType.VarChar).Value = aEmployee.Email;
            cmd.Parameters.Add("hireDate", System.Data.SqlDbType.VarChar).Value = aEmployee.HireDate;
            cmd.Parameters.Add("securityLevel", System.Data.SqlDbType.VarChar).Value = aEmployee.SecurityLevel;
            cmd.Parameters.Add("userName", System.Data.SqlDbType.VarChar).Value = aEmployee.UserName;
            cmd.Parameters.Add("password", System.Data.SqlDbType.VarChar).Value = aEmployee.Password;
            SqlTransaction sqlTran = null;

            try
            {
                getConnection();
                sqlTran = cnn.BeginTransaction();
                cmd.Connection = cnn;
                cmd.Transaction = sqlTran;

                cmd.ExecuteNonQuery();
                aEmployee.ID = (int)cmd.Parameters["id"].Value;

                sqlTran.Commit();
                isValid = true;
            }
            catch (Exception ex)
            {
                isValid = false;
                try
                {
                    //attempt to rollback transaction
                    if (sqlTran != null)
                    {
                        sqlTran.Rollback();
                    }
                }
                catch (Exception exRollBack)
                {
                    exRollBack = null;
                }
            }
            closeConnection();
            return isValid;
        }
    }
}