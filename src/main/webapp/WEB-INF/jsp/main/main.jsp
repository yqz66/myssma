<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
	<head>
		<title>My JSP 'main.jsp' starting page</title>
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
				color: #2b542c;
				font-size: 30px;
				position:absolute;
				top:55%;
				right:45%;
			}
		</style>
	</head>
	<body>
	<<img src="${pageContext.request.contextPath}/images/hello.jpg" alt="欢迎您${user.nickname}" width="100%" height="100%">
	<span id="sp"></span>
	</body>
</html>
