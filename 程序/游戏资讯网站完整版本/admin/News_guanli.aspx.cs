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

public partial class admin_News_guanli : System.Web.UI.Page
{
    CommonClass CC = new CommonClass();
    NewClassBLL nc = new NewClassBLL();
    NewsBLL nb = new NewsBLL();
    //定义一个静态的全局变量，用于标识是否已单击站内搜索控钮
    public static int IntSearch;
    //绑定列表
    public void Dro()
    {
        SqlDataAdapter Da = nc.AllClass();

        DataSet Ds = new DataSet();

        Da.Fill(Ds, "NewClass");

        ddlNewsStyle.DataSource = Ds.Tables[0].DefaultView;

        ddlNewsStyle.DataTextField = "Class";

        ddlNewsStyle.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            IntSearch = 0;
            this.labPage.Text = "1";
            this.contrlRepeater();
            Dro();
        }
    }
    public void contrlRepeater()
    {
      

        SqlDataAdapter Da = nb.bydesc();

        DataSet Ds = new DataSet();

        Da.Fill(Ds, "NewView");

        //分页 ^^

        PagedDataSource pds = new PagedDataSource();

        pds.DataSource = Ds.Tables["NewView"].DefaultView;

        pds.AllowPaging = true;

        pds.PageSize = 12;

        pds.CurrentPageIndex = Convert.ToInt32(this.labPage.Text) - 1;

        Repeater1.DataSource = pds;

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
        Repeater1.DataBind();
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
    //删除按钮
    protected void DelComm_Click(object sender, CommandEventArgs e)
    {
        int ID = Convert.ToInt32(e.CommandName);

        SqlConnection Conn = CC.GetConnection();

        Conn.Open();

        SqlCommand Cmd = new SqlCommand("delete from tb_News where ID=" + ID, Conn);
        string sqlStr = "select imgsur from tb_News where ID=" + ID;

        DeleteTFN(sqlStr);

        Cmd.ExecuteNonQuery();


        Conn.Close();
        //contrlRepeater();
        //Response.Redirect("./News_guanli.aspx");

        this.searchBind();
    }
    //DeleteTFN用以删除新闻图片
    protected void DeleteTFN(string sqlStr)
    {
        //打开数据库
        SqlConnection myConn = CC.GetConnection();
        myConn.Open();
        SqlDataAdapter dapt = new SqlDataAdapter(sqlStr, myConn);
        DataSet ds = new DataSet();
        dapt.Fill(ds, "upFile");
        //获取指定文件的路径
        string strFilePath = Server.MapPath("../") + ds.Tables["upFile"].Rows[0][0].ToString();
        //调用File类的Delete方法，删除指定文件
        File.Delete(strFilePath);
        ds.Dispose();
        myConn.Close();
    }
    //搜索语句
    protected void searchBind()
    {
        //使用Like运算符，定义一个查询字符串
        string style = this.ddlNewsStyle.SelectedValue.ToString();
        string txtkey = this.txtKey.Text;
        string strSql = nb.search(style, txtkey);
    
        //调用CommonClass类的GetDataSet方法，获取符合条件的新闻信息
        //将获取的新闻信息绑定到数据控件GridView控件中
        Repeater1.DataSource = CC.GetDataSet(strSql, "tbNews");
        //Repeater1.DataKeyNames = new string[] { "id" };
        Repeater1.DataBind();

    }
    //搜索按钮事件
    protected void Button1_Click(object sender, EventArgs e)
    {
        IntSearch = 1;
        this.searchBind();
    }
    //全部显示按钮事件
    protected void Button2_Click(object sender, EventArgs e)
    {
        string strSql = "select * from tb_News ";
        Repeater1.DataSource = CC.GetDataSet(strSql, "tbNews");
        Repeater1.DataBind();
       
    }
}
