<%@ Page Language="C#" AutoEventWireup="true" CodeFile="left.aspx.cs" Inherits="Admin_left" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>左框架</title>
    <style type="text/css">

body{
	 margin:0px;
	 padding-top:20px;
	overflow:hidden;
	BACKGROUND-IMAGE: url(images/bg.gif); BACKGROUND-REPEAT: repeat-x;
	

}
.STYLE3 {
	
	color: #435255;
}
.STYLE4 {font-size: 12px;}
        .STYLE5 {
            font-size: 12px;
            font-weight: bold;
            
           
        }
a:visited {
	color: #000000;
	text-decoration: none;
	

}
a:hover {
	text-decoration: underline;
	color: red;
	
    
}
a:link {
	text-decoration: none;
	color: #000;

}
a:active
{
            color: #0033CC;
            text-decoration: underline;
            
  }
.biaoge
{
 border: 1px solid #6898B9; 
 background: #fff;
 
 vertical-align: top; 
  
 
}

.P_xiadan
{
　　	height:25px;
}
.P_xiadan a:active /*所有父菜单样式*/
{
	text-decoration:none;
	font-size:12x;
} 

.biaoti_beijing
{
	background:#6898B9;
	
}
.biaoti_beijing a,
{
	color:#fff;
	

}
 .TR_beijing_1
{
            background-color: #CBD9E3;
 }
html{ 
　　overflow:hidden;
　　
　　}
　　
　　
　　
　　
        .auto-style1 {
            font-size: 12px;
            cursor: hand;
            height: 25px;
        }
    </style>
