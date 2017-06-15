<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/6/10
  Time: 20:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>用户列表</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/bootstrap/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/bootstrap/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $.ajax({
            url: "/querymenus.controller",
            type :"GET",
            success :function (result) {
                $.each(result,function (index,itmes) {
                    $('#titles').append("<li class='s'><a href='"+itmes.menus.url+"' target='_top'><h4>"+itmes.menus.menusname+"</h4></a></li>");
//                    $('#titles').append("<li role='presentation' class='dropdown'><a class='dropdown-toggle' data-toggle='dropdown' href='"+itmes.menus.url+"?page.pageNumber=1' role='button' aria-haspopup='true' aria-expanded='false'><h4>"+itmes.menus.menusname+"</h2></a></li>");
                });
                $('#titles').append("<li role='presentation' class='dropdown'><a class='dropdown-toggle' data-toggle='dropdown' href='#' role='button' aria-haspopup='true' aria-expanded='false'><h4>更多<span class ='caret'></span></h4></a><ul class='dropdown-menu'><li>重新登录</li></ul></li>");

            },
            error :function () {
                alert("错误");
            }
        })
        $(function() {
            $(".table tr").hover(function () {
                $(this).addClass("success");
            }, function () {
                $(this).removeClass("success");
            });
        });
    </script>
</head>
<body style="padding-top: 70px;">
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
                        <label  class="col-sm-2 control-label">选择角色:</label>
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
                                            <%--修改用户--%>
<div class="modal fade" tabindex="-1" role="dialog" aria-labelledby="gridSystemModalLabel" id="updateUser">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="ridSystemModalLabel">编辑用户</h4>
            </div>
            <div class="modal-body" id="updatas">
                <form class="form-horizontal" id="update_user_from">
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">用户名:</label>
                        <div class="col-sm-6">
                            <input type="text" name="username" class="form-control" id="up_username" placeholder="请输入用户名">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">昵称:</label>
                        <div class="col-sm-6">
                            <input type="text" name="nickname" class="form-control" id="up_nickname" placeholder="请输入昵称">
                            <span class="help-block"></span>
                        </div>

                    </div>
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">出生日期:</label>
                        <div class="col-sm-6">
                            <input type="text" name="dateofbirth" class="form-control" id="up_dateofbirth" placeholder="例如:2017-01-01">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">性别:</label>
                        <div class="col-sm-6">
                            <label class="radio-inline">
                                <input type="radio" name="gender" id="up_gender" checked="checked"  value="01"> 男
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="gender"  value="02"> 女
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">角色:</label>
                        <div class="col-sm-6">
                            <select class="form-control" id="up_role" name="roleid">
                            </select>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="up_User_buts">更新用户</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<ul class="nav nav-tabs navbar-fixed-top" id="titles" style="padding-left: 30%;">
