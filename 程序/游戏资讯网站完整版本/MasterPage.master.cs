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
using BLL;
using Model;

public partial class MasterPage : System.Web.UI.MasterPage
{
    CommonClass CC = new CommonClass();
    WzxxBLL wb = new WzxxBLL();
    ChainBLL cb = new ChainBLL();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            //版权信息
            banqian.DataSource = wb.loadbyid();
            banqian.DataBind();
            //友情文字
            YQLJ_wenzi.DataSource = cb.all();
            YQLJ_wenzi.DataBind();
        
        }
    }

    protected void YQLJ_wenzi_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }


    protected void Button3_Click(object sender, EventArgs e)
    {

    }
}
