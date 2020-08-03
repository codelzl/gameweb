<%@ Page Language="C#" AutoEventWireup="true" CodeFile="right.aspx.cs" Inherits="right" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>右框架</title>
   <style type="text/css">
           body
{
	BACKGROUND-IMAGE: url(images/bg.gif); BACKGROUND-REPEAT: repeat-x;
	margin:0px 0pr 0px 10px;
	
   
}
       .style1
       {
           width: 125px;
           height:30px;
           background:#CBD9E3;
           color:#153B64;
           text-align:center;
           border:solid 1px #fff;
           
       }
        .style2
       {
           
          
           height:40px;
           background:#CBD9E3;
           color:#153B64;
           text-align:left;
           border:solid 1px #fff;
       }
   </style>
</head>
<body>
    <form id="form1" runat="server">
     <div>
    <TABLE cellSpacing=0 cellPadding=0 width="100%" border="0">
    
      <TR 
  style="BACKGROUND-IMAGE: url(images/bg_header.gif); BACKGROUND-REPEAT: repeat-x">
        <TD width=10 style="vertical-align: top"><SPAN 
      
                
                
                style="FLOAT: left; BACKGROUND-IMAGE: url('images/main_hl.gif'); WIDTH: 9px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 48px">
            </SPAN></TD>
        <TD><SPAN 
      
                
                
                
                
                
                
                style="FLOAT: left; BACKGROUND-IMAGE: url('images/main_hl2.gif'); WIDTH: 15px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 32px;">
            </SPAN><SPAN 
      
                
                
                
                
                
                
                
                
                
                style="padding: 10px; FLOAT: left; BACKGROUND-IMAGE: url('images/main_hb.gif'); COLOR: white; BACKGROUND-REPEAT: repeat-x; HEIGHT: 13px; TEXT-ALIGN:">系统基本信息 </SPAN><SPAN 
      
                
                
                
                
                
                
                
                
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
       
       <!--网站基本信息-->
       <TABLE 
      style="WIDTH:100%; text-align:left; font-size:20px;" cellspacing="0"
      border="0">
                   <tr><td class="style1">网站名称:</td><td class="style2"><asp:Label ID="Label1" runat="server" Text="游戏资讯网"></asp:Label></td></tr> 

             <tr><td class="style1">主机名称: </td><td class="style2">
                 <asp:Label ID="Name" runat="server" Text="Label"></asp:Label></td></tr>
 
             <tr><td class="style1">服务器IP:</td><td class="style2"><asp:Label ID="ip" runat="server" Text="Label"></asp:Label></td></tr> 
             <tr><td class="style1">系统时间:</td><td class="style2"><asp:Label ID="Time" runat="server" Text="Label"></asp:Label></td></tr> 
             <tr><td class="style1">服务端口:</td><td class="style2"><asp:Label ID="Dk" runat="server" Text="Label"></asp:Label></td></tr> 
             <tr><td class="style1">操作系统:</td><td class="style2"><asp:Label ID="Os" runat="server" Text="Label"></asp:Label></td></tr> 
             <tr><td class="style1">环境版本:</td><td class="style2"><asp:Label ID="Iis" runat="server" Text="Label"></asp:Label></td></tr> 
             <tr><td class="style1"> NET版 本:</td><td class="style2">
             <%
          int build, major, minor, revision;
          build = Environment.Version.Build;
          major = Environment.Version.Major;
          minor = Environment.Version.Minor;
          revision = Environment.Version.Revision;
          Response.Write(major + "." + minor + "." + build + "." + revision);    
      %>
             </td></tr> 
            </TABLE>
      
       
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
    
  </TABLE>
    </div>
    </form>
</body>
</html>
