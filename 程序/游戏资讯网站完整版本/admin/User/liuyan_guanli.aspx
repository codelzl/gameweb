<%@ Page Language="C#" AutoEventWireup="true" CodeFile="liuyan_guanli.aspx.cs" Inherits="admin_User_liuyan_guanli" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>留言管理</title>
<link href="../Css/admin.css" rel="stylesheet" type="text/css" />
<style type="text/css">
#KJ_butt1 samp
{
	margin-left:3px;
}
</style>   
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
      
                
                
                
                
                
                
                
                
                
                style="padding: 10px; FLOAT: left; BACKGROUND-IMAGE: url('../images/main_hb.gif'); COLOR: white; BACKGROUND-REPEAT: repeat-x; HEIGHT: 13px; TEXT-ALIGN:">留言管理 </SPAN><SPAN 
      
                
                
                
                
                
                
                
                
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
       
       <!--会员基本信息-->
 <asp:GridView ID="gvNewsList" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" Height="1px" PageSize="15" Width="100%" 
                CssClass="lygl" OnPageIndexChanging="gvNewsList_PageIndexChanging" 
                 OnRowDataBound="gvNewsList_RowDataBound" 
                BorderColor="#3399FF" BorderStyle="Solid" BorderWidth="1px" 
                CellPadding="1" CellSpacing="2" Font-Size="14px">
            
            <RowStyle HorizontalAlign="Center" />
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="代号" ItemStyle-BorderWidth="1"  >
<ItemStyle BorderColor="#3399FF" BorderWidth="1px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="User_Name" HeaderText="用户名称" ItemStyle-CssClass="lygl" >
<ItemStyle CssClass="lygl"></ItemStyle>
                </asp:BoundField>
                
                
                <asp:BoundField DataField="IssueDate" HeaderText="留言时间" 
                    ItemStyle-CssClass="lygl" >
<ItemStyle CssClass="lygl"></ItemStyle>
                </asp:BoundField>
               
                <asp:HyperLinkField HeaderText="详细内容" Text="查看" DataNavigateUrlFields="id" 
                    DataNavigateUrlFormatString="../../User_qifu.aspx?uu=" Target="_blank" 
                    ItemStyle-CssClass="lygl">
<ItemStyle CssClass="lygl"></ItemStyle>
                </asp:HyperLinkField>
                <asp:TemplateField HeaderText="审核" ItemStyle-CssClass="lygl">
                                <ItemTemplate>
                                    <asp:CheckBox ID="CheckBox1" runat="server" />
                                </ItemTemplate>
                                <ItemStyle Width="70px" />
                            </asp:TemplateField>
                            
            </Columns>
             <HeaderStyle BackColor="#3399FF" Font-Bold="True" ForeColor="White" Height="30" Font-Size="12" />
        </asp:GridView>
<div style=" float:right; margin-top:5px;" id="KJ_butt1">


<samp>
    <asp:Button ID="Button2" runat="server" Text="全选" onclick="Button2_Click" />
</samp>
<samp>
    <asp:Button ID="Delete" runat="server" Text="删除" onclick="Delete_Click" />
</samp>
</div>
      
       
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
