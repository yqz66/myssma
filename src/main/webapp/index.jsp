<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/6/13
  Time: 8:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="utf-8"  contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<title>My JSP 'index.jsp' starting page</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles.css">
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.5.2.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.easing.1.3.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/login.js"></script>
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
			<img src="${pageContext.request.contextPath}/images/frontcurtainB.jpg" />
		</div>
		<div class="rightcurtain">
			<img src="${pageContext.request.contextPath}/images/frontcurtainB.jpg" />
		</div>
		<a class="rope" href="#"> <img src="${pageContext.request.contextPath}/images/rope.png" /> </a>
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
