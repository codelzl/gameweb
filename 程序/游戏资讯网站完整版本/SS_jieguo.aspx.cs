using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Text;
using BLL;

public partial class SS_jieguo : System.Web.UI.Page
{
    CommonClass CC = new CommonClass();
    NewsBLL nb = new NewsBLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            this.labPage.Text = "1";

            this.contrlRepeater();
        }
    }
    //该方法实现显示搜索结果，分页
    public void contrlRepeater()
    {


        if (Request.QueryString["Class"].ToString() == "全部内容")
        {
            string Class1 = Request.QueryString["Class"].ToString();
           

            SqlDataAdapter Da = nb.all();

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
        else
        {
            string Title = Request.QueryString["Title"].ToString();
            string Class = Request.QueryString["Class"].ToString();
       
            string strSql=nb.search(Class, Title);
            SqlConnection Conn = CC.GetConnection();

            SqlDataAdapter Da = new SqlDataAdapter(strSql, Conn);

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
