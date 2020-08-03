using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using BLL;



public partial class admin_Bianji : System.Web.UI.Page
{
    CommonClass CC = new CommonClass();
    NewClassBLL nc = new NewClassBLL();
    NewsBLL nb = new NewsBLL();
    public void Dro()
    {
        SqlConnection Conn = CC.GetConnection();
        Conn.Open();

        SqlDataAdapter Da = nc.AllClass();

        DataSet Ds = new DataSet();

        Da.Fill(Ds, "NewClass");

        fenlei.DataSource = Ds.Tables[0].DefaultView;

        fenlei.DataTextField = "Class";

        fenlei.DataBind();
    }
    //用以获得传过来列表项的值
    public void Liebiao()
    {
        string ClassName = fenlei.SelectedValue;  // 获取列表控件中选定项的值，或选择列表控件中包含指定值的项。

        SqlConnection Class_Conn = CC.GetConnection();

        Class_Conn.Open();

        SqlCommand ClassCmd = new SqlCommand("select * from tb_NewClass where Class='" + ClassName + "'", Class_Conn);

        SqlDataReader ClassDr = ClassCmd.ExecuteReader();  //执行查询并获取Sqldatareader的结果
        if (ClassDr.Read())  //读取,阅读下一条记录
        {
            HiddenField1.Value = ClassDr["ID"].ToString();
        }
        Class_Conn.Close();

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)  //判断页面是否首次加载
        {
            string ID=Request.QueryString["ID"];
            DataSet ds = nb.findbyID(ID);
            DataRow[] row = ds.Tables["tbNews"].Select();
            foreach (DataRow rs in row)
            {
                this.Title.Text = rs["Title"].ToString();
                Dro();
                this.Liayuan.Text = rs["Liayuan"].ToString();
                this.txt_content.Text = rs["Content"].ToString();
  
            }
        }
        Liebiao();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string title = this.Title.Text;
        string content = this.txt_content.Text;
        string liayuan = this.Liayuan.Text;
        string type = this.fenlei.SelectedValue.ToString();
        string id = Request.QueryString["ID"];
        nb.update(title, content, liayuan, type, id);
        Response.Write(CC.MessageBox("修改成功", "Bianji.aspx"));
    }
}
