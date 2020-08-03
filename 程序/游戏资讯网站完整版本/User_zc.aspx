<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="User_zc.aspx.cs" Inherits="hainanlyd_User_zc" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
    <div id="zhuce" style="width:100%;margin:5px auto;">
    <div style=" font-size:12px; border: 1px solid #C0C0C0; width:100%; margin:0 auto; padding-top:20px;">

<table style="margin:0 auto; width:500px;" cellpadding="6">

    <tr><td style="width:100px;" align="right">用&nbsp;&nbsp;户&nbsp;&nbsp;名：</td><td>
        <asp:TextBox ID="userName" runat="server" CssClass="button"></asp:TextBox>
        <asp:RequiredFieldValidator ID="name" runat="server"  ControlToValidate="userName" 
                        ErrorMessage="*用户名不能为空！"></asp:RequiredFieldValidator>
        </td></tr>
    <tr><td align="right">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;码： </td><td><asp:TextBox ID="TextBox2" runat="server" 
                                    TextMode="Password" CssClass="button"></asp:TextBox>
    <asp:RequiredFieldValidator ID="pwd" runat="server"
     ControlToValidate="TextBox2" ErrorMessage="*密码不能为空！">
     </asp:RequiredFieldValidator>
    </td></tr>
    <tr><td align="right">确认密码：</td><td><asp:TextBox ID="userPwd" runat="server" TextMode="Password" CssClass="button"></asp:TextBox>
        <asp:CompareValidator ID="pwd_2" runat="server" ControlToCompare="TextBox2" ControlToValidate="userPwd" ErrorMessage="*输入的密码不一致"></asp:CompareValidator>

    </td></tr>
    <tr><td align="right">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：</td><td>
        <asp:DropDownList ID="Xb" runat="server" CssClass="button" Height="30px" Width="50px">
            <asp:ListItem>男</asp:ListItem>
            <asp:ListItem>女</asp:ListItem>
        </asp:DropDownList>
    </td></tr>
    
    <tr><td align="right">邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱：</td><td><asp:TextBox ID="Email" runat="server" CssClass="button"></asp:TextBox>
   
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="Email" ErrorMessage="*请输入正确的邮箱格式！" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ValidationGroup="t" Font-Size="10pt"></asp:RegularExpressionValidator>
    </td></tr>
    <tr><td align="right">电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话：</td><td><asp:TextBox ID="dianhuao" runat="server" CssClass="button"></asp:TextBox></td></tr>
        <tr><td align="right">播&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;客：</td><td><asp:TextBox ID="podcast" runat="server" CssClass="button"></asp:TextBox></td></tr>

    <tr><td align="right">Q&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Q：</td><td><asp:TextBox ID="QQ" runat="server" CssClass="button"></asp:TextBox></td></tr>
    <tr><td align="right">兴趣爱好：</td><td>
        <asp:CheckBox ID="CheckBox1" runat="server" Text="唱歌" />
        <asp:CheckBox ID="CheckBox2" runat="server" Text="体育" />
    </td></tr>
    <tr><td align="right">验&nbsp;&nbsp;证&nbsp;&nbsp;码：</td><td>
        <asp:TextBox ID="yzm" runat="server" Width="150px" CssClass="button"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
        </td></tr>
    <tr><td></td><td><samp style="margin-left:0px;">
      <asp:Button ID="Button1" runat="server" Text="注册" onclick="Button1_Click" 
            CssClass="botton_zc" Height="36px" Width="100px" /></samp>
            <samp style="margin-left:20px;">
      <asp:Button ID="Button2" runat="server" Text="重填"
            CssClass="botton_zc" onclick="Button2_Click" Height="36px" Width="100px" /></samp>
        </td></tr>
            
            
    </table>
</div>
</div>

</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
</asp:Content>


