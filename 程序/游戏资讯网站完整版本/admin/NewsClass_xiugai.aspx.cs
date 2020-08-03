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

public partial class admin_NewsClass_xiugai : System.Web.UI.Page
{
    CommonClass CC = new CommonClass();
    NewClassBLL nc = new NewClassBLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)  //判断页面是否首次加载
        {
            string ID= Request.QueryString["ID"];
            DataSet ds = nc.selectid(ID);
            DataRow[] row = ds.Tables["tbNews"].Select();
            foreach (DataRow rs in row)
            {
                this.Class_name.Text = rs["Class"].ToString();
                
                this.St.Text = rs["St"].ToString();
                

            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        string Class_name=this.Class_name.Text;
        string St=this.St.Text;
        string ID=Request.QueryString["ID"];
        nc.update(Class_name, St, ID);
        Response.Write(CC.MessageBox("修改成功", "NewsClass_guanli.aspx"));

    }
}
