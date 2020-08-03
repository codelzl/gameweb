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


public partial class _Default : System.Web.UI.Page
{
    CommonClass CC = new CommonClass();
    WzxxBLL wb = new WzxxBLL();
    NewsBLL nb = new NewsBLL();
    ChainBLL cb = new ChainBLL();
    //网站基本信息显示
    protected void Wzxx()
    {
        DataSet ds = wb.pageload();
        DataRow[] row = ds.Tables["tbNews"].Select();
        foreach (DataRow rs in row)
        {
            Session["Title"] = rs["Title"].ToString();
            Session["meta"] = rs["meta"].ToString();
        }

    }
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            Session["user"] = "";
            Wzxx();  //显示网站标题信息方法
            //首次加载把新闻类别绑定到列表
            SqlConnection Conn = CC.GetConnection();

            SqlDataAdapter Da = new SqlDataAdapter("select * from tb_NewClass order by St Asc", Conn);

            DataSet Ds = new DataSet();

            Da.Fill(Ds, "NewClass");

            fenlei.DataSource = Ds.Tables[0].DefaultView;

            fenlei.DataTextField = "Class";

            fenlei.DataBind();


            //友情文字
            YQLJ_wenzi.DataSource = cb.all();
            YQLJ_wenzi.DataBind();
            
            //版权信息
            banqian.DataSource = wb.loadbyid();
            banqian.DataBind();

            //热门文章
            News_dwyl.DataSource = nb.topid7();
            News_dwyl.DataBind();

        }
    }
   



   
    //搜索按钮
    protected void Button3_Click(object sender, EventArgs e)
    {

        string Title = this.Title.Text.Trim();
        string Class = this.fenlei.SelectedValue.ToString();
        if (Title == "" && Class != "")
        {
            Response.Redirect("SS_jieguo.aspx?Title=" + Title + "&Class=" + Class);
        }
        else
            Response.Redirect("SS_jieguo.aspx?Title=" + Title + "&Class=" + Class);
    }
   
    protected void banqian_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }



    protected void YQLJ_wenzi_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }
}
