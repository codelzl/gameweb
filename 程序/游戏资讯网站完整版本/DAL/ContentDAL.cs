using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Text;

namespace DAL
{
    public class ContentDAL
    {
       
        public SqlConnection GetConnection()
        {
            string myStr = ConfigurationManager.AppSettings["ConnectionString"].ToString();
            SqlConnection myConn = new SqlConnection(myStr);
            return myConn;
        }

       
        public SqlDataAdapter selectByid()
        {
            SqlConnection Conn = GetConnection();
            return  new SqlDataAdapter("select * from user_pinglun order by ID desc", Conn);
        }

        public SqlDataAdapter selectbyt(string PL,int Xs)
        {
            SqlConnection Conn = GetConnection();
            return new SqlDataAdapter("select * from user_pinglun where Title = '" + PL + "' and xianshi = '" + Xs + "'", Conn);
        }
        

        public void delete(int ID)
        {
            SqlConnection Conn = GetConnection();

            Conn.Open();

            SqlCommand Cmd = new SqlCommand("delete from user_pinglun where PD=" + ID, Conn);


            Cmd.ExecuteNonQuery();


            Conn.Close();

        }
        public void addcontent(string Name , string Content, string Title, string xianshi, string ID )
        {
            SqlConnection myConn = GetConnection();
            myConn.Open();
            string sql = "insert into user_pinglun(Name,Content,Title,xianshi,ID) values('" + Name + "','" + Content + "','" + Title + "','" + xianshi + "','" + ID + "')";
            SqlCommand myCmd = new SqlCommand(sql, myConn);
            myCmd.ExecuteNonQuery();
            myConn.Close();
        }
    }
}