</ul>
    <div class="container" >
        <%--标题--%>
        <div class="row">
            <br/>
            <div class="col-md-12"><h4>用户信息</h4></div>
        </div>
            <%--信息--%>
        <div class="row">
            <div class="col-md-8 col-md-offset-4">
                <div class="col-md-5 col-md-offset-2">
                    <form class="navbar-form navbar-left" role="search" method="post" action="/listuser.controller">
                        <div class="form-group">
                            <input type="text" name="username" class="form-control" placeholder="关键字">
                        </div>
                        <button type="submit" class="btn btn-default">查找</button>
                    </form>
                </div>
                <button class="btn btn-danger" id="addUser_but">新增</button>
                <button class="btn btn-danger" id="delete_all_user">删除</button>
            </div>
        </div>
            <%--信息--%>
        <div class="row">
            <div class="col-md-12">
                <table class="table table-hover">
                    <tr>
                        <td>
                            全选 <input type="checkbox" id="delete-all-user" >
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
                                <button class="btn btn-success update_but" data_id="${user.userid}">
                                    <span class="glyphicon glyphicon-pencil " aria-hidden="true">编辑</span>
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
            <div class="col-md-6 col-md-offset-5"style="position: absolute;bottom: 10%;">
                <nav aria-label="Page navigation">
                    <ul class="pagination">

                        <li <c:if test="${page.pageNumber==1}">class="previous disabled">
                            <a href="#" aria-label="Previous">
                                首页
                            </a>
                            </c:if>
                            <c:if test="${page.pageNumber!=1}">>
                                <a href="/listuser.controller?pageNumber=1" aria-label="Previous">
                                    首页
                                </a>
                            </c:if>
                        </li>
                        <li <c:if test="${page.pageNumber==1}">class="previous disabled">
                            <a href="#" aria-label="Previous">
                                &laquo;
                            </a>
                            </c:if>
                            <c:if test="${page.pageNumber!=1}">>
                                <a href="/listuser.controller?pageNumber=${page.pageNumber-1}" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </c:if>
                        </li>

                        <c:forEach items="${arr}" var="number">
                            <%----%>
                            <c:if test="${number!='0'}">
                                <li <c:if test="${number==page.pageNumber}">class='active'</c:if>><a href="/listuser.controller?pageNumber=${number}">${number}</a></li>
                            </c:if>
                        </c:forEach>
                            <li <c:if test="${page.pageNumber+1>page.totalPages}">class="previous disabled">
                                <a href="#" aria-label="Previous">
                                    &raquo;
                                </a>
                                </c:if>
                                <c:if test="${page.pageNumber+1<=page.totalPages}">>
                                    <a href="/listuser.controller?pageNumber=${page.pageNumber+1}" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                    </a>
                                </c:if>
                            </li>
                        <li <c:if test="${page.pageNumber+1>page.totalPages}">class="previous disabled">
                            <a href="#" aria-label="Previous">
                                末页
                            </a>
                            </c:if>
                            <c:if test="${page.pageNumber+1<=page.totalPages}">>
                                <a href="/listuser.controller?pageNumber=${page.totalPages}" aria-label="Previous">
                                    末页
                                </a>
                            </c:if>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        //验证用户名
        $('#username').blur(function () {
            var username = $('#username').val();
            $('#username').parent().removeClass("has-error has-success");
            $.ajax({
                url:"queryUsername.controller?username="+username,
                type:"get",
                success:function (result) {
                    if (result.code==200) {
                        $('#username').parent().addClass("has-error");
                        $('#username').next("span").html("用户名已被占用!");
                    }
                },
                error:function () {
                   alert("用户名验证错误!");
                }
            });
        });
        //编辑用户
        $('.update_but').click(function () {
            var userid=$(this).attr("data_id");
            $('#updateUser').modal();
            queryRoles("#up_role");
            $.ajax({
                url:"/"+userid+"/detail.controller",
                type:"get",
                success:function (result) {
                    $('#up_username').val(result.username);
                    $('#up_nickname').val(result.nickname);
                    $('#up_dateofbirth').val(result.dateofbirth);
                    $('#update_user_from input[type=radio]').val([result.gender]);
                    $('#up_role').val([result.roleid]);
                },
                error:function () {
                    alert("错误");
                }
            })
            $('#up_User_buts').click(function () {
                var flag = jiaoyan('#up_username','#up_nickname','#up_dateofbirth');
                var datas=$('#update_user_from').serialize();
                datas = decodeURIComponent(datas,true);
                alert(datas+"&userid="+userid);
                $.ajax({
                    url:"/update.controller",
                    data:datas+"&userid="+userid,
                    type:"post",
                    success:function (result) {
                        if (result.code==100) {
                            $('#updateUser').modal("hide");
                            location.href=location.href;
                            alert("操作成功");
                        }
                    },
                    error:function () {
                        alert("错误")
                    }
                });
            });
        });

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
                        location.href=location.href;
                        alert("删除成功");
                    },
                    error:function () {
                        alert("错误");
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
        //修改表单验证
        //增加表单验证
        
        function jiaoyan(uname,nkname,dateof){
            //清空css样式
            $(uname).parent().removeClass("has-error has-success");
            $(uname).next("span").html("");
            $(nkname).parent().removeClass("has-error has-success");
            $(nkname).next("span").html("");
            $(dateof).parent().removeClass("has-error has-success");
            $(dateof).next("span").html("");
            var username = $(uname).val();
            var nickname = $(nkname).val();
            var dateofbirth = $(dateof).val();
            if (username.length<3||username.length>10) {
                $(uname).parent().addClass("has-error");
                $(uname).next("span").html("用户名必须3到10位!");
                return false
            }
            if (nickname.length<4||nickname.length>16) {
                $(nkname).parent().addClass("has-error");
                $(nkname).next("span").html("昵称必须4到16位!");
                return false
            }

            var datejiaoyan =/^(?:(?!0000)[0-9]{4}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-8])|(?:0[13-9]|1[0-2])-(?:29|30)|(?:0[13578]|1[02])-31)|(?:[0-9]{2}(?:0[48]|[2468][048]|[13579][26])|(?:0[48]|[2468][048]|[13579][26])00)-02-29)$/;
            if (!datejiaoyan.test(dateofbirth)) {
                $(dateof).parent().addClass("has-error");
                $(dateof).next("span").html("请输入正确的时间格式!");
                return false;
            }
                return true;
        }
        //密码验证
        function testPwd(pwd,repwd) {
            $(pwd).parent().removeClass("has-error has-success");
            $(pwd).next("span").html("");
            $(repwd).parent().removeClass("has-error has-success");
            $(repwd).next("span").html("");
            var password = $(pwd).val();
            var repassword = $(repwd).val();
            if (password.length<4||password.length>16) {
                $(pwd).parent().addClass("has-error");
                $(pwd).next("span").html("密码必须4到16位!");
                return false
            }
            if (password!=repassword) {
                $(pwd).parent().addClass("has-error");
                $(repwd).parent().addClass("has-error");
                $(repwd).next("span").html("两次输入的密码不一致!");
                return false;
            }
            return true;
        }
        //增加用户
        $('#addUser_buts').click(function () {
            if (jiaoyan('#username','#nickname','#dateofbirth')==false) {
                return false;
            }
            if (testPwd('#password','#rePassword')==false) {
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
                    if (result.code=="100") {
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



        function queryRoles(elementid){
            $(elementid).empty();
            $.ajax({
                url:"/queryroles.controller",
                success:function (result) {
                    $.each(result,function (index,itmes) {
                        $(elementid).append("<option value='"+itmes.roleid+"'>"+itmes.rolesname+"</option>");
                    });
                },
                error:function () {
                    alert("错误");
                }
            })
        }
        //查询出角色信息
        $('#addUser_but').click(function () {
            queryRoles('#add_role');
            $('#addUser').modal();
        });


    </script>
</body>
</html>
