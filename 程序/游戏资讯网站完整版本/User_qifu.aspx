<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="User_qifu.aspx.cs" Inherits="hainanlyd_User_qifu" Title="Untitled Page" %>

<%@ Register Assembly="DotNetTextBox" Namespace="DotNetTextBox" TagPrefix="DNTB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:130%; margin:0 auto; font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 12px;">
    <div>
   <div class="response">
			<asp:DataList ID="message_1" runat="server" >
            <ItemTemplate>
     <table cellpadding="1" style=" font-size:18px; width:700px; color:#C0C0C0; border-top-style:groove; border-right-style: solid; border-left-style: solid; border-top-width: 1px; border-right-width: 1px; border-left-width: 1px;">
      <tr><td style="width:100px;color:#000000">网友:</td><td style="color: #0066FF"><%#Eval("User_Name") %></td></tr>
     <tr><td style="width:100px;color:#000000">发表时间:</td><td style="color: #000000"><%#Eval("IssueDate")%></td></tr>
     <tr><td style="width:100px;color:#000000">评论:</td><td style="color: #000000"><%#Eval("Content")%></td></tr>
     </table>
     </ItemTemplate>
            </asp:DataList>
             <!--辅助线-->
 <div style="border-top: solid 1px #C0C0C0;width:700px"></div>
 
                    
    <!--分页-->
    <table  style="width:800px;font-size:25px;margin-top:20px;">
    <tr>
    <td>
               <asp:Label ID="labCP" runat="server" Text="当前页"></asp:Label>
           <asp:Label ID="labPage" runat="server" Text="1"></asp:Label>
           <asp:Label ID="labTP" runat="server" Text="总页"></asp:Label>  
           <asp:Label ID="labBackPage" runat="server" Text="Label"></asp:Label>
           <asp:LinkButton ID="lnkbtnOne" runat="server" Font-Underline="False" ForeColor="Red"
                                    OnClick="lnkbtnOne_Click">第一页</asp:LinkButton>
    <asp:LinkButton ID="lnkbtnUp" runat="server" Font-Underline="False" ForeColor="Red"
                                    OnClick="lnkbtnUp_Click">上一页</asp:LinkButton>
    <asp:LinkButton ID="lnkbtnNext" runat="server" Font-Underline="False" ForeColor="Red"
                                    OnClick="lnkbtnNext_Click">下一页</asp:LinkButton>&nbsp;
    <asp:LinkButton ID="lnkbtnBack" runat="server" Font-Underline="False" ForeColor="Red"
                                    OnClick="lnkbtnBack_Click" Width="189px">最后一页</asp:LinkButton> 

    </td>
    </tr>
    </table>
    
    
    
    
    </div>
   
     </div>
    <div>
   
		

		    <div id="PL" style="display:block; margin-top:3px; padding-left:0px; width:715px; float:left;">
 
     <!--发表评论-->
    <div class="coment-form">
		<div style="color:#f43c60"><h1>Leave your comment</h1></div>
        <br><br>
     <table style="width:100%; margin:0 auto; font-size:15px;">
     <tr style="height:50px">
     <td style="border: 1px solid #999999">称&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 呼:</td>
     <td style="border: 1px solid #999999;width:10px;color:#0066FF">
         <asp:Label ID="user_name" runat="server" Text=""></asp:Label></td></tr>
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
    </div>
    </div>

</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            width: 22%;
        }
        .auto-style2 {
            height: 154px;
            width: 22%;
        }
        .auto-style3 {
            height: 24px;
            width: 22%;
        }
    </style>
</asp:Content>


