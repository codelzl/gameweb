<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Bianji.aspx.cs" Inherits="admin_Bianji" %>

<%@ Register assembly="DotNetTextBox" namespace="DotNetTextBox" tagprefix="DNTB" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>资讯修改</title>
    <style type="text/css">
    body
    {
    	font-size:14px;
    	
    }
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
      
                
                
                
                
                
                
                
                
                
                style="padding: 10px; FLOAT: left; BACKGROUND-IMAGE: url('images/main_hb.gif'); COLOR: white; BACKGROUND-REPEAT: repeat-x; HEIGHT: 13px; TEXT-ALIGN:">资讯管理 </SPAN><SPAN 
      
                
                
                
                
                
                
                
                
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
    <td colspan="2" align="center" class="Login1" height="25">编辑资讯</td>
  </tr>
  <tr>
    <td align="center" class="Login2" width="15%">资讯标题:</td>
    <td align="left" class="Login2">
        <asp:TextBox ID="Title" runat="server" Width="560px" Height="20px"></asp:TextBox>
                                         </td>
  </tr>
  <tr>
    <td align="center" class="Login2">资讯分类:</td>
    <td align="left" class="Login2" style="width:600px;">
    
        <asp:DropDownList ID="fenlei" runat="server" AutoPostBack="true" Height="20px">
            
        </asp:DropDownList>
         <asp:HiddenField ID="HiddenField1" runat="server" />
                                         </td>
  </tr>
    <tr>
    <td align="center" class="Login2" width="15%">资讯来源:</td>
    <td align="left" class="Login2">
        <asp:TextBox ID="Liayuan" runat="server" 
            Height="20px"></asp:TextBox></td>
  </tr>
  
  <tr>
    <td align="center" class="Login2">资讯内容:</td>
    <td align="left" class="Login2">
        
        <DNTB:WebEditor ID="txt_content" runat="server" Width="700px" Height="400px" />
        
    </td>
  </tr>
   <tr>
<td colspan="2" align="center" height="25">
    <asp:RadioButton ID="RadioButton1" runat="server" Text="允许评论" />
    <asp:RadioButton ID="RadioButton2" runat="server" Text="不允评论" />
   </td>
  </tr>
  <tr>
<td colspan="2" align="center" class="Login1" height="25">
    <asp:Button ID="Button1" runat="server" Text="更新" onclick="Button1_Click" 
        Font-Size="14px" Width="80px" /> 
    
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
