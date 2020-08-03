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



public partial class admin_WZ_jbxx : System.Web.UI.Page
{
    CommonClass CC = new CommonClass();
    WzxxBLL wb = new WzxxBLL();
    public string Title;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)  //判断页面是否首次加载
        {
            DataSet ds = wb.pageload();
            DataRow[] row = ds.Tables["tbNews"].Select();
            foreach (DataRow rs in row)
            {
                this.WZ_Title.Text = rs["Title"].ToString();
               // Title = rs["Title"].ToString();
                
                this.WZ_miaoshu.Text = rs["meta"].ToString();
                this.WZ_banqian.Text = rs["banqian"].ToString();


            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string title = this.WZ_Title.Text;
        string meta = this.WZ_miaoshu.Text;
        string banquan = this.WZ_banqian.Text;
        wb.update(title,meta,banquan);
        Response.Write(CC.MessageBox("更新成功!"));
       


    }
}
