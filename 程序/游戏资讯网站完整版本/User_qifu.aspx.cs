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
using BLL;

public partial class hainanlyd_User_qifu : System.Web.UI.Page
{
    CommonClass CC = new CommonClass();
    MessageBLL mb = new MessageBLL();
    public string user; //用户名

    protected void Page_Load(object sender, EventArgs e)
    {
        user = Request.QueryString["uu"].ToString();
        Session["Name"] = user;
        user_name.Text = user;
        if (!Page.IsPostBack)
        {

            //Wuser();   //获取用户头像
            bind();
            Label2.Text = CC.RandomNum(4);

        }
    }
    //实现分页
    protected void bind()
    {


        //取得当前页的页码
        int curpage = Convert.ToInt32(this.labPage.Text);
        //使用PagedDataSource类实现DataList控件的分页功能
        PagedDataSource ps = new PagedDataSource();
        //获取数据集
        DataSet ds = mb.loadbyiddesc();
        ps.DataSource = ds.Tables["tbNews"].DefaultView;
        //获取或设置指示是否启用分页的值
        ps.AllowPaging = true;
        //显示的数量
        ps.PageSize = 10;
        //取得当前页的页码
        ps.CurrentPageIndex = curpage - 1;
        this.lnkbtnUp.Enabled = true;  //上一页的ID "lnkbtnUP"
        this.lnkbtnNext.Enabled = true;  //下一页的ID lnkbtnNext
        this.lnkbtnBack.Enabled = true;  //最后一页的ID lnkbtnBack
        this.lnkbtnOne.Enabled = true;   //第一页的ID  lnkbtnOne
        if (curpage == 1)
        {
            //不显示第一页按钮
            this.lnkbtnOne.Enabled = false;
            //不显示上一页按钮
            this.lnkbtnUp.Enabled = false;
        }
        if (curpage == ps.PageCount)   //判断curpage是否等于总页数
        {
            //不显示下一页
            this.lnkbtnNext.Enabled = false;
            //不显示最后一页
            this.lnkbtnBack.Enabled = false;
        }
        //显示分页数量
        this.labBackPage.Text = Convert.ToString(ps.PageCount);
        //绑定DataList控件
        this.message_1.DataSource = ps;

        this.message_1.DataKeyField = "ID";
        this.message_1.DataBind();
    }
    //第一页
    protected void lnkbtnOne_Click(object sender, EventArgs e)
    {
        this.labPage.Text = "1";
        this.bind();
    }
    //上一页
    protected void lnkbtnUp_Click(object sender, EventArgs e)
    {
        this.labPage.Text = Convert.ToString(Convert.ToInt32(this.labPage.Text) - 1);
        this.bind();
    }
    //下一页
    protected void lnkbtnNext_Click(object sender, EventArgs e)
    {
        this.labPage.Text = Convert.ToString(Convert.ToInt32(this.labPage.Text) + 1);
        this.bind();
    }
    //最后一页
    protected void lnkbtnBack_Click(object sender, EventArgs e)
    {
        this.labPage.Text = this.labBackPage.Text;
        this.bind();
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }

    /// <summary>
    /// 
    /// 提交按钮事件
    /// </summary>

    protected void Button99_Click1(object sender, EventArgs e)
    {


    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Content.Text = "";
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        if (user_name.Text.Trim() == "")
        {

            Response.Write("<script language=javascript>alert('请先登录，才能留言哦！');window.location.href='User_donglu.aspx';</" + "script>");

        }
        else
        {
            if (this.Content.Text.Trim() == "")
            {
                Response.Write("<script>alert('内容不能为空!');history.go(-1);</script>");

            }
            else
            {
                if (TextBox3.Text.Trim() == Label2.Text.Trim()) //判断验证码是否正确
                {

                    string Uname, Ucontent;
                    Uname = this.user_name.Text.Trim();
                    Ucontent = this.Content.Text.Trim();

                    mb.insert(Uname, Ucontent);

                    Response.Write("<script language=javascript>alert('留言成功！');window.location.href='User_qifu.aspx?uu=" + user + "';</" + "script>");

                    TextBox3.Text = "";
                    message_1.DataSource = mb.loadbyiddesc();
                    message_1.DataBind();
                }
                else
                {

                    Response.Write("<script>alert('验证码输入有误,请重新输入!');history.go(-1);</script>");


                    this.Label2.Text = CC.RandomNum(4);
                }
            }

        }

    }
}
