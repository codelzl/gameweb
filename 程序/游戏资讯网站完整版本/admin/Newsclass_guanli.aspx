<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Newsclass_guanli.aspx.cs" Inherits="admin_Newsclass_guanli" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
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
      
                
                
                
                
                
                
                
                
                
                style="padding: 10px; FLOAT: left; BACKGROUND-IMAGE: url('images/main_hb.gif'); COLOR: white; BACKGROUND-REPEAT: repeat-x; HEIGHT: 13px; TEXT-ALIGN:">新闻分类管理</SPAN><SPAN 
      
                
                
                
                
                
                
                
                
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
       
       <!--新闻分类管理-->
      
       <table width="100%" border="0" cellspacing="2" cellpadding="0" align="center">
  <tr>
    <td align="center" height="25" class="Login1" width="40%">分类名称</td>
    <td align="center" class="Login1">排列序号</td>
    <td align="center" class="Login1">添加时间</td>
   
    <td align="center" class="Login1" width="100">编辑/删除</td>
  </tr>
    <asp:Repeater ID="Repeater1" runat="server">
    <ItemTemplate>
  <tr>
    <td align="center" class="Login2" height="25">&nbsp;&nbsp;<%#Eval("Class")%></td>
    <td align="center" class="Login2"><%#Eval("St") %></td>
    <td align="center" class="Login2"><%#Eval("IssueDate")%></td>
    <td align="center" class="Login2"><a href="NewsClass_xiugai.aspx?id=<%#Eval("ID") %>">编辑</a> <asp:LinkButton ID="LinkButton1" CommandName='<%#Eval("ID") %>' OnCommand="DelComm_Click" OnClientClick="return confirm('确定要删除吗?');" runat="server">删除</asp:LinkButton></td>
  </tr>
  </ItemTemplate>
  </asp:Repeater>
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
