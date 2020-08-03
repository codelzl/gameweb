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
using BLL;


public partial class rjym : System.Web.UI.Page
{
    CommonClass CC = new CommonClass();
    NewsBLL nb = new NewsBLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            bind();
        }
    }
    string strStyle;
    protected void bind()
    {

        int n = Convert.ToInt32(Request.QueryString["ID"]);
        switch (n)
        {
            case 1:
                strStyle = "网站公告";
                this.Title = "游戏资讯网" + strStyle;

                break;
            case 2:
                strStyle = "大陆游戏";
                this.Title = "游戏资讯网" + strStyle;

                break;
            case 3:
                strStyle = "国外游戏";
                this.Title = "游戏资讯网" + strStyle;

                break;
            case 4:
                strStyle = "新游资讯";
                this.Title = "游戏资讯网" + strStyle;

                break;
            case 5:
                strStyle = "八卦休闲";
                this.Title = "游戏资讯网" + strStyle;

                break;
            case 6:
                strStyle = "游戏产业";
                this.Title = "游戏资讯网" + strStyle;

                break;
            case 7:
                strStyle = "游戏视频";
                this.Title = "游戏资讯网" + strStyle;

                break;
            case 8:
                strStyle = "游戏产业";
                this.Title = "游戏资讯网" + strStyle;

                break;
            case 9:
                strStyle = "网站公告";
                this.Title = "游戏资讯网" + strStyle;

                break;

        }
        //取得当前页的页码
        int curpage = Convert.ToInt32(this.labPage.Text);
        //使用PagedDataSource类实现DataList控件的分页功能
        PagedDataSource ps = new PagedDataSource();
        //获取数据集
        DataSet ds = nb.selectstyle(strStyle);
        ps.DataSource = ds.Tables["tbNews"].DefaultView;
        //获取或设置指示是否启用分页的值
        ps.AllowPaging = true;
        //显示的数量
        ps.PageSize = 14;
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
        this.dlNews.DataSource = ps;
        this.dlNews.DataKeyField = "id";
        this.dlNews.DataBind();
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

    protected void dlNews_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
