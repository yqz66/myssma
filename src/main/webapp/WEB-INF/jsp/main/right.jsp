<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'top.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/mainstyles.css" />
	<script type="text/javascript" src="<%=path %>/js/jquery-1.5.2.min.js"></script>
	<script type="text/javascript" src="<%=path %>/js/editTable.js"></script>
	<script type="text/javascript" src="<%=path %>/js/jQuery.menuEffect.js"></script>
	

  </head>
  
  <body >
	<div class="eff">    
    	<div id="img">
    	<table class="ajaxtable"  cellpadding="0" cellspacing="0">
		<thead>
			<tr>
				<th><h3>编号</h3></th>
				<th><h3>名字</h3></th>
				<th><h3>电话</h3></th>
				<th width="20%"><h3>操作</h3></th>
				
			</tr>
		</thead>
		<tbody>
			<tr>
				<td class="font_context">1</td>
				<td>中文</td>
				<td>(627) 536-4760</td>
				<td>
				
					<div class="menu" id="menu1">
						<ul id="main">
							<li >
								<a href="#">新增</a>
							</li>
							<li >
								<a  href="#">修改</a>
							</li>
							<li >
								<a href="#">删除</a>
							</li>
						</ul>
					</div>
				
				
				</td>
				
				
			</tr>
			<tr>
				<td class="font_context">2</td>
				<td>Jaquelyn Pace</td>
				<td>(921) 943-5780</td>
				<td><div class="menu" id="menu2">
						<ul id="main">
							<li >
								<a href="#">新增</a>
							</li>
							<li >
								<a  href="#">修改</a>
							</li>
							<li >
								<a href="#">删除</a>
							</li>
						</ul>
					</div></td>
				
				
			</tr>
			<tr>
				<td class="font_context">3</td>
				<td>Jaquelyn Pace</td>
				<td>(921) 943-5780</td>
				<td><div class="menu" id="menu3">
						<ul id="main">
							<li >
								<a href="#">新增</a>
							</li>
							<li >
								<a  href="#">修改</a>
							</li>
							<li >
								<a href="#">删除</a>
							</li>
						</ul>
					</div></td>
				
				
			</tr>
			<tr>
				<td class="font_context">4</td>
				<td>Jaquelyn Pace</td>
				<td>(921) 943-5780</td>
				<td><div class="menu" id="menu4">
						<ul id="main">
							<li >
								<a href="#">新增</a>
							</li>
							<li >
								<a  href="#">修改</a>
							</li>
							<li >
								<a href="#">删除</a>
							</li>
						</ul>
					</div></td>
				
				
			</tr>
			<tr>
				<td class="font_context">4</td>
				<td>Jaquelyn Pace</td>
				<td>(921) 943-5780</td>
				<td><div class="menu" id="menu5">
						<ul id="main">
							<li >
								<a href="#">新增</a>
							</li>
							<li >
								<a  href="#">修改</a>
							</li>
							<li >
								<a href="#">删除</a>
							</li>
						</ul>
					</div></td>
				
				
			</tr>
			<tr>
				<td class="font_context">4</td>
				<td>Jaquelyn Pace</td>
				<td>(921) 943-5780</td>
				<td><div class="menu" id="menu6">
						<ul id="main">
							<li >
								<a href="#">新增</a>
							</li>
							<li >
								<a  href="#">修改</a>
							</li>
							<li >
								<a href="#">删除</a>
							</li>
						</ul>
					</div></td>
				
				
			</tr>
			
		</tbody>
  </table>
    <div>
    	<input type="button" value="点击"  id="click"/>
    </div>
    </div>
    <div class="caption">
    	<div>
    		<input type="button" value="返回"  id="btn"/>
    	</div>
    </div>
    
    
    
    
    
    
    
    
    
  </div>  
    
  </body>
</html>
