using System;
using System.Collections.Generic;
using System.Text;
using Model;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


namespace DAL
{

    public class AdminDAL
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
        public SqlConnection GetConnection()
        {
            string myStr = ConfigurationManager.AppSettings["ConnectionString"].ToString();
            SqlConnection myConn = new SqlConnection(myStr);
            return myConn;
        }

        //修改之前的校验
        public int checkxg(string pwd)
        {
            SqlConnection myConn = GetConnection();
            SqlCommand myCmd = new SqlCommand("select count(*) from tb_Amdin where PassWord=@pwd", myConn);
            myCmd.Parameters.Add(new SqlParameter("@pwd", SqlDbType.VarChar, 50));
            myCmd.Parameters["@pwd"].Value = pwd;

            myConn.Open();
            int i = (int)myCmd.ExecuteScalar();
            myCmd.Dispose();
            myConn.Close();
            return i;
        }

        //检查登录
        public int checkLogin(string loginName, string loginPwd)
        {
            SqlConnection myConn = GetConnection();
            SqlCommand myCmd = new SqlCommand("select count(*) from tb_Amdin where Name=@loginName and PassWord=@loginPwd", myConn);
            myCmd.Parameters.Add(new SqlParameter("@loginName", SqlDbType.VarChar, 20));
            myCmd.Parameters["@loginName"].Value = loginName;
            myCmd.Parameters.Add(new SqlParameter("@loginPwd", SqlDbType.VarChar, 50));
            myCmd.Parameters["@loginPwd"].Value = loginPwd;
            myConn.Open();
            int i = (int)myCmd.ExecuteScalar();
            myCmd.Dispose();
            myConn.Close();
            return i;
        }

        //更新admin表
        public void updatepwd(string newpwd,string Name)
        {
            ExecSQL("update tb_Amdin set PassWord = '" + newpwd + "' where(Name = '" + Name + "')");

        }

        //插入管理
        public void insert(string Name, string Pwd)
        {
            SqlConnection Conn = GetConnection();
            Conn.Open();
            ExecSQL("insert into tb_Amdin(Name,PassWord)" + "values('" + Name + "','" + Pwd + "')");
            Conn.Close();

        }

        //删除管理
        public void delete(int ID)
        {
            SqlConnection Conn =GetConnection();

            Conn.Open();

            SqlCommand Cmd = new SqlCommand("delete from tb_Amdin where ID=" + ID, Conn);


            Cmd.ExecuteNonQuery();

            Conn.Close();
        }

        public DataSet load(string ID)
        {
            
            DataSet ds = GetDataSet("select * from tb_Amdin where ID='" + ID+ "'", "tbNews");

            return ds;
        }

        public DataSet loadbyID(string ID)
        {

            DataSet ds = GetDataSet("select * from tb_Amdin order by ID desc", "tbNews");

            return ds;
        }
    }
}
