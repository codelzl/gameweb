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
using System.IO;
using BLL;

public partial class admin_User_liuyan_guanli : System.Web.UI.Page
{
    CommonClass CC = new CommonClass();
    MessageBLL mb = new MessageBLL();
    public static int IntSearch_2 = 1;
    protected void Page_Load(object sender, EventArgs e)
    {
       if(!IsPostBack)
       {
           bind();
       }
    }
    protected void bind()
    {
        //调用CommonClass类的GetDataSet方法，查询需要管理的新闻信息，并绑定GridView控件上
        this.gvNewsList.DataSource = mb.loadbyid();
        //this.gvNewsList.DataKeyNames = new string[] { "ID" };
        this.gvNewsList.DataBind();
    }
    protected void searchBind()
    {
        //使用Like运算符，定义一个查询字符串
       

        //调用CommonClass类的GetDataSet方法，获取符合条件的信息
        //将获取的信息绑定到数据控件GridView控件中
        gvNewsList.DataSource = mb.load();
      
        gvNewsList.DataBind();

    }
   
    protected void gvNewsList_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvNewsList.PageIndex = e.NewPageIndex;
        if (IntSearch_2 == 1)
        {
            this.searchBind();
        }
        else
        {
            bind();
        }
    }
    protected void gvNewsList_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Cells[2].Text = Convert.ToDateTime(e.Row.Cells[2].Text).ToShortDateString();
        }
    }
   
    //Delete方法用以删除留言的内容
    protected void Delete_liuyan(string s)
    {
        mb.Delete(s);
       
    }
   
    //全选按钮事件
    protected void Button2_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < gvNewsList.Rows.Count; i++)
        {
            CheckBox check = (CheckBox)gvNewsList.Rows[i].FindControl("CheckBox1");
            check.Checked = true;
        }
    }
    //删除按钮事件
    protected void Delete_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < gvNewsList.Rows.Count; i++)
        {
            //首先查找到复选框
            CheckBox check = (CheckBox)gvNewsList.Rows[i].FindControl("CheckBox1");
            if (check.Checked)
            {
                Delete_liuyan(gvNewsList.Rows[i].Cells[0].Text);//删除复选框选中的行
            }

        }
       
        Response.Write(CC.MessageBox("删除成功!"));
        bind();
    }
   
}
