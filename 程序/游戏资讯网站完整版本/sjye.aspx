<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sjye.aspx.cs" Inherits="sjye" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Repeater ID="Repeater1" runat="server">
    <ItemTemplate>
   
  <div style="width:715px;margin-top: 5px;float: left;">
           <b class="xtop"><b class="xb1"></b><b class="xb2"></b><b class="xb3"></b><b class="xb4"></b></b>
			<div class="xboxcontent" >
			   <div class="ti" style="font-size:30px">
                 <p><%#Eval("Title").ToString().Length > 25? Eval("Title").ToString().Substring(0, 25) + "" : Eval("Title").ToString() %></p>
               </div>
               <div class="fa" style="font-size:20px">
           
                   <span>发布时间:<%#Eval("IssueDate")%></span><span style="margin-left: 25px;">来源：<%#Eval("Liayuan")%></span><span style="margin-left: 25px;">文章点击量：44</span></div>
         
              <div class="nr" style="margin-top:30px;font-size:18px">
               <%#Eval("Content")%>
              </div>
         </div>
   <b class="xbottom"><b class="xb4"></b><b class="xb3"></b><b class="xb2"></b><b class="xb1"></b></b>
  <br><br>
  </div>
   </ItemTemplate>
    </asp:Repeater>   
<!--评论内容-->
          <div class="response">
              <br>
					 <div style="color:#f43c60">	  	<h1>Responses</h1> </div>
              <br>
            <asp:Repeater ID="Repeater2" runat="server">
             
         <ItemTemplate>
         
     <table cellpadding="2" style=" font-size:20px; width:715px; margin:0 auto;color:#C0C0C0; border-top-style: solid; border-right-style: solid; border-left-style: solid; border-top-width: 1px; border-right-width: 1px; border-left-width: 1px;">
     
         
				                
         <tr><td style="width:100px;color:#000000">网友:</td><td style="color: #2f5fc2"><%#Eval("Name") %></td></tr>
     <tr><td style="width:100px;color:#000000">发表时间:</td><td style="width:100px;color:#000000" ><%#Eval("IssueDate")%></td></tr>
     <tr><td style="height:50px;font-size:25px;color:#000000">评论:</td><td style="font-size:25px;height:25px;color:#000000"><%#Eval("Content")%></td></tr>
     </table>
     </ItemTemplate>
         </asp:Repeater>
         <table style="margin-top:30px;"border="0" align="center" cellspacing="0" style=" font-size:35px; width:100%; border-top:solid 1px #999999;">
  <tr><td align="center"> 
<asp:LinkButton ID="lbtnFirstPage" runat="server" OnClick="lbtnFirstPage_Click">首页</asp:LinkButton> 
<asp:LinkButton ID="lbtnpritPage" runat="server" OnClick="lbtnpritPage_Click">上一页</asp:LinkButton> 
<asp:LinkButton ID="lbtnNextPage" runat="server" OnClick="lbtnNextPage_Click">下一页</asp:LinkButton> 
<asp:LinkButton ID="lbtnDownPage" runat="server" OnClick="lbtnDownPage_Click">尾页</asp:LinkButton>
第<asp:Label ID="labPage" runat="server" Text="Label"></asp:Label>页/共<asp:Label ID="LabCountPage" runat="server" Text="Label"></asp:Label>页
</table> 
					
</div>

      <div id="PL" style="display:block; margin-top:5px; padding-left:0px; width:715px; float:left;">
 
     <!--发表评论-->
    <div class="coment-form">

	 <div style="color:#f43c60">	  	<h1>Leave your comment</h1> </div>
        <br>
     <table style="width:100%; margin:0 auto; font-size:15px;">
     <tr >
     <td style="border: 1px solid #999999">称&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 呼:</td>
     <td style="border: 1px solid #999999;width:10px">
         <asp:TextBox ID="Name" runat="server" MaxLength="6"></asp:TextBox><font size="3" color="red">*称呼不能超过6个字符</font></td></tr>
         <tr>
         <td style="border: 1px solid #999999">评论内容:</td>
         <td style="border: 1px solid #999999">
             <asp:TextBox ID="Content" runat="server" Height="96px" TextMode="MultiLine" 
                 Width="615px" MaxLength="300"></asp:TextBox></td>
         </tr>
         <tr><td style="border: 1px solid #999999">验&nbsp; 证&nbsp; 码:</td>
         <td style="border: 1px solid #999999;padding-top:10px;width:290px">
            <samp>&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" Width="73px"></asp:TextBox></samp>
            <samp>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></samp>
             </td>
         
         </tr>
         <tr style="height:40px;">
     
             <td colspan="2" style="padding-left:0px;border: 1px solid #999999;">
           
            <samp ><asp:Button ID="Button1" runat="server" Text="发表" onclick="Button1_Click" /></samp>
             
             </td>
         </tr>
     </table>
     </div> </div>
     <script type="text/javascript">




var xs='<%=Session["user01"] %>';
if(xs== 1) {
  document.getElementById("PL").style.display="block";
 
  }
else{
  document.getElementById("PL").style.display="none";
 
}

</script>
</asp:Content>




