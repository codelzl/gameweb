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
using BLL;

using System.Data.SqlClient;

public partial class admin_Tiaojia : System.Web.UI.Page
{
    CommonClass CC = new CommonClass();
    NewsBLL nb = new NewsBLL();
    SqlConnection sqlcon;
    NewClassBLL nc = new NewClassBLL();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        //首次加载把新闻类别绑定到列表
        if (!IsPostBack)
        {
            SqlConnection Conn = CC.GetConnection();

           SqlDataAdapter Da = nc.AllClass();

            DataSet Ds = new DataSet();

            Da.Fill(Ds, "NewClass");

            fenlei.DataSource = Ds.Tables[0].DefaultView;

            fenlei.DataTextField = "Class";

            fenlei.DataBind();
        }
    }
    //添加新闻
    protected void Button1_Click(object sender, EventArgs e)
    {
        string filePath = "", fileExtName = "", mFileName, mPath;
        int pinglun;  //是否允许评论,1代表允许,0代表不允许
       
        if (this.Title.Text != "")
        {
            if ("" != FileUpload1.PostedFile.FileName)
            {

                if (RadioButton1.Checked == true)
                {
                    pinglun = 1;
                }
                else
                {
                    pinglun = 0;
                }
                filePath = FileUpload1.PostedFile.FileName;   //获取文件名称
                fileExtName = filePath.Substring(filePath.LastIndexOf(".") + 1);
                try
                {
                    
                    mPath = Server.MapPath("../upFile/");
                    mFileName = filePath.Substring(filePath.LastIndexOf("\\") + 1);
                    FileUpload1.PostedFile.SaveAs(mPath + mFileName);   //保存上传的文件
                    string Title, Content, Style, Liayuan, imgsur;
                    Title = this.Title.Text.Trim();
                    Content = this.txt_content.Text.Trim();
                    Style = this.fenlei.SelectedValue.Trim();
                    Liayuan = this.LiaYuan.Text.Trim();
                    imgsur = mFileName;
                
                    nb.insert(Title, Content, Style, Liayuan, imgsur, pinglun);
                   
                    Response.Write("<script language=javascript>alert('添加成功！');window.location.href='Tiaojia.aspx';</" + "script>");

                  
                }
                catch (Exception error)
                {
                    Response.Write("<script>alert('" + error.ToString() + "')</script>");
                }
            }
            else
            {
                if (RadioButton1.Checked == true)
                {
                    pinglun = 1;
                }
                else
                {
                    pinglun = 0;
                }

                string img = "0";   //图片路径信息
                string Title, Content, Style, Liayuan, imgsur;
                Title = this.Title.Text.Trim();
                Content = this.txt_content.Text.Trim();
                Style = this.fenlei.SelectedValue.Trim();
                Liayuan = this.LiaYuan.Text.Trim();
                nb.insert(Title, Content, Style, Liayuan, img, pinglun);

                Response.Write("<script language=javascript>alert('添加成功！');</" + "script>");

                   
                


            }
           
        }
        else
        {

            
             Response.Write(CC.MessageBox("标题或者内容不能为空!"));

           
        }

    }
}
