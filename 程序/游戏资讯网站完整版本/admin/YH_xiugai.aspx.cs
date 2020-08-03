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
using Model;
using BLL;

public partial class admin_YH_xiugai : System.Web.UI.Page
{
    CommonClass CC = new CommonClass();
    AdminBLL AB = new AdminBLL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)  //判断页面是否首次加载
        {
            string ID = Request.QueryString["ID"];
            DataSet ds= AB.load(ID);
            DataRow[] row = ds.Tables["tbNews"].Select();
            foreach (DataRow rs in row)
            {
                this.Name.Text = rs["Name"].ToString();
           }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       int lntUserln= AB.checkxg(pwd_1.Text.Trim());
        
    
        if (lntUserln > 0)
        {
            //该密码合格的
            AB.updatepwd(this.pwd_2.Text, this.Name.Text);
            Response.Write(CC.MessageBox("修改成功"));
            
        }
        else
        {
            //该用户不是合法用户,则调用CommonClass类中的MassageBox方法,弹出提示框
            Response.Write(CC.MessageBox("对不起!请确定你原来的密码是否正确!", "YH_xiugai.aspx"));
        }
    }
}
