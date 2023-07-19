using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using Web460_Week_1.business;

namespace WEB460_Bookstore.data
{
    public class OrderData : DataParent
    {
       
        public static Boolean saveOrder(Order aOrder)
        {
            Boolean isValid = false;

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "InsertOrder";
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            cmd.Parameters.Add("id", System.Data.SqlDbType.Int).Direction = System.Data.ParameterDirection.Output;
            cmd.Parameters.Add("firstName", System.Data.SqlDbType.VarChar).Value = aOrder.FirstName;
            cmd.Parameters.Add("lastName", System.Data.SqlDbType.VarChar).Value = aOrder.LastName;
            cmd.Parameters.Add("phone", System.Data.SqlDbType.VarChar).Value = aOrder.Phone;
            cmd.Parameters.Add("email", System.Data.SqlDbType.VarChar).Value = aOrder.Email;
            cmd.Parameters.Add("address1", System.Data.SqlDbType.VarChar).Value = aOrder.Address1;
            cmd.Parameters.Add("address2", System.Data.SqlDbType.VarChar).Value = aOrder.Address2;
            cmd.Parameters.Add("city", System.Data.SqlDbType.VarChar).Value = aOrder.City;
            cmd.Parameters.Add("state", System.Data.SqlDbType.VarChar).Value = aOrder.State;
            cmd.Parameters.Add("creditCard", System.Data.SqlDbType.VarChar).Value = aOrder.CreditCard;
            cmd.Parameters.Add("creditCardNumber", System.Data.SqlDbType.VarChar).Value = aOrder.CreditCardNumber;
            SqlTransaction sqlTran = null;

            try
            {
                getConnection();
                sqlTran = cnn.BeginTransaction();
                cmd.Connection = cnn;
                cmd.Transaction = sqlTran;

                cmd.ExecuteNonQuery();
                aOrder.ID = (int)cmd.Parameters["id"].Value;

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