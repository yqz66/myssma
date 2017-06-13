<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/6/10
  Time: 20:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <title>用户列表</title>
    <script type="text/javascript" src="<%=path%>/js/jquery-3.2.1.min.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=path%>/static/bootstrap/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <script type="text/javascript" src="<%=path%>/static/bootstrap/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
<div class="modal fade" tabindex="-1" role="dialog" aria-labelledby="gridSystemModalLabel" id="addUser">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="gridSystemModalLabel">新增用户</h4>
            </div>
            <div class="modal-body" id="adds">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">用户名:</label>
                        <div class="col-sm-6">
                            <input type="text" name="username" class="form-control" id="username" placeholder="请输入用户名">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">昵称:</label>
                        <div class="col-sm-6">
                            <input type="text" name="nickname" class="form-control" id="nickname" placeholder="请输入昵称">
                            <span class="help-block"></span>
                        </div>

                    </div>
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">密码:</label>
                        <div class="col-sm-6">
                            <input type="password" name="password" class="form-control" id="password" placeholder="请输入密码">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">请再次输入密码:</label>
                        <div class="col-sm-6">
                            <input type="password" class="form-control" id="rePassword" placeholder="再次输入密码">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">出生日期:</label>
                        <div class="col-sm-6">
                            <input type="text" name="dateofbirth" class="form-control" id="dateofbirth" placeholder="例如:2017-01-01">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">性别:</label>
                        <div class="col-sm-6">
                            <label class="radio-inline">
                                <input type="radio" name="gender" id="gender" checked="checked"  value="01"> 男
                            </label>
                            <label class="radio-inline">
                            <input type="radio" name="gender"  value="02"> 女
                        </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">角色:</label>
                        <div class="col-sm-6">
                            <select class="form-control" id="add_role" name="roleid">
                            </select>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="addUser_buts">保存用户</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
    <div class="container">
        <%--标题--%>
        <div class="row">
            <div class="col-md-12"><h2>用户信息</h2></div>
        </div>
            <%--信息--%>
        <div class="row">
            <div class="col-md-4 col-md-offset-8">
                <button class="btn btn-danger" id="addUser_but">新增</button>
                <button class="btn btn-danger" id="delete_all_user">删除</button>
            </div>
        </div>
            <%--信息--%>
        <div class="row">
            <div class="col-md-12">
                <table class="table">
                    <tr>
                        <td>
                            全选  <input type="checkbox" id="delete-all-user" >
                        </td>
                        <th>用户名</th>
                        <th>昵称</th>
                        <th>性别</th>
                        <th>注册时间</th>
                        <th>出生日期</th>
                        <th>角色</th>
                        <th>操作</th>
                    </tr>
                        <c:forEach items="${userlist}" var="user">
                    <tr>
                            <td align="center">
                                <input type="checkbox" class="delete_checkbox" value="${user.userid}" data_name="${user.username}">
                            </td>
                            <td>${user.username}</td>
                            <td>${user.nickname}</td>
                            <td>
                                ${user.gender eq '01'?'男':'女'}
                            </td>
                            <td>${user.registrationtime}</td>
                            <td>${user.dateofbirth}</td>
                            <td>${user.roles.rolesname}</td>
                            <td>
                                <button class="btn btn-success">
                                    <span class="glyphicon glyphicon-pencil" aria-hidden="true">编辑</span>
                                </button>
                                <button class="btn btn-danger deleteUser" data_id="${user.userid}" data_name="${user.username}">
                                    <span class="glyphicon glyphicon-remove " aria-hidden="true">删除</span></button>
                            </td>
                    </tr>
                        </c:forEach >


                </table>

            </div>
        </div>
            <%--分页内容--%>
        <div class="row">
            <div class="col-lg-6">
                <h4>
                一共${page.totalPosts}条记录,当前第 ${page.pageNumber}页,共${page.totalPages}页 .
                </h4>
            </div>
            <div class="col-md-6 col-md-offset-5">
                <nav aria-label="Page navigation">
                    <ul class="pagination">
                        <li>
                            <a href="/listuser.controller?pageNumber=1" aria-label="Previous">
                                    首页
                            </a>
                        </li>
                        <li>
                            <a href="/listuser.controller?pageNumber=${page.pageNumber-1}" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                        <c:forEach items="${arr}" var="number">
                            <%----%>
                            <c:if test="${number!='0'}">
                                <li <c:if test="${number==page.pageNumber}">class='active'</c:if>><a href="/listuser.controller?pageNumber=${number}">${number}</a></li>
                            </c:if>
                        </c:forEach>
                        <c:if test="${page.pageNumber+1<=page.totalPages}">
                            <li>
                                <a href="/listuser.controller?pageNumber=${page.pageNumber+1}" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                            <li>
                                <a href="/listuser.controller?pageNumber=${page.totalPages}" aria-label="Previous">
                                    末页
                                </a>
                            </li>
                        </c:if>

                    </ul>
                </nav>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        //批量删除
        $('#delete_all_user').click(function () {
            //1.找到选中删除的员工
            var allUserId = $('.delete_checkbox:checked');
            //2.循坏拿出每个多选框的value
            var idValues = "";
            //拿出每个人的姓名
            var usernames = "";
            $.each(allUserId,function (index,itmes) {
                var id = $(itmes).val();
                idValues+=id+"-";
                //获取自定义属性的值
                var uname=$(itmes).attr('data_name');
                usernames+=uname+",";
            })
            idValues=idValues.substring(0,idValues.length-1);
            usernames=usernames.substring(0,usernames.length-1);
            if (confirm('确定删除{ '+usernames+' }吗?')) {
                $.ajax({
                    url:"/"+idValues+"/delete.controller",
                    type:"get",
                    success:function () {
                        alert("删除成功");
                        location.href=location.href;
                    }
                });
            }
        })
        //单选按钮点击
        $('.delete_checkbox').click(function () {
            //首先获取多选框的选中的数量，当多选框选中的数量等于多选框时，全选框不选,否则选上
            var che1 = $('.delete_checkbox:checked').length;
            var che2 = $('.delete_checkbox').length;
            $('#delete-all-user').prop("checked",che1==che2);
        });
        //全选、全部选
        $('#delete-all-user').click(function () {
            //原生的html属性建议用prop取值
            var allche = $(this).prop("checked");
            //点击时,下面所有多选框和当前多选框的选中值一致
            $('.delete_checkbox').prop("checked",allche);
        });
        //清空元素的cssClass
        function clear_input_css(){
            $('#username').parent().removeClass("has-error has-success");
            $('#username').next("span").html("");
            $('#password').parent().removeClass("has-error has-success");
            $('#password').next("span").html("");
            $('#nickname').parent().removeClass("has-error has-success");
            $('#nickname').next("span").html("");
            $('#rePassword').parent().removeClass("has-error has-success");
            $('#rePassword').next("span").html("");
        }
        //增加表单验证
        function jiaoyan(){
            var username = $('#username').val();
            var password = $('#password').val();
            var nickname = $('#nickname').val();
            var repassword = $('#rePassword').val();
            var dateofbirth = $('#dateofbirth').val();
            var gender = $('#gender').val();
            if (username.length<3||username.length>10) {
                $('#username').parent().addClass("has-error");
                $('#username').next("span").html("用户名必须3到10位!");
                return false
            }
            if (nickname.length<4||nickname.length>16) {
                $('#nickname').parent().addClass("has-error");
                $('#nickname').next("span").html("昵称必须4到16位!");
                return false
            }
            if (password.length<4||password.length>16) {
                $('#password').parent().addClass("has-error");
                $('#password').next("span").html("密码必须4到16位!");

                return false
            }
            if (password!=repassword) {
                $('#password').parent().addClass("has-error");
                $('#rePassword').parent().addClass("has-error");
                $('#rePassword').next("span").html("两次输入的密码不一致!");
                return false;
            }
            var datejiaoyan =/^(?:(?!0000)[0-9]{4}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-8])|(?:0[13-9]|1[0-2])-(?:29|30)|(?:0[13578]|1[02])-31)|(?:[0-9]{2}(?:0[48]|[2468][048]|[13579][26])|(?:0[48]|[2468][048]|[13579][26])00)-02-29)$/;
            if (!datejiaoyan.test(dateofbirth)) {
                alert("错误出生日期")
                $('#dateofbirth').parent().addClass("has-error");
                $('#dateofbirth').next("span").html("请输入正确的时间格式!");
                return false;
            }
                return true;
        }
        //增加用户
        $('#addUser_buts').click(function () {
            clear_input_css();
            if (jiaoyan()==false) {
                return false;
            }
            var datas = $('#adds form').serialize();
            //解决中文乱码
            datas = decodeURIComponent(datas,true);
            $.ajax({
                url:"/addUser.controller",
                data:datas,
                type:"POST",
                success:function (result) {
                    if (result=="100") {
                        $('#addUser').modal('hide');
                        location.href=location.href;
                    }
                },
                error:function () {
                    alert("错误");
                }
            });
        });


        //删除员工
        $('.deleteUser').click(function () {
            var userid=$(this).attr("data_id");
            var data_uname=$(this).attr("data_name");
            if (confirm("确定删除 "+data_uname+" 吗?")) {
                $.ajax({
                    url:"/"+userid+"/delete.controller",
                    success:function (result) {
                        location.href=location.href;
                    },
                    error:function () {
                        alert("删除错误!");
                    }
                });
            }
        });




        //查询出角色信息
        $('#addUser_but').click(function () {
            $("#add_role").empty();
            $.ajax({
                url:"/queryroles.controller",
                success:function (result) {
                    $.each(result,function (index,itmes) {
                        $("#add_role").append("<option value='"+itmes.roleid+"'>"+itmes.rolesname+"</option>");
                    })
                },
                error:function () {
                    alert("错误");
                }
            })
            $('#addUser').modal();
        });


    </script>
</body>
</html>
