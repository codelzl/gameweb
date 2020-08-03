<%@ Page Language="C#" AutoEventWireup="true" CodeFile="YH_xiugai.aspx.cs" Inherits="admin_YH_xiugai" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>编辑管理员</title>
    <style type="text/css">
    
    </style>
<link href="Css/admin.css" rel="stylesheet" type="text/css" />   
</head>
<body class="Body">
     <form id="form1" runat="server">
     <div>
    <TABLE height="500px;" cellSpacing=0 cellPadding=0 width="100%" border=0>
    <TBODY>
      <TR 
  style="BACKGROUND-IMAGE: url(images/bg_header.gif); BACKGROUND-REPEAT: repeat-x">
        <TD width=10 style="vertical-align: top"><SPAN 
      
                
                
                style="FLOAT: left; BACKGROUND-IMAGE: url('images/main_hl.gif'); WIDTH: 9px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 48px">
            </SPAN></TD>
        <TD><SPAN 
      
                
                
                
                
                
                
                style="FLOAT: left; BACKGROUND-IMAGE: url('images/main_hl2.gif'); WIDTH: 15px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 32px;">
            </SPAN><SPAN 
      
                
                
                
                
                
                
                
                
                
                style="padding: 10px; FLOAT: left; BACKGROUND-IMAGE: url('images/main_hb.gif'); COLOR: white; BACKGROUND-REPEAT: repeat-x; HEIGHT: 13px; TEXT-ALIGN:">管理员修改</SPAN><SPAN 
      
                
                
                
                
                
                
                
                
                style="FLOAT: left; BACKGROUND-IMAGE: url('images/main_hr.gif'); WIDTH: 60px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 48px">
            </SPAN></TD>
        <TD 
    style="BACKGROUND-POSITION: 49% bottom; BACKGROUND-IMAGE: url(images/main_rc.gif); background-repeat: no-repeat;" 
    width="10" ></TD>
      </TR>
      <TR>
        <TD style="BACKGROUND-IMAGE: url(images/main_ls.gif)"></TD>
        <TD 
    style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; COLOR: #566984; PADDING-TOP: 10px; BACKGROUND-COLOR: white; height:500px;" 
    vAlign=top align=middle>
       
       <!--编辑管理员账号-->
       <table width="100%;" border="0" cellspacing="2" cellpadding="0">
  <tr>
    <td colspan="2" align="center" class="Login1" height="25">编辑管理员</td>
  </tr>
  <tr>
    <td align="center" class="Login2">账&nbsp;&nbsp;&nbsp;&nbsp;号:</td>
    <td align="left" class="Login2">
        <asp:TextBox ID="Name" runat="server"></asp:TextBox>
                                         </td>
  </tr>
  <tr>
    <td align="center" class="Login2">旧的密码:</td>
    <td align="left" class="Login2" style="width:600px;">
       <asp:TextBox ID="pwd_1" runat="server"></asp:TextBox>
                                         </td>
  </tr>
  <tr>
    <td align="center" class="Login2">新的密码:</td>
    <td align="left" class="Login2" style="width:600px;">
        <asp:TextBox ID="pwd_2" runat="server"></asp:TextBox>
                                         </td>
  </tr>
   
  
<tr>
<td colspan="2" align="center" height="25"class="Login2">
  <asp:Button ID="Button1" runat="server" Text="确定" onclick="Button1_Click" />
      <asp:Button ID="Button2" runat="server" Text="取消" />
</td>
</tr>
  <tr>
<td colspan="2" align="center" class="Login1" height="25">
 
   </td>
  </tr>
</table>
     
      
       
        </TD>
        <TD style="BACKGROUND-IMAGE: url(images/main_rs.gif)"></TD>
      </TR>
      <TR 
  style="BACKGROUND-IMAGE: url(images/main_fs.gif); BACKGROUND-REPEAT: repeat-x" 
  height=10>
        <TD style="BACKGROUND-IMAGE: url(images/main_lf.gif)"></TD>
        <TD style="BACKGROUND-IMAGE: url(images/main_fs.gif)"></TD>
        <TD 
style="BACKGROUND-IMAGE: url(images/main_rf.gif)"></TD>
      </TR>
    </TBODY>
  </TABLE>
    </div>
    </form>
</body>
</html>
