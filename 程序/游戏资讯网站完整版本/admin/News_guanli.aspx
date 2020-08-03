<%@ Page Language="C#" AutoEventWireup="true" CodeFile="News_guanli.aspx.cs" Inherits="admin_News_guanli" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>新闻管理</title>
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
      
                
                
                
                
                
                
                
                
                
                style="padding: 10px; FLOAT: left; BACKGROUND-IMAGE: url('images/main_hb.gif'); COLOR: white; BACKGROUND-REPEAT: repeat-x; HEIGHT: 13px; TEXT-ALIGN:">新闻管理</SPAN><SPAN 
      
                
                
                
                
                
                
                
                
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
       
       <!--新闻管理-->
      <table>
      <tr>
      <td>新闻标题：</td>
      <td>
          <asp:TextBox ID="txtKey" runat="server" Width="400px"></asp:TextBox></td>
          <td>
          <asp:DropDownList ID="ddlNewsStyle" runat="server" AutoPostBack="true" Height="20px">
            
        </asp:DropDownList>
             
          </td>
          <td>
              <asp:Button ID="Button1" runat="server" Text="搜索" Height="22px" Width="50px" 
                  onclick="Button1_Click" /></td>
                  <td>
                      <asp:Button ID="Button2" runat="server" Text="全部显示" Height="22px" Width="70" 
                          onclick="Button2_Click" /> 
                  </td>
      
      </tr>
      </table>
       <table width="100%" border="0" cellspacing="2" cellpadding="0" align="center">
  <tr>
    <td align="center" height="25" class="Login1" width="40%">新闻名称</td>
    <td align="center" class="Login1">分类</td>
    <td align="center" class="Login1">查看</td>
    <td align="center" class="Login1" width="170">添加时间</td>
    <td align="center" class="Login1" width="100">编辑/删除</td>
  </tr>
    <asp:Repeater ID="Repeater1" runat="server">
    <ItemTemplate>
  <tr>
    <td align="left" class="Login2" height="25">&nbsp;&nbsp;<a href="/sjye.aspx?ID=<%#Eval("ID") %>" target="_blank"><%#Eval("Title")%></a></td>
    <td align="center" class="Login2"><%#Eval("Style") %></td>
    <td align="center" class="Login2"><a href='../sjye.aspx?ID=<%#Eval("ID") %>' target="_blank">查看</a></td>
    <td align="center" class="Login2"><%#Eval("IssueDate")%></td>
    <td align="center" class="Login2"><a href="BianJi.aspx?id=<%#Eval("ID") %>">编辑</a> <asp:LinkButton ID="LinkButton1" CommandName='<%#Eval("ID") %>' OnCommand="DelComm_Click" OnClientClick="return confirm('确定要删除吗?');" runat="server">删除</asp:LinkButton></td>
  </tr>
  </ItemTemplate>
  </asp:Repeater>
</table>
<table border="0" align="center" cellspacing="0">
  <tr><td align="center"> 
<asp:LinkButton ID="lbtnFirstPage" runat="server" OnClick="lbtnFirstPage_Click">首页</asp:LinkButton> 
<asp:LinkButton ID="lbtnpritPage" runat="server" OnClick="lbtnpritPage_Click">上一页</asp:LinkButton> 
<asp:LinkButton ID="lbtnNextPage" runat="server" OnClick="lbtnNextPage_Click">下一页</asp:LinkButton> 
<asp:LinkButton ID="lbtnDownPage" runat="server" OnClick="lbtnDownPage_Click">尾页</asp:LinkButton>
第<asp:Label ID="labPage" runat="server" Text="Label"></asp:Label>页/共<asp:Label ID="LabCountPage" runat="server" Text="Label"></asp:Label>页
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
