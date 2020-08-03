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
using BLL;
using Model;

public partial class hainanlyd_User_zc : System.Web.UI.Page
{
    CommonClass CC = new CommonClass();
    string aihao;//会员爱好
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            this.Label6.Text = CC.RandomNum(4);
            podcast.Text = "http://";

        }

    }
    //注册按钮
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        if (yzm.Text.Trim() == Label6.Text.Trim())
        {

            if (CheckBox1.Checked == true || CheckBox2.Checked == true)
            {
                if (CheckBox1.Checked == true && CheckBox2.Checked == true)
                {
                    aihao = "唱歌，体育";
                }
                else
                {
                    if (CheckBox1.Checked == true)
                        aihao = "唱歌";
                    else
                        aihao = "体育";
                }

            }
            else
            {


                aihao = "";



            }



            UserModel ud = new UserModel(userName.Text.Trim());
            UserBLL ub = new UserBLL();
            int lntUserln = ub.checkzc(ud);
        
            if (lntUserln < 1)
            {

                ud.Name = this.userName.Text.Trim();
                ud.Pwd = this.userPwd.Text.Trim();
                ud.Sex = this.Xb.SelectedValue.Trim();
                ud.QQ1 = this.QQ.Text.Trim();
                ud.Email1 = this.Email.Text.Trim();
                ud.Phone = this.dianhuao.Text.Trim();
                ud.Hobby = aihao;
                ud.Podcast = this.podcast.Text.Trim();
                ub.Reg(ud);
               
                Response.Write("<script language=javascript>alert('注册成功!返回首页');window.location.href='default.aspx';</" + "script>");

            }
            else
            {
                //该用户不是合法用户,则调用CommonClass类中的MassageBox方法,弹出提示框

                Response.Write("<script>alert('该用户名已存在，请换另一个吧!');history.go(-1);</script>");
            }




        }


        else
        {
            Response.Write("<script>alert('验证码输入有误,请重新输入!');history.go(-1);</script>");

            this.Label6.Text = CC.RandomNum(4);
        }
    }
    //重填按钮
    protected void Button2_Click(object sender, EventArgs e)
    {
        userName.Text = userPwd.Text = QQ.Text = Email.Text = dianhuao.Text = podcast.Text = "";
    }
   
}
