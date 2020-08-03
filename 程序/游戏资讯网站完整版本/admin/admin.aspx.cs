using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using Model;
using BLL;

public partial class admin : System.Web.UI.Page
{
    CommonClass CC = new CommonClass();
    AdminBLL AB = new AdminBLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            this.Label1.Text = CC.RandomNum(4);
        }
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (txtAdminCode.Text.Trim() == "" || txtAdminPwd.Text.Trim() == "")
        {
            Response.Write("<script>alert('登录名和密码不能为空!');history.go(-1);</script>");

        }
        else
        { 
        //判断用户输入的验证码是否正确
            if (txtAdminCode.Text.Trim() == Label1.Text.Trim())
            {
                AdminModel AM = new AdminModel(txtAdminName.Text.Trim(), txtAdminPwd.Text.Trim());

                int lntUserln = AB.check(AM);
               
                if (lntUserln > 0)
                {
                    //该用户为合法用户,则跳转到后台首页 (index.aspx)
                    Response.Write("<script language=javascript>window.open('admin_index.aspx');window.close();</script>");
                }
                else
                {
                    //该用户不是合法用户,则调用CommonClass类中的MassageBox方法,弹出提示框
                    Response.Write("<script language=javascript>alert('您输入的用户名或密码错误,请重新输入!');window.location.href='admin.aspx';</" + "script>");

                    

                }
            }
            else
            {
                this.Label1.Text = CC.RandomNum(4);
                Response.Write("<script language=javascript>alert('验证码输入有误,请重新输入!');window.location.href='admin.aspx';</" + "script>");

               

                
            }
        }
    }
}
