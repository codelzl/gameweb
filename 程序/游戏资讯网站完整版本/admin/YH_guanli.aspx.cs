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
using Model;
using BLL;

public partial class admin_YH_guanli : System.Web.UI.Page
{
    CommonClass CC = new CommonClass();
    AdminBLL AB = new AdminBLL();
    protected void Page_Load(object sender, EventArgs e)
    {
         //Repeater1.DataSource = AB.loadbyID(ID);
         //Repeater1.DataBind();
    }
    /// <summary>
    /// 删除管理员方法
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void DelComm_Click(object sender, CommandEventArgs e)
    {
        int ID = Convert.ToInt32(e.CommandName);

        AB.delete(ID);

        Response.Redirect("YH_guanli.aspx");
    }
}
