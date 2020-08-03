<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SS_jieguo.aspx.cs" Inherits="SS_jieguo" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="width:715px;margin-top: 5px;float: left;">
           <b class="xtop"><b class="xb1"></b><b class="xb2"></b><b class="xb3"></b><b class="xb4"></b></b>
				<div class="xboxcontent">
					<div class="list_list"><div class="list_list_1">
					
					  <font style="font-weight:bold;font-size:16px; color: #000;">文章类别</font></div>
					  <div class="list_list_2"><font style="font-weight:bold;font-size:16px;color: #000;">文章标题</font></div>
					  <div class="list_list_3"><font style="font-weight:bold;font-size:16px;color: #000;">发布时间</font></div></div>
                    
					     <asp:Repeater ID="Repeater1" runat="server">
                         <ItemTemplate>
					    <div class="list_list"><div class="list_list_1"><a href="" style="color: #ff3300;"><%#Eval("Style") %></a></div>
					    <div class="list_list_2"><a href='sjye.aspx?ID=<%#Eval("ID") %>'title="<%#Eval("Title") %>" style=" color: #ff3300;"><%#Eval("Title").ToString().Length > 26? Eval("Title").ToString().Substring(0, 26) + "..." : Eval("Title").ToString() %></a></div>
					    <div class="list_list_3"><%#DateTime.Parse(Eval("IssueDate").ToString()).ToShortDateString()%></div></div>
					    </ItemTemplate>
                        </asp:Repeater>
					     <!--分页-->
        <div style=" width:440px; margin:0 auto; margin-top:10px; font-size:12px;">
          
<table style="margin-left:auto;margin-right:auto; font-size:14px; color:#999999;" 
    border="0" align="center" cellspacing="0">
  <tr><td align="center"> 
<asp:LinkButton ID="lbtnFirstPage" runat="server" OnClick="lbtnFirstPage_Click">首页</asp:LinkButton> 
<asp:LinkButton ID="lbtnpritPage" runat="server" OnClick="lbtnpritPage_Click">上一页</asp:LinkButton> 
<asp:LinkButton ID="lbtnNextPage" runat="server" OnClick="lbtnNextPage_Click">下一页</asp:LinkButton> 
<asp:LinkButton ID="lbtnDownPage" runat="server" OnClick="lbtnDownPage_Click">尾页</asp:LinkButton>
第<asp:Label ID="labPage" runat="server" Text="Label"></asp:Label>页/共<asp:Label ID="LabCountPage" runat="server" 

Text="Label"></asp:Label>页
</td></tr>
</table> 
     </div>  	     
					         	
    
    			    	
  
      </div>
   <b class="xbottom"><b class="xb4"></b><b class="xb3"></b><b class="xb2"></b><b class="xb1"></b></b>
  
  </div>
       
</asp:Content>

