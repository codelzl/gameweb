<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Tiaojia.aspx.cs" Inherits="admin_Tiaojia" %>

<%@ Register assembly="DotNetTextBox" namespace="DotNetTextBox" tagprefix="DNTB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>添加新闻</title>
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
      
                
                
                
                
                
                
                
                
                
                style="padding: 10px; FLOAT: left; BACKGROUND-IMAGE: url('images/main_hb.gif'); COLOR: white; BACKGROUND-REPEAT: repeat-x; HEIGHT: 13px; TEXT-ALIGN:">添加新闻</SPAN><SPAN 
      
                
                
                
                
                
                
                
                
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
    <td align="center" class="Login2" width="15%">新闻标题:</td>
    <td align="left" class="Login2">
        <asp:TextBox ID="Title" runat="server" Width="700px" Height="20px"></asp:TextBox>
                                         </td>
  </tr>
  <tr>
    <td align="center" class="Login2">新闻分类:</td>
    <td align="left" class="Login2" style="width:600px;">
    <asp:DropDownList ID="fenlei" runat="server" AutoPostBack="true" Height="25px" 
            Width="158px">
    </asp:DropDownList>
      <!--隐藏参数ID-->
        <asp:HiddenField ID="HiddenField1" runat="server" />  
                                         </td>
  </tr>
  <tr>
  <td>上传图片</td>
  <td align="left">         
      <asp:FileUpload ID="FileUpload1" runat="server" />
         <asp:Label ID="Label1" runat="server" 
            Text="*注意:此处用以上传首页幻灯片区域图片,如果不添加'图片新闻',此处可为空!" Font-Size="12px" ForeColor="Red"></asp:Label>
      </td>
  </tr>
    <tr>
    <td align="center" class="Login2" width="15%">新闻来源:</td>
    <td align="left" class="Login2">
        <asp:TextBox ID="LiaYuan" runat="server" 
            Height="20px"></asp:TextBox></td>
  </tr>
  
  <tr>
    <td align="center" class="Login2">新闻内容:</td>
    <td align="left" class="Login2">
        
        <DNTB:WebEditor ID="txt_content" runat="server" Height="400px" Width="700px" />
        
    </td>
  </tr>
   <tr>
<td colspan="2" align="center" height="25">
    <asp:RadioButton ID="RadioButton1" runat="server" Text="允许评论" GroupName="AA" />
    <asp:RadioButton ID="RadioButton2" runat="server" Text="不允评论" GroupName="AA" />
   </td>
  </tr>
  <tr>
<td colspan="2" align="center" class="Login1" height="25">
    <asp:Button ID="Button1" runat="server" Text="添加" onclick="Button1_Click" /> 
    <asp:Button ID="Button2" runat="server" Text="取消" />
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
