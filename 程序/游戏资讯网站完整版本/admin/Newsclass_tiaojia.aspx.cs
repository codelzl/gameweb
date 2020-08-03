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

public partial class admin_Newsclass_tiaojia : System.Web.UI.Page
{
    CommonClass CC = new CommonClass();
    NewClassBLL nc = new NewClassBLL();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (this.Class_name.Text == "" || this.St.Text == "")
        {
            Response.Write(CC.MessageBox("分类名称或者序号不能为空!"));
        }
        else
        {
           
             string   Class_name= this.Class_name.Text.Trim();
             string   St = this.St.Text.Trim();
            nc.insert(Class_name, St);
            Response.Write(CC.MessageBox("添加成功！"));
        }
    }
}
