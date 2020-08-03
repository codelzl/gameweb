using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace DAL
{
    public class ChainDAL
    {
        
        public SqlConnection GetConnection()
        {
            string myStr = ConfigurationManager.AppSettings["ConnectionString"].ToString();
            SqlConnection myConn = new SqlConnection(myStr);
            return myConn;
        }

        public Boolean ExecSQL(string sqlStr)
        {
            SqlConnection myConn = GetConnection();
            myConn.Open();
            SqlCommand myCmd = new SqlCommand(sqlStr, myConn);
            try
            {
                myCmd.ExecuteNonQuery();
                myConn.Close();
            }
            catch
            {
                myConn.Close();
                return false;
            }
            return true;
        }

        public System.Data.DataSet GetDataSet(string sqlStr, string TableName)
        {
            SqlConnection myConn = GetConnection();

            myConn.Open();
            SqlDataAdapter adapt = new SqlDataAdapter(sqlStr, myConn);
            DataSet ds = new DataSet();
            adapt.Fill(ds, TableName);
            myConn.Close();
            return ds;
        }

        public void insert(string Title,string Url)
        {
            ExecSQL("insert into Text_ling(Text,URL)" + "values('" + Title + "','" + Url + "')");
            
        }
        public DataSet all()
        {
           return  GetDataSet("select top 10 * from Text_ling order by ID desc", "tbNews");
        }
    }
}
