using System;
using System.Collections.Generic;
using System.Text;
using Model;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace DAL
{
    public class NewsDAL
    {
        SqlConnection sqlcon;
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

        
        public DataSet findbyID(string ID)
        {
            return GetDataSet("select * from tb_News where ID='" + ID + "'", "tbNews");
        }
        public void update(string title,string  content, string liayuan, string type, string id )
        {
            ExecSQL("update tb_News set Title = '" + title + "',Content = '" + content + "',Liayuan = '" + liayuan+ "',Style = '" + type + "' where(ID = '" + id + "')");

        }
      
       
        public string search(string style,string txtKey)
        {
            string strSql = "select * from tb_News where Style='" + style + "'";
            strSql += " and (( Content like '%" + txtKey + "%')";
            strSql += " or (Title like '%" + txtKey + "%'))";
            return strSql;
        }
        public void insert(string Title,string Content, string Style, string Liayuan, string imgsur,int  pinglun)
        {
            string sqlstr = "insert into tb_News(Title,Content,Style,Liayuan,imgsur,pinglun) values('" + Title + "','" + Content + "','" + Style + "','" + Liayuan+ "','upFile/" + imgsur + "','" + pinglun + "')";
            sqlcon = GetConnection();

            sqlcon.Open();
            SqlCommand com = new SqlCommand(sqlstr, sqlcon);
            com.ExecuteNonQuery();
            sqlcon.Close();
        }
        public SqlDataAdapter all()
        {
            string strSql = "select * from tb_News";

            SqlConnection Conn = GetConnection();

            SqlDataAdapter Da = new SqlDataAdapter(strSql, Conn);

            return Da;
        }
        public DataSet topid(string ID)
        {
           return GetDataSet("select top 1 * from tb_News where ID = " + ID, "tbNews");
        }
        public DataSet selectstyle(string strStyle)
        {
          return  GetDataSet("select * from tb_news where Style='" + strStyle + "' order by  ID Desc", "tbNews");
        }
        public DataSet topid7()
        {
            return GetDataSet("select top 7 * from tb_News where Style = '热门文章' order by ID desc", "tbNews");;
        }
        public SqlDataAdapter bydesc()
        {
            SqlConnection Conn = GetConnection();
            SqlDataAdapter Da = new SqlDataAdapter("select * from tb_News order by ID desc", Conn);
            return Da;
        }
       
    }
}