<script type="text/javascript">
function Display(ID)
{
 if( ID.style.display == 'none' )
{
ID.style.display = '' ;
}
else	
{
ID.style.display = 'none' ;
}
}
</script>
</head>
<body>
    <form id="form1" runat="server">
   
 
       <div style=" background:#fff; margin-left:10px;WIDTH:165px; HEIGHT:430px; OVERFLOW: scroll; scrollbar-face-color: #3366CC; scrollbar-shadow-color: #9EBFE8; scrollbar-highlight-color: #9EBFE8; scrollbar-3dlight-color: #9EBFE8; scrollbar-darkshadow-color: #9EBFE8; scrollbar-track-color: #9EBFE8; scrollbar-arrow-color: #FFFFFF; position: absolute; top: 18px; left: 0px;">

    <table class="biaoge" width="147" border="0" align="center" 
            cellpadding="0" cellspacing="0">
            
  <tr height="25">
    <td height="23"><table class="P_xiadan" width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr class="biaoti_beijing">
        <td width="15%" align="right"><img src="images/gif-0171.gif" /></td>
        <td width="83%"><div align="center" class="STYLE5">
            
        <a href="javascript:Display(nz01)" style="color:#fff">网站信息管理</a></div></td>
        <td width="8%">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr class="TR_beijing_1">
    <td valign="top"><div align="center">
      <table width="82%" border="0" align="center" cellpadding="0" cellspacing="0" id='nz01' style='display: '>
        <tr>
          <td><table style="height:0px;" width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="99"><table border="0" cellspacing="0" cellpadding="0" 
                      style="width: 122%">
                  <tr height="25">
                    <td class="STYLE4" style="cursor:hand;">
                        <a href="WZ_jbxx.aspx" target="right">基本设置</a></td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
        
        
        
        
      </table>
    </div></td>
  </tr>
  <tr height="25">
    <td class="biaoti_beijing" height="23"><table height="25" class="P_xiadan" width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr height="25">
        <td width="15%" align="right"><img src="images/gif-0171.gif" /></td>
        <td width="83%"><div align="center" class="STYLE5"><a href="javascript:Display(nz02)">管理员管理</a></div></td>
        <td width="8%">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr class="TR_beijing_1">
    <td valign="top"><div align="center">
      <table width="82%" border="0" align="center" cellpadding="0" cellspacing="0" id='nz02' style='DISPLAY: '>
        <tr>
          <td height="25"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="99"><table border="0" cellspacing="0" cellpadding="0" 
                      style="width: 122%">
                  <tr>
                    <td class="STYLE4" style="cursor:hand;" onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'">
                        <a href="TJ_guanliyan.aspx" target="right">添加管理员</a>
                        </td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
        
        
        
        <tr  height="15">
                              <td  class="STYLE4" style="cursor:hand" onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'">
                        <a href="YH_guanli.aspx" target="right">管理员管理</a></td>

        </tr>
      </table>
    </div></td>
  </tr>
  <tr height="25">
    <td height="23" class="biaoti_beijing"><table class="P_xiadan" width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr height="23">
        <td width="15%" align="right"><img src="images/gif-0171.gif" /></td>
        <td width="83%"><div align="center" class="STYLE5"><a href="javascript:Display(nz03)">新闻管理</a></div></td>
        <td width="8%">&nbsp;</td>
      </tr>
      
    </table></td>
  </tr>
   <tr class="TR_beijing_1">
    <td valign="top"><div align="center">
      <table width="82%" border="0" align="center" cellpadding="0" cellspacing="0" id='nz03' style='DISPLAY: '>
        <tr>
          <td height="25"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="99"><table border="0" cellspacing="0" cellpadding="0" 
                      style="width: 121%">
                  <tr>
                    <td height="23" class="STYLE4" style="cursor:hand" onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><a href="Newsclass_guanli.aspx" target="right">分类管理</a></td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="10"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td class="STYLE4" style="cursor:hand" onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><a href="Newsclass_tiaojia.aspx" target="right">添加分类</a></td>
                  </tr>
              </table></td>
            </tr>
             <tr>
              <td width="5"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="25" class="STYLE4" style="cursor:hand" onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><a href="News_guanli.aspx" target="right">管理新闻</a></td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
        
        
        
        <tr>

                            <td class="auto-style1" onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><a href="Tiaojia.aspx" target="right">添加新闻</a></td>

                             

        </tr>
        
          <tr>
                              <td height="25" class="STYLE4" style="cursor:hand" onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'">
                        <a href="News_plgl.aspx" target="right">评论管理</a></td>

        </tr>
      </table>
    </div></td>
  </tr>
  <tr height="25">
    <td height="23" class="biaoti_beijing"><table class="P_xiadan" width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr >
        <td width="15%" align="right"><img src="images/gif-0171.gif" /></td>
        <td width="83%"><div align="center" class="STYLE5"><a href="javascript:Display(nz04)">会员管理</a></div></td>
        <td width="8%">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
   <tr class="TR_beijing_1">
    <td valign="top"><div align="center">
      <table width="82%" border="0" align="center" cellpadding="0" cellspacing="0" id='nz04' style='DISPLAY: '>
        <tr>
          <td height="25"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="8"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="23" class="STYLE4" style="cursor:hand" onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><a href="User/Yonghu_guanli.aspx" target="right">会员信息</a></td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="8"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="23" class="STYLE4" style="cursor:hand" onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><a href="User/liuyan_guanli.aspx" target="right">会员留言管理</a></td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="8"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  
              </table></td>
            </tr>
          </table></td>
        </tr>
       
        
        
        
      
      </table>
    </div></td>
  </tr>

    
 
        
        <tr height="23" >
        <td height="23" class="biaoti_beijing">
       <table class="P_xiadan" width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="15%" align="right"><img src="images/gif-0171.gif" /></td>
        <td width="83%"><div align="center" class="STYLE5"><a href="javascript:Display(nz06)">友情链接管理</a></div></td>
        <td width="8%">&nbsp;</td>
      </tr>
      
   <!--投票管理尾--> </table>
        </td>
        </tr>
         <tr class="TR_beijing_1">
    <td valign="top"><div align="center">
      <table width="82%" border="0" align="center" cellpadding="0" cellspacing="0" id="nz06" style='DISPLAY: '>
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
        
          </table></td>
        </tr>
        <tr>
         
            
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="8"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="23" class="STYLE4" style="cursor:hand" onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><a href="YQ_textling.aspx" target="right">添加文字链接</a></td>
                  </tr>
              </table></td>
            </tr>
            
          </table>
        
          </td>
          
        </tr>
        
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="8"></td>
              <td width="99"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="23" class="STYLE4" style="cursor:hand" onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><a href="YQ_Textguanli.aspx" target="right">管理文字链接</a></td>
                  </tr>
              </table></td>
            </tr>
            
          </table>
        
          </td>
          
        </tr>
        
        
         </table>
         </div>
         </td>
         </tr>
        
        <tr>
        <td height="23" class="biaoti_beijing">
       <table class="P_xiadan" width="100%" border="0" cellspacing="0" cellpadding="0">
 
      
   <!--投票管理尾--> </table>
        </td>
        </tr>
 
   <tr class="TR_beijing_1">
    <td valign="top"><div align="center">

         </div>
         </td>
         </tr>
       
                   
          </table>
         <div style="height:5px;"></div>


    </div>
    
    </form>
</body>
</html>
