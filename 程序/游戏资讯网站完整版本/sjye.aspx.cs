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
public partial class sjye : System.Web.UI.Page
{
    CommonClass CC = new CommonClass();
    ContelBLL cb = new ContelBLL();
    NewsBLL nb = new NewsBLL();
    string PL;
    int Xs = 1;
    protected void Page_Load(object sender, EventArgs e)
    {
        string ID = Request.QueryString["ID"].ToString();
        DataSet ds = nb.findbyID(ID);
        DataRow[] row = ds.Tables["tbNews"].Select(); //获取新闻表中的集合,用以评论新闻时赋予评论表
        foreach (DataRow rs in row)
        {
            Session["user01"] = rs["pinglun"].ToString();
            Session["Title"] = rs["Title"].ToString();
            Session["ID"] = rs["ID"].ToString();
            PL = rs["Title"].ToString();

        }
        if (!IsPostBack)
        {
            this.Label2.Text = CC.RandomNum(4);    //获取验证码
            this.labPage.Text = "1";
            this.contrlRepeater();

        }
        //新闻正文
        Repeater1.DataSource = nb.topid(ID);
        Repeater1.DataBind();
    }
    //发表评论按钮事件
    protected void Button1_Click(object sender, EventArgs e)
    {
        RegisterStartupScript("true", "<script>alert('评论成功！')</script>");
        string Name = this.Name.Text.Trim();
        string Content = this.Content.Text.Trim();
        string Title = (string)Session["Title"]; //新闻标题
        string xianshi = (string)Session["user01"]; //显示评论
        string ID = (string)Session["ID"];
        if (TextBox3.Text.Trim() == Label2.Text.Trim())
        {
            
            cb.addcontent(Name, Content, Title, xianshi, ID);
            RegisterStartupScript("true", "<script>alert('评论成功！')</script>");
            this.Name.Text = this.Content.Text = this.TextBox3.Text = "";

            this.contrlRepeater();
        }
        else
        {
            Response.Write("<script>alert('输入的验证码有误,请重新输入!');history.go(-1);</script>");


            this.Label2.Text = CC.RandomNum(4);    //获取验证码

        }



    }
    /// <summary>
    /// 实现分页
    /// </summary>
    public void contrlRepeater()
    {
        SqlConnection Conn = CC.GetConnection();

        SqlDataAdapter Da = cb.selectbyt(PL, Xs);

        DataSet Ds = new DataSet();

        Da.Fill(Ds, "NewView");

        //分页 ^^

        PagedDataSource pds = new PagedDataSource();

        pds.DataSource = Ds.Tables["NewView"].DefaultView;

        pds.AllowPaging = true;

        pds.PageSize = 8;

        pds.CurrentPageIndex = Convert.ToInt32(this.labPage.Text) - 1;

        Repeater2.DataSource = pds;

        LabCountPage.Text = pds.PageCount.ToString();

        labPage.Text = (pds.CurrentPageIndex + 1).ToString();

        this.lbtnpritPage.Enabled = true;

        this.lbtnFirstPage.Enabled = true;

        this.lbtnNextPage.Enabled = true;

        this.lbtnDownPage.Enabled = true;

        if (pds.CurrentPageIndex < 1)
        {
            this.lbtnpritPage.Enabled = false;
            this.lbtnFirstPage.Enabled = false;
        }
        if (pds.CurrentPageIndex == pds.PageCount - 1)
        {
            this.lbtnNextPage.Enabled = false;
            this.lbtnDownPage.Enabled = false;
        }
        Repeater2.DataBind();
    }
    protected void lbtnpritPage_Click(object sender, EventArgs e)
    {
        this.labPage.Text = Convert.ToString(Convert.ToInt32(labPage.Text) - 1);
        this.contrlRepeater();
    }
    protected void lbtnFirstPage_Click(object sender, EventArgs e)
    {
        this.labPage.Text = "1";
        this.contrlRepeater();
    }
    protected void lbtnDownPage_Click(object sender, EventArgs e)
    {
        this.labPage.Text = this.LabCountPage.Text;
        this.contrlRepeater();
    }

    protected void lbtnNextPage_Click(object sender, EventArgs e)
    {
        this.labPage.Text = Convert.ToString(Convert.ToInt32(labPage.Text) + 1);
        this.contrlRepeater();
    }


}
