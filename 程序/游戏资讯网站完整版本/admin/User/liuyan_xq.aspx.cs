using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class admin_User_liuyan_xq : System.Web.UI.Page
{
    CommonClass CC = new CommonClass();
    public static string IntSearch = "是";
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)  //判断页面是否首次加载
        {
            Repeater1.DataSource = CC.GetDataSet("select * from message where ID='" + Request.
                QueryString["ID"] + "'", "tbNews");
            Repeater1.DataBind();
            
            
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string UU = Request.QueryString["ID"].ToString();
        Update(UU);
        Response.Write(CC.MessageBox("审核成功!"));
    }
    /*
      Update 方法完成投票选项的票数更改(Xinshi的值='是')
    */
    protected void Update(string s)
    {
       
        SqlConnection conn = new SqlConnection();
        conn = CC.GetConnection();
        SqlCommand com = new SqlCommand();
        com.Connection = conn;
        com.CommandText = "update message set Xianshi='" + IntSearch + "' where ID='" + s + "'";
        conn.Open();
        com.ExecuteNonQuery();
        conn.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string ID = Request.QueryString["ID"].ToString();
        SqlConnection conn = new SqlConnection();
        conn = CC.GetConnection();
        SqlCommand com = new SqlCommand();
        com.Connection = conn;
        com.CommandText = "delete from message where ID = '"+ ID +"'";
        conn.Open();
        com.ExecuteNonQuery();
        conn.Close();
        Response.Write(CC.MessageBox("删除成功!"));
       
    }
}
