<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <title>My JSP 'top.jsp' starting page</title>

	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/top.css" />

  </head>
  
  <body leftmargin="0" topmargin="0">
    <table width="100%" height="64" border="0" cellpadding="0" cellspacing="0" class="admin_topbg">
  <tr>
    <td width="61%" height="64"><img src="${pageContext.request.contextPath}/images/top/logo.gif" width="262" height="64"></td>
    <td width="39%" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="96%" height="38" class="admin_txt">用户：<b>${user.nickname }</b> 您好,欢迎登陆本系统！</td>
        
        <td width="4%">&nbsp;</td>
      </tr>
      <tr>
        <td height="19" colspan="3">&nbsp;</td>
        </tr>
    </table></td>
  </tr>
</table>
    
    	
    
    
    
    
    
    
    
    
    
    
    
    
    
  </body>
</html>
