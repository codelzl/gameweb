using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

public partial class right : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Name.Text = Server.MachineName;

            ip.Text = Request.UserHostAddress;

            Time.Text = DateTime.Now.ToString();

            Dk.Text = Request.ServerVariables["SERVER_PORT"];

            Os.Text = Environment.OSVersion.ToString().Remove(0, 10);

            Iis.Text = Request.ServerVariables["SERVER_SOFTWARE"];
        }
    }
}
