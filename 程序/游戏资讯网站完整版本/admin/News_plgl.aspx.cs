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

public partial class admin_News_plgl : System.Web.UI.Page
{
    CommonClass CC = new CommonClass();
    ContelBLL cb = new ContelBLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            this.labPage.Text = "1";
            this.contrlRepeater();
           
        }
    }
    public void contrlRepeater()
    {
        SqlConnection Conn = CC.GetConnection();

        SqlDataAdapter Da = cb.selectByid();

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
    protected void DelComm_Click(object sender, CommandEventArgs e)
    {
        int ID = Convert.ToInt32(e.CommandName);

        cb.delete(ID);

        Response.Redirect("./News_plgl.aspx");
    }
}
