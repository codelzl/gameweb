 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="Top.aspx.cs" Inherits="Admin_Top" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>头部框架</title>
    
    <style type="text/css">
    body
    {
    	 margin:0px;
    	 padding:0px;
    	 widows:100%;
    	 
    	}
       
        img
        {
        	border:0px;
        	margin:0px;
        }
        #tu_1
        {
        	width:600px;
        	height:90px;
        	padding-left:50px;
        	padding-top:30px;
        	color:#fff;
             
            float:left;
        }
        #tu_2
        {
        	width:343px;
        	height:33px;
        	background-image:url(images/bg_banner_menu.gif);
        	float:right;
        	line-height:33px;
        	text-align:center;
            
        }
        #daohang
        {
        	width:100%;
        	height:30px;
        	background-image:url(images/bg_nav.gif);
        }
       
        .style1
        {
            width: 480px;
        }
        a
        {
        	text-decoration:none;
        	color:#fff;
        	margin-left:10px;
        }
       
    </style>

    <script src="javascript/Clock.js" type="text/javascript"></script>    
</head>
<body style="BACKGROUND-IMAGE: url(images/bg.gif); MARGIN: 0px; BACKGROUND-REPEAT: repeat-x">
    <form id="form1" runat="server">
    <div style="width:100%; position:absolute;">
    <div style="height:90px; widows:100%; background:#; position:relative;">
    <div id="tu_1">
    <h2 style="font-family: 宋体, Arial, Helvetica, sans-serif">游戏资讯网管理系统</h2>
    </div>
    <div id="tu_2" style="position:relative;">
    <table style="padding-left:50px; color:#fff; font-size:14px;">
    <tr><td style="vertical-align: middle"><img style="border:0px; margin:0px;" src="images/nav_back.gif" />
    <td>
    <a href="../default.aspx" target="_blank">查看前台主页</a>
    </td>
        </td>
        <td>&nbsp;</td>
        <td>
            <img src="images/minicalendar/minical_btnClose.gif" /></td>
        <td><a href="admin.aspx" target="_parent">退出系统</a></td>
        </tr>
        
    </table>
    
   </div>
    </div>
        
    <div id="daohang">
    
    <table border="0" cellpadding="0" cellspacing="0" style=" font-size:12px; color:#fff; widows:100%;">
    <tr>
    <td>
        <img src="images/nav_pre.gif" /></td>
    <td style="width:150px;">欢迎进入管理系统</td>
    <td class="style1" style="width:800px;"></td>
  
    <td>
        <img src="images/menu_seprator.gif" /></td>
    <td style=""><SPAN 
      id=clock></SPAN></td>
    </tr>
    </table>
    
    </div>
    
    
    </div>
    <SCRIPT type=text/javascript>
    var clock = new Clock();
    clock.display(document.getElementById("clock"));
</SCRIPT>
    </form>
    
</body>
</html>
