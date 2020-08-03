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
using Model;
using BLL;


public partial class admin_TJ_guanliyan : System.Web.UI.Page
{
    CommonClass CC = new CommonClass();
    AdminBLL AB = new AdminBLL();
  
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string Name = this.Name.Text;
        
        string Pwd = this.pwd_1.Text;

        

        string ChkPwd = this.pwd_2.Text;
        SqlConnection Conn = CC.GetConnection();
        Conn.Open();

        if (ChkPwd == Pwd)
        {
            if (Name.Trim() != "" && Pwd.Trim() != "")
            {
                AdminModel AM = new AdminModel(Name, Pwd);
                AB.insert(AM.Name,AM.Password);
               
                //Conn.Close();
                Response.Write(CC.MessageBox("添加成功"));
                this.Name.Text = "";

            }
            else
            {
                Response.Write("<script>alert('用户名或者密码不能为空');history.go(-1);</script>");
                this.Name.Focus();
            }
        }
        else
        {
            Response.Write("<script>alert('两次密码输入不一致');history.go(-1);</script>");
        }
        Conn.Close();
    }
}
