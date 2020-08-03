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

public partial class hainanlyd_User_donglu : System.Web.UI.Page
{
   CommonClass CC = new CommonClass();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            this.Label1.Text = CC.RandomNum(4);

        }
    }
    //登录按钮
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Name.Text.Trim() == "" || Pwd.Text.Trim() == "")
        {
            Response.Write("<script>alert('登录名和密码不能为空!');history.go(-1);</script>");

        }
        else
        {

            //判断用户输入的验证码是否正确
            if (TextBox3.Text.Trim() == Label1.Text.Trim())
            {
               
                UserModel User = new UserModel(Name.Text.Trim(), Pwd.Text.Trim());
                UserBLL UB = new UserBLL();
                int lntUserln = UB.check(User);
              
                if (lntUserln > 0)
                {
                    string Name_N = Name.Text.Trim();
                    //该用户为合法用户,则跳转到后台首页 (message.aspx)


                    Response.Redirect("User_qifu.aspx?uu=" + Name_N);
                }
                else
                {
                    //该用户不是合法用户,则调用CommonClass类中的MassageBox方法,弹出提示框
                    Response.Write("<script>alert('您输入的用户名或密码错误,请重新输入!');history.go(-1);</script>");

                }
            }
            else
            {
                Response.Write("<script>alert('验证码输入有误,请重新输入!');history.go(-1);</script>");


                this.Label1.Text = CC.RandomNum(4);
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("User_zc.aspx");
    }
}
