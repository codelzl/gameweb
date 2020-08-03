using System;
using System.Collections.Generic;
using System.Text;
using DAL;
using Model;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DAL
{
  
    public class MessageDAL
    {
        public SqlConnection GetConnection()
        {
            string myStr = ConfigurationManager.AppSettings["ConnectionString"].ToString();
            SqlConnection myConn = new SqlConnection(myStr);
            return myConn;
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
        public DataSet load()
        {
            return GetDataSet("select * from QF_biao ", "tbNews");
        }
        public void Delete(string s) {
            ExecSQL("delete  from QF_biao where ID='" + s + "'");
        }
        public DataSet loadbyid()
        {
          return   GetDataSet("select * from QF_biao order by ID", "tbNews");
        }
        public DataSet loadbyiddesc()
        {
            return GetDataSet("select * from QF_biao order by  ID Desc", "tbNews");
        }
        public void insert(string Uname, string Ucontent)
        {
            SqlConnection myConn = GetConnection();
            myConn.Open();
            string sqlStr = "insert into QF_biao(User_Name,Content) values('" + Uname + "','" + Ucontent+ "')";
            SqlCommand myCmd = new SqlCommand(sqlStr, myConn);
            myCmd.ExecuteNonQuery();
            myConn.Close();
        }
    }
}
