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


public partial class admin_Newsclass_guanli : System.Web.UI.Page
{
    CommonClass CC = new CommonClass();
    NewClassBLL nc = new NewClassBLL();

    protected void Page_Load(object sender, EventArgs e)
    {


        Repeater1.DataSource = nc.loadbyid(ID);
        Repeater1.DataBind();
    }
    protected void DelComm_Click(object sender, CommandEventArgs e)
    {
        int ID = Convert.ToInt32(e.CommandName);

        nc.delete(ID);
       
        Repeater1.DataSource = nc.loadbyid(e.CommandName);
        Repeater1.DataBind();

    }
}
