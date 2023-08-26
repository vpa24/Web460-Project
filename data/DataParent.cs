using System;

using System.Configuration;
using System.Data.SqlClient;

namespace Web460_Bookstore_v2.data
{
    public class DataParent
    {
        protected static SqlConnection cnn = null;

        protected static SqlConnection getConnection()
        {
            try
            {
                string cnnStr = ConfigurationManager.ConnectionStrings["BookstoreConnectionString"].ConnectionString;
                cnn = new SqlConnection(cnnStr);
                cnn.Open();
            }
            catch (Exception ex)
            {
                closeConnection();
                ex = null;
            }

            return cnn;
        }
        protected static void closeConnection()
        {
            if (cnn != null)
            {
                cnn.Close();
                cnn = null;
            }
        }
    }
}