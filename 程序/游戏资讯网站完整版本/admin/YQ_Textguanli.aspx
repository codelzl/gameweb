<%@ Page Language="C#" AutoEventWireup="true" CodeFile="YQ_Textguanli.aspx.cs" Inherits="admin_YQ_Textguanli" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>文本友情链接管理</title>
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
      
                
                
                
                
                
                
                
                
                
                style="padding: 10px; FLOAT: left; BACKGROUND-IMAGE: url('images/main_hb.gif'); COLOR: white; BACKGROUND-REPEAT: repeat-x; HEIGHT: 13px; TEXT-ALIGN:">文本友情链接管理</SPAN><SPAN 
      
                
                
                
                
                
                
                
                
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
       
       <!--添加管理员-->
       <table width="100%;" border="0" cellspacing="2" cellpadding="0">
  <tr>
    <td colspan="2" align="center" class="Login1" height="25"></td>
  </tr>
  <tr>
    <td colspan="2" align="center" class="Login2">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None" Width="100%">
            <RowStyle BackColor="#E3EAEB" />
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="代号" InsertVisible="False" 
                    ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="URL" HeaderText="链接网址" SortExpression="URL" />
                <asp:BoundField DataField="Text" HeaderText="链接名称" SortExpression="Text" />
                <asp:CommandField HeaderText="编辑" ShowEditButton="True" />
                <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
   
    
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
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:2012_WinConnectionString %>" 
            DeleteCommand="DELETE FROM [Text_ling] WHERE [ID] = @ID" 
            InsertCommand="INSERT INTO [Text_ling] ([URL], [Text]) VALUES (@URL, @Text)" 
            SelectCommand="SELECT * FROM [Text_ling]" 
            UpdateCommand="UPDATE [Text_ling] SET [URL] = @URL, [Text] = @Text WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="URL" Type="String" />
                <asp:Parameter Name="Text" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="URL" Type="String" />
                <asp:Parameter Name="Text" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
