<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<title>My JSP 'top.jsp' starting page</title>

		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/leftstyles.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.5.2.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jQuery.menuEffect.js"></script>
		<script type="text/javascript">
			$(document).ready(
				function(){
					$.myPlugin.slide();
				}
			);
		
		</script>
	</head>

	<body>
		<div id="navigation-block">
			<p class="sliding-element">
				<h3 id="title_font">
					<button id="menus" type="button">唐城学士后</button>
				</h3>
			</p>
			<ul id="sliding-navigation">
				<li class="sliding-element">
					<a href="mainAction!exit.action" target="_top">退出系统</a>
				</li>
			</ul>
		</div>
		<script type="text/javascript" >
			$("#menus").click(function () {
                $("#sliding-navigation").empty();
                var roleid = "/querymenus/${user.roleid}.controller";
			    $.ajax({
					url: roleid,
					type :"GET",
					success :function (result) {
					    $.each(result,function (index,itmes) {
                            $("#sliding-navigation").append("<li class='s'><a href='"+itmes.menus.url+"' target='right'>"+itmes.menus.menusname+"</a></li>");
                            $(".s").addClass("sliding-element");
                        })
                    },
					error :function () {
					    alert("错误");

                    }

				})
            });
		</script>
	</body>
</html>
