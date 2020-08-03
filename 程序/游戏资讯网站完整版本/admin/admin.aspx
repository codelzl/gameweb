<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>后台登录</title>
   
    
    <link href="images/login.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            height: 35px;
        }
        .style2
        {
            height: 35px;
            widows:80px;
        }
        .style6
        {
            width: 54px;
            height:40px;
        }
        .style7
        {
            width: 90px;
            height: 33px;
        }
        .style8
        {
            width: 7px;
        }
        .label
        {
        	text-align:center;
        	 letter-spacing:5px;
            margin-left: 0px;
            background-image:url('images/yzm01.gif');
        }
        .butt
{
	background-image: url( 'images/botton_001.gif' );
	width:60px;
	height:24px;
	color:#fff;
}


    </style>
</head>
<body>
    <form id="form1" runat="server">
     <div id="div1">
      <div id="div2">
      <table border="0" cellpadding="2" cellspacing="0" style="width: 360px; ">
      <tr><td style="width:80px;color:#fff; text-align:right;">用户名:</td>
      <td class="style2" colspan="3">
          <asp:TextBox ID="txtAdminName" runat="server" Width="150px" Height="20px" 
               BorderStyle="NotSet" Font-Bold="True" Font-Size="14pt" ForeColor="Red" ></asp:TextBox>
      </td>
      </tr>
      <tr><td style="width:80px;color:#fff; text-align:right;">密&nbsp;&nbsp;&nbsp;&nbsp;码:</td><td class="style1" colspan="3">
          <asp:TextBox ID="txtAdminPwd" runat="server"  Width="150px" TextMode="Password" Height="20px" Font-Bold="True" Font-Size="14pt" ForeColor="Red"></asp:TextBox></td></tr>
          <tr>
          <td style="width:80px; color:#fff; text-align:right;">验证码:</td>
          <td class="style7">
              <asp:TextBox ID="txtAdminCode" runat="server" Width="90px" Height="20px" Font-Bold="True" Font-Size="14pt" ForeColor="Red"></asp:TextBox>
              </td>
          <td class="style8">
              <asp:Label ID="Label1" runat="server" Text="Label"
                  Font-Size="14pt" ForeColor="White" Height="25px" Width="60px" 
                  CssClass="label"></asp:Label>
              </td>
          </tr>
      <tr><td class="style6">
          &nbsp;</td><td colspan="2">
          <samp style=" margin:0 10px;">
                             <asp:Button ID="btnLogin" runat="server" Text="确定" 
                                 onclick="btnLogin_Click"  CssClass="butt" BorderStyle="None" /></samp>
          
          <samp><asp:Button ID="btnCancel" runat="server" Text="职消" CssClass="butt" BorderStyle="None" /></samp>
          </td><td>
              
              </td></tr>
      </table>
      </div>
     </div>
    </form>
</body>
</html>
