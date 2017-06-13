<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'index.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/styles.css">
		<script type="text/javascript" src="<%=path %>/js/jquery-1.5.2.min.js"></script>
		<script type="text/javascript" src="<%=path %>/js/jquery.easing.1.3.js"></script>
		<script type="text/javascript" src="<%=path %>/js/login.js"></script>
		<script type="text/javascript">
			function login(){
				var msg = "${msg}";
				if(msg.length>0){
					alert(msg);
				}
			}
		
		</script>
	</head>

	<body onload="login();">
		<div class="leftcurtain">
			<img src="<%=path %>/images/frontcurtainB.jpg" />
		</div>
		<div class="rightcurtain">
			<img src="<%=path %>/images/frontcurtainB.jpg" />
		</div>
		<a class="rope" href="#"> <img src="<%=path %>/images/rope.png" /> </a>
		<div class="logo">
			<div id="formwrapper">
				<h3>
					欢迎来到XXX
				</h3>
				<form action="/login.controller" method="post" name="apLogin" id="apLogin">
					<fieldset>
						<legend>
							用户登录
						</legend>
						<div>
							<label for="Name">
								用户名
							</label>
							<input type="text" name="username" id="Name" size="18" maxlength="30" />
							<br />
						</div>

						<div>
							<label for="password">
								密码
							</label>
							<input type="password" name="password" id="password" size="18"
								maxlength="30" />
							<br />
						</div>
						<div align="center">
							<input name="login791" type="submit" class="buttom" value="登录" />
						</div>
					</fieldset>
				</form>
			</div>
			<br />

		</div>
	</body>
</html>
