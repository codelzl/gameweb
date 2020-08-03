<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="rjym.aspx.cs" Inherits="rjym" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div style="width:715px;margin-top: 5px;float: left;">
           <b class="xtop"><b class="xb1"></b><b class="xb2"></b><b class="xb3"></b><b class="xb4"></b></b>
				<div class="xboxcontent">
					<div class="list_list"><div class="list_list_1">
					
					  <font style="font-weight:bold;font-size:20px; color: #000;">文章类别</font></div>
					  <div class="list_list_2"><font style="font-weight:bold;font-size:20px;color: #000;">文章标题</font></div>
					  <div class="list_list_3"><font style="font-weight:bold;font-size:20px;color: #000;">发布时间</font></div></div>
                    
					     <asp:DataList ID="dlNews" runat="server">
                            
                         <ItemTemplate>
					    <div class="list_list"><div class="list_list_1" style=" color: #ff3300;font-size:20px;"><%#Eval("Style") %></div>
					    <div class="list_list_2"><a href='sjye.aspx?ID=<%#Eval("ID") %>'title="<%#Eval("Title") %>" style=" color: #ff3300;font-size:20px;"><%#Eval("Title").ToString().Length > 26? Eval("Title").ToString().Substring(0, 26) + "..." : Eval("Title").ToString() %></a></div>
					    <div class="list_list_3"><%#DateTime.Parse(Eval("IssueDate").ToString()).ToShortDateString()%></div></div>
					    </ItemTemplate>
					  </asp:DataList>
					     <!--分页-->
        <div style=" width:740px; margin:0 auto; margin-top:10px; font-size:26px;">
           <asp:Label ID="labCP" runat="server" Text="当前页"></asp:Label>
           <asp:Label ID="labPage" runat="server" Text="1"></asp:Label>
           <asp:Label ID="labTP" runat="server" Text="总页："></asp:Label>  
           <asp:Label ID="labBackPage" runat="server" Text=""></asp:Label>
           <asp:LinkButton ID="lnkbtnOne" runat="server" Font-Underline="False" ForeColor="Red"
                                    OnClick="lnkbtnOne_Click">首页</asp:LinkButton>
    <asp:LinkButton ID="lnkbtnUp" runat="server" Font-Underline="False" ForeColor="Red"
                                    OnClick="lnkbtnUp_Click">上一页</asp:LinkButton>
    <asp:LinkButton ID="lnkbtnNext" runat="server" Font-Underline="False" ForeColor="Red"
                                    OnClick="lnkbtnNext_Click">下一页</asp:LinkButton>&nbsp;
    <asp:LinkButton ID="lnkbtnBack" runat="server" Font-Underline="False" ForeColor="Red"
                                    OnClick="lnkbtnBack_Click" Width="67px">末页</asp:LinkButton> 
     </div>  	     
					         	
    
    			    	
  
      </div>
   <b class="xbottom"><b class="xb4"></b><b class="xb3"></b><b class="xb2"></b><b class="xb1"></b></b>
  
  </div>
</asp:Content>



