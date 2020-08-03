using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using Model;


namespace DAL
{
   public class UserDAL
    {
        public SqlConnection GetConnection()
        {
            string myStr = ConfigurationManager.AppSettings["ConnectionString"].ToString();
            SqlConnection myConn = new SqlConnection(myStr);
            return myConn;
        }
        //登录用
        public int UserkLogin(string loginName, string loginPwd)
        {
            SqlConnection myConn = GetConnection();
            SqlCommand myCmd = new SqlCommand("select count(*) from tb_User where Name=@loginName and PassWord=@loginPwd", myConn);
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

        //注册用
        public int UserkLogin(string loginName)
        {
            SqlConnection myConn = GetConnection();
            SqlCommand myCmd = new SqlCommand("select count(*) from tb_User where Name=@loginName", myConn);
            myCmd.Parameters.Add(new SqlParameter("@loginName", SqlDbType.VarChar, 20));
            myCmd.Parameters["@loginName"].Value = loginName;

            myConn.Open();
            int i = (int)myCmd.ExecuteScalar();
            myCmd.Dispose();
            myConn.Close();
            return i;
        }

        //注册用户
        public void UserReg(UserModel UD)
        {
           
            SqlConnection myConn = GetConnection();
            myConn.Open();
            string sqlStr = "insert into tb_User(Name,passWord,Sex,QQ,Email,phone,hobby,podcast) values('" + UD.Name + "','" + UD.Pwd + "','" + UD.Sex + "','" + UD.QQ1 + "','" + UD.Email1 + "','" + UD.Phone + "','" + UD.Hobby + "','" + UD.Podcast + "')";
            SqlCommand myCmd = new SqlCommand(sqlStr, myConn);
            myCmd.ExecuteNonQuery();
            myConn.Close();

        }

        //用户管理查询
        public SqlDataAdapter SearchID()
        {
            SqlConnection Conn = GetConnection();

            SqlDataAdapter Da = new SqlDataAdapter("select * from tb_User order by ID desc", Conn);

            return Da;

        }

        //用户管理删除
        public void DeleteID(int ID)
        {
            SqlConnection Conn = GetConnection();

            Conn.Open();

            SqlCommand Cmd = new SqlCommand("delete from tb_User where ID=" + ID, Conn);


            Cmd.ExecuteNonQuery();


            Conn.Close();

        }
    }
}
