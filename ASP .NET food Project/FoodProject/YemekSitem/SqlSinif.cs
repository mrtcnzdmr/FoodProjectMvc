using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace YemekSitem
{
    public class SqlSinif
    {
        public SqlConnection Baglanti()
        {
            SqlConnection sqlConnection = new SqlConnection(@"Data Source=MERT;Initial Catalog=Dbo_yemektarifi;Integrated Security=True");
            sqlConnection.Open();
            return sqlConnection;
        }
    }
}