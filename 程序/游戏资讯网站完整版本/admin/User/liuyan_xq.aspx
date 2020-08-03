<%@ Page Language="C#" AutoEventWireup="true" CodeFile="liuyan_xq.aspx.cs" Inherits="admin_User_liuyan_xq" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>留言详情</title>
<link href="../Css/admin.css" rel="stylesheet" type="text/css" />   
</head>
<body class="Body">
    <form id="form1" runat="server">
     <div>
    <TABLE height="500px;" cellSpacing=0 cellPadding=0 width="100%" border=0>
    <TBODY>
      <TR 
  style="BACKGROUND-IMAGE: url(../images/bg_header.gif); BACKGROUND-REPEAT: repeat-x">
        <TD width=10 style="vertical-align: top"><SPAN 
      
                
                
                style="FLOAT: left; BACKGROUND-IMAGE: url('../images/main_hl.gif'); WIDTH: 9px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 48px">
            </SPAN></TD>
        <TD><SPAN 
      
                
                
                
                
                
                
                style="FLOAT: left; BACKGROUND-IMAGE: url('../images/main_hl2.gif'); WIDTH: 15px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 32px;">
            </SPAN><SPAN 
      
                
                
                
                
                
                
                
                
                
                style="padding: 10px; FLOAT: left; BACKGROUND-IMAGE: url('../images/main_hb.gif'); COLOR: white; BACKGROUND-REPEAT: repeat-x; HEIGHT: 13px; TEXT-ALIGN:">留言详细内容 </SPAN><SPAN 
      
                
                
                
                
                
                
                
                
                style="FLOAT: left; BACKGROUND-IMAGE: url('../images/main_hr.gif'); WIDTH: 60px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 48px">
            </SPAN></TD>
        <TD 
    style="BACKGROUND-POSITION: 49% bottom; BACKGROUND-IMAGE: url(../images/main_rc.gif); background-repeat: no-repeat;" 
    width="10" ></TD>
      </TR>
      <TR>
        <TD style="BACKGROUND-IMAGE: url(../images/main_ls.gif)"></TD>
        <TD 
    style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; COLOR: #566984; PADDING-TOP: 10px; BACKGROUND-COLOR: white; height:500px;" 
    vAlign=top align=middle>
       
       <!--用户留言详细内容-->
            <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
              
   <table style="width:100%; font-size:12px; font-weight: normal;"  border="0" cellspacing="2" cellpadding="0" align="center">
  <tr>
    <td  height="25" class="Login1" style="width:150px;">用户名称:</td>
    <td class="Login1" style="width:500px; text-align:left;"><%#Eval("Name") %></td>
  
  </tr>
  <tr>
  <td class="Login1"style="width:150px;">邮箱:</td>
  <td class="Login1" style="text-align:left;"><%#Eval("Email") %></td>
  </tr>
  <tr>
  <td class="Login1"style="width:150px;">留言时间:</td>
  <td class="Login1"style="text-align:left;"><%#Eval("IssueDate")%></td>
  </tr>
  <tr>
  <td class="Login1"style="width:150px;">留言内容:</td>
  <td class="Login1"style="text-align:left;"><%#Eval("Content")%></td>
  </tr>
  <tr>
  <td colspan="2" style="height:40px;">
     </td>
  </tr>
</table>
   </ItemTemplate>
 </asp:Repeater>   
   <asp:Button ID="Button1" runat="server" Text="通过" onclick="Button1_Click" />
      <asp:Button ID="Button2" runat="server" Text="删除" onclick="Button2_Click" />    
       
        </TD>
        <TD style="BACKGROUND-IMAGE: url(../images/main_rs.gif)"></TD>
      </TR>
      <TR 
  style="BACKGROUND-IMAGE: url(../images/main_fs.gif); BACKGROUND-REPEAT: repeat-x" 
  height=10>
        <TD style="BACKGROUND-IMAGE: url(../images/main_lf.gif)"></TD>
        <TD style="BACKGROUND-IMAGE: url(../images/main_fs.gif)"></TD>
        <TD 
style="BACKGROUND-IMAGE: url(../images/main_rf.gif)"></TD>
      </TR>
    </TBODY>
  </TABLE>
    </div>
    </form>
</body>
</html>
