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

public partial class admin_YQ_textling : System.Web.UI.Page
{
    CommonClass CC = new CommonClass();
    ChainBLL cb = new ChainBLL();


    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string Title = this.Title.Text;

        string Url = this.Url.Text;

        
        SqlConnection Conn = CC.GetConnection();
        Conn.Open();

       
            if (Title.Trim() != "" && Url.Trim() != "")
            {
           
                  cb.insert(Title, Url);
               
                Conn.Close();
                Response.Write(CC.MessageBox("添加成功"));
                

            }
            else
            {
                Response.Write("<script>alert('链接标题或者链接网址不能为空');history.go(-1);</script>");
                this.Title.Focus();
            }
        
       
        Conn.Close();

    }
}
