<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'main.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" type="text/css" href="<%=path%>/css/leftstyles.css" />
		<script type="text/javascript">
            window.onload=function(){
                setInterval(go, 1000);
            };
            var x=3; //利用了全局变量来执行
            function go(){
                x--;
                if(x>0){
                    document.getElementById("sp").innerHTML="欢迎您 ${user.nickname}!"; //每次设置的x的值都不一样了。
                }else{
                    location.href='/listuser.controller';
                }
            }
		</script>
		<style type="text/css">
			span{
				color: #8c8c8c;
				font-size: 20px;
				position: absolute;
				top:60%;
				right:45%;
			}
		</style>
	</head>
	<body>
	<<img src="<%=path%>/images/hello.jpg" alt="欢迎您${user.nickname}" width="100%" height="100%">
	<span id="sp"></span>
	</body>
</html>
