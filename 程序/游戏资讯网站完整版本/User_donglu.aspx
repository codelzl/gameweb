<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="User_donglu.aspx.cs" Inherits="hainanlyd_User_donglu" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 
  <div class="erji">
  
   
   
  <!--会员登录-->
  <div style=" font-size:12px; border: 1px solid #C0C0C0; width:500px; height:300px; padding-bottom:30px; margin-left:auto; margin-right:auto; margin-top:50px;">
  <h3 style="margin-top:30px; color:#FF9900; text-align:center;">用户登录</h3>
  <table border="0" cellpadding="5" cellspacing="10" style="margin:0 auto; width:300px; font-size:16px; color:#000;">
  <tr>
  <td style="width:60px;" align="right">用户名:</td>
    <td>  <asp:TextBox ID="Name" runat="server" Width="150px" Height="20" 
            CssClass="extBox001"></asp:TextBox></td></tr>
    <tr>
     <td align="right">密&nbsp;&nbsp;&nbsp; 码:</td>
    <td>  <asp:TextBox ID="Pwd" runat="server" Width="150px" Height="20" 
            CssClass="extBox001" TextMode="Password"></asp:TextBox></td></tr>
    <tr>
     <td align="right">验证码:</td>
    <td>  <asp:TextBox ID="TextBox3" runat="server" Width="90px" Height="20" 
            CssClass="extBox001"></asp:TextBox>
      <samp style="margin-left:0px;"> <asp:Label ID="Label1" runat="server" 
            Text="Label" Font-Size="14pt"></asp:Label></samp>  
    </td></tr>
    <tr>
    <td></td>
    <td height="60px">
       <samp style="margin-left:0px;"><asp:Button ID="Button1" runat="server" 
             onclick="Button1_Click" 
            Text="登录" CausesValidation="True" CssClass="dl_button01" Height="25"  
            Width="60" BorderStyle="none"/></samp>
            <samp style="margin-left:10px;">
        <asp:Button ID="Button2" runat="server" 
              
            Text="注册" onclick="Button2_Click" CssClass="dl_button01" Height="25" Width="60" BorderStyle="None" /></samp>
         
     
    </td>
    </tr>
  </table>
  </div>
  
  
  
  
  </div>
</asp:Content>

