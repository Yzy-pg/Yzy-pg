using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;

namespace DAL
{
   public class SqlHelper
    {
        //连接字符串
        public static string conStr = ConfigurationManager.ConnectionStrings["Shop"].ConnectionString;
            /*"Data Source=YZY\\SQLSERVER;Initial Catalog=Shop;Integrated Security=True";*/

        public static DataTable GetTable(string sql) {
            
            SqlDataAdapter da = new SqlDataAdapter(sql,conStr);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public static int ExecuteNonQuery(string sql)
        {
            SqlConnection con = new SqlConnection(conStr);
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            int count = cmd.ExecuteNonQuery();
            return count;
        }
        public static int ExecuteScalar(string sql)
        {
            SqlConnection con = new SqlConnection(conStr);
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            return count;
        }
    }
}
