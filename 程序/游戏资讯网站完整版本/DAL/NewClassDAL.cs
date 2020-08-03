using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace DAL
{
    public class NewClassDAL
    {
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
        public SqlDataAdapter AllClass()
        {
            SqlConnection Conn = GetConnection();
            Conn.Open();

            SqlDataAdapter Da = new SqlDataAdapter("Select * from tb_NewClass", Conn);
            return Da;
        }

        public DataSet loadbyid(string ID)
        {
            return GetDataSet("select * from tb_NewClass order by Id desc", "tbNews");

        }
        public void delete(int ID)
        {
            SqlConnection Conn = GetConnection();

            Conn.Open();

            SqlCommand Cmd = new SqlCommand("delete from tb_NewClass where ID=" + ID, Conn);


            Cmd.ExecuteNonQuery();


            Conn.Close();
        }
        public void insert(string Class_name, string St)
        {
            SqlConnection myConn = GetConnection();
            myConn.Open();
            string sqlStr = "insert into tb_NewClass(Class,St) values('" + Class_name + "','" + St + "')";
            SqlCommand myCmd = new SqlCommand(sqlStr, myConn);
            myCmd.ExecuteNonQuery();
            myConn.Close();

        }

        public DataSet selectid(string ID)
        {
          return  GetDataSet("select * from tb_NewClass where ID='" + ID + "'", "tbNews");
        }

        public void update(string Class_name,string St,string ID)
        {
            ExecSQL("update tb_NewClass set Class = '" + Class_name + "',St = '" + St + "' where(ID = '" + ID + "')");
        }

 

    


       
    }
   
}
