using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ApmProject
{
    public class DAL
    {
        string config = ConfigurationManager.ConnectionStrings["APMString"].ConnectionString;
    
        public void AddUser(string query)
        {
            SqlConnection connection = new SqlConnection(config);

            connection.Open();

            SqlCommand command = new SqlCommand(query, connection);

            command.ExecuteNonQuery();

            connection.Close();
        }

        public SqlDataReader GetUser(string query)
        {
            SqlConnection connection = new SqlConnection(config);

            connection.Open();

            SqlCommand command = new SqlCommand(query, connection);

            SqlDataReader reader = command.ExecuteReader();

            return reader;
        }


    }
}