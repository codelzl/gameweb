using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Web.SessionState;
using System.Diagnostics;
using System.IO;
using System.Data.SqlClient;
using System.Text;

/// <summary>
///CommonClass 的摘要说明
/// </summary>
public class CommonClass
{
	public CommonClass()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
  
    /// <summary>
    /// 连接数据库
    /// </summary>
    /// <returns>返回SqlConnection对象</returns>

    public SqlConnection GetConnection()
    {
        string myStr = ConfigurationManager.AppSettings["ConnectionString"].ToString();
        SqlConnection myConn = new SqlConnection(myStr);
        return myConn;
    }
    /// <summary>
    /// 说明：GetDataSet数据集，返回数据源的数据集
    ///	返回值：数据集DataSet
    ///	参数：sqlStr SQL字符串，TableName 数据表名称
    /// </summary>

    public System.Data.DataSet GetDataSet(string sqlStr, string TableName)
    {
        SqlConnection myConn = GetConnection();

        myConn.Open();
        SqlDataAdapter adapt = new SqlDataAdapter(sqlStr, myConn);
        DataSet ds = new DataSet();
        adapt.Fill(ds, TableName);
        myConn.Close();
        return ds;
    }
    /// <summary>
    /// 说明：ExecSQL用来执行SQL语句。
    ///	返回值：操作是否成功(True\False)。
    ///	参数：sqlStr SQL字符串
    /// </summary>
    public Boolean ExecSQL(string sqlStr)
    {
        SqlConnection myConn = GetConnection();
        myConn.Open();
        SqlCommand myCmd = new SqlCommand(sqlStr, myConn);
        try
        {
            myCmd.ExecuteNonQuery();
            myConn.Close();
        }
        catch
        {
            myConn.Close();
            return false;
        }
        return true;
    }
    /// <summary>
    /// 说明：提示消息窗口。
    /// 
    /// </summary>
    public static void ShowAndRedirect(System.Web.UI.Page page, string msg, string url)
    {
        StringBuilder Builder = new StringBuilder();

        Builder.Append("<script language='javascript' defer>");
        Builder.AppendFormat("alert('{0}');", msg);
        Builder.AppendFormat("top.location.href='{0}'", url);
        Builder.Append("</script>");
        page.RegisterStartupScript("message", Builder.ToString());

    }
    /// <summary>
    /// 说明：MessageBox用来在客户端弹出对话框。
    /// 参数：TxtMessage 对话框中显示的内容。
    /// </summary>
    public string MessageBox(string TxtMessage ,string Fanhui)
    {
        string str;
        str = "<script language=javascript>alert('" + TxtMessage + "','"+Fanhui+"')</script>";
        return str;
    }
    /// <summary>
    /// 说明：MessageBox用来在客户端弹出对话框。
    /// 参数：TxtMessage 对话框中显示的内容。
    /// </summary>
    public string MessageBox(string TxtMessage)
    {
        string str;
        str = "<script language=javascript>alert('" + TxtMessage + "')</script>";
        return str;
    }

    /// <summary>
    /// 实现随机验证码
    /// </summary>
    /// <param name="n">显示验证码的个数</param>
    /// <returns>返回生成的随机数</returns>
    public string RandomNum(int n) //
    {
        //定义一个包括数字、大写英文字母和小写英文字母的字符串
        string strchar = "0,1,2,3,4,5,6,7,8,9";
        //将strchar字符串转化为数组
        //String.Split 方法返回包含此实例中的子字符串（由指定Char数组的元素分隔）的 String 数组。
        string[] VcArray = strchar.Split(',');
        string VNum = "";
        //记录上次随机数值，尽量避免产生几个一样的随机数           
        int temp = -1;                       
        //采用一个简单的算法以保证生成随机数的不同
        Random rand = new Random();
        for (int i = 1; i < n + 1; i++)
        {
            if (temp != -1)
            {
                //unchecked 关键字用于取消整型算术运算和转换的溢出检查。
                //DateTime.Ticks 属性获取表示此实例的日期和时间的刻度数。
                rand = new Random(i * temp * unchecked((int)DateTime.Now.Ticks));
            }
            //Random.Next 方法返回一个小于所指定最大值的非负随机数。
            int t = rand.Next(10);
            if (temp != -1 && temp == t)
            { 
                return RandomNum(n);
            }
            temp = t;
            VNum += VcArray[t];
        }
        return VNum;//返回生成的随机数
    }
    /// <summary>
    /// 实现自动编号
    /// </summary>
    /// <param name="FieldName">自动编号的字段名</param>
    /// <param name="TableName">表名</param>
    /// <returns>返回编号</returns>
    public int GetAutoID(string FieldName, string TableName)
    {
        SqlConnection myConn = GetConnection();
        SqlCommand myCmd = new SqlCommand("select Max(" + FieldName + ") as MaxID from " + TableName, myConn);
        SqlDataAdapter dapt = new SqlDataAdapter(myCmd);
        DataSet ds = new DataSet();
        dapt.Fill(ds);
        if (ds.Tables[0].Rows[0][0].ToString() == "")
        {
            return 1;
        }
        else
        {
            int IntFieldID = Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString()) + 1;
            return (Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString()) + 1);
        }
    }
   
}
