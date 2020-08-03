<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WZ_jbxx.aspx.cs" Inherits="admin_WZ_jbxx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  
    <title><%=Title%></title>

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
      
                
                
                
                
                
                
                
                
                
                style="padding: 10px; FLOAT: left; BACKGROUND-IMAGE: url('images/main_hb.gif'); COLOR: white; BACKGROUND-REPEAT: repeat-x; HEIGHT: 13px; TEXT-ALIGN:">网站基本信息</SPAN><SPAN 
      
                
                
                
                
                
                
                
                
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
       
       <!--网站基本信息-->
       <table width="100%" border="0" cellspacing="2" cellpadding="0">
  <tr>
    <td colspan="2" align="center" class="Login1" height="25"></td>
  </tr>
  <tr>
    <td align="center" class="Login2" width="15%">网站标题：</td>
    <td align="left" class="Login2">
        <asp:TextBox ID="WZ_Title" runat="server" Width="626px" Height="90px" 
            TextMode="MultiLine"></asp:TextBox>
                                         </td>
  </tr>
  <tr>
    <td align="center" class="Login2">网站描述:</td>
    <td align="left" class="Login2" style="width:600px;">
        <asp:TextBox ID="WZ_miaoshu" runat="server" Width="629px" Height="90px" 
            TextMode="MultiLine"></asp:TextBox>
                                         </td>
  </tr>
  <tr>
    <td align="center" class="Login2">网站版权:</td>
    <td align="left" class="Login2" style="width:600px;">
        <asp:TextBox ID="WZ_banqian" runat="server" Width="626px" Height="90px" 
            TextMode="MultiLine"></asp:TextBox>
                                         </td>
  </tr>
   
  

  <tr>
<td colspan="2" align="center" class="Login1" height="25">
    <asp:Button ID="Button1" runat="server" Text="更新" onclick="Button1_Click"  /> 
    <asp:Button ID="Button2" runat="server" Text="重置" />
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
