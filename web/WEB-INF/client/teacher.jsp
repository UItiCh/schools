<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path=request.getContextPath();
%>
<html>
<head>
    <title>老师主页</title>
    <link rel="shortcut icon" href="https://cdn4.iconfinder.com/data/icons/education-24/63/graduation-512.png" type="image/x-icon">
    <link rel="apple-touch-startup-image" href="web/static/img/tu.png">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>


    <style>
        .btn:focus,
        .btn:active:focus,
        .btn.active:focus,
        .btn.focus,
        .btn:active.focus,
        .btn.active.focus {
            outline: none;
        }
        .arrow {
            width: 0;
            height: 0;
            border-right: 0.4rem solid transparent;
            border-top: 0.4rem solid white;
            border-left: 0.4rem solid transparent;
            border-bottom: 0.4rem solid transparent;
            position: relative;
            top: 1rem;
        }
        .outarrow {
            position: absolute;
            width: 0;
        }
        .inarrow {
            display: none;
            position: relative;
            width: 80px;
            background: #fff;
            border-radius: 3px;
            top: 0.1rem;
            right: 4rem;
        }
        .inarrow a {
            font-size: 0.95rem;
            display: block;
            text-align: center;
            color: gray;
            text-decoration: none;
        }
        .navbar-brand1:hover .inarrow {
            display: block;
        }
        .navbar-brand1 {
            cursor: default;

        }
        .inarrow a:hover {
            color: #fff;
            background-color: #17a2b8;
            border-radius: 3px;
        }
    </style>

    <title>teacher</title>
</head>

<body class="px-4" style="margin-top: 62px;">
<nav class="navbar navbar-expand-md bg-primary fixed-top rounded  shadow-lg justify-content-between" style="margin:0 24px;height: 52px;">
    <a class="navbar-brand  text-white" href="<%=path%>/index">首页</a>

    <form class="form-inline  my-lg-0">
        <span class="border-0  my-sm-0 text-white mr-2 py-1 navbar-brand1"
        >欢迎您，${sessionScope.teacher.teacherName}
          <span class="outarrow">
            <span class="arrow"></span>
            <div class="inarrow">
              <a href="#">修改密码</a>
              <a href="<%=path%>/teacherlogout">退出登录</a>
            </div>
          </span>
        </span>
    </form>
</nav>

<div class="row">
    <!-- 左侧边导航栏 -->
    <div class="col-2">
        <div class="list-group" id="list-tab" role="tablist">

            <c:if test="${teacherTitle==0}">
                <a class="list-group-item list-group-item-action active" id="list-index-list" data-toggle="list"
                   href="#list-index" role="tab" aria-controls="index">老师主页</a>
            </c:if>
            <c:if test="${teacherTitle!=0}">
                <a class="list-group-item list-group-item-action" id="list-index-list" data-toggle="list"
                   href="#list-index" role="tab" aria-controls="index">老师主页</a>
            </c:if>
            <c:if test="${teacherTitle==1}">
                <a class="list-group-item list-group-item-action active" id="list-profile-list" data-toggle="list"
                   href="#list-profile" role="tab" aria-controls="profile">个人信息查询</a>
            </c:if>
            <c:if test="${teacherTitle!=1}">
                <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="list"
                   href="#list-profile" role="tab" aria-controls="profile">个人信息查询</a>
            </c:if>
            <c:if test="${teacherTitle==2}">
                <a class="list-group-item list-group-item-action active" id="list-messages-list" data-toggle="list"
                   href="#list-messages" role="tab" onclick="window.location.href='<%=path%>/client/t/teacherClass/${2}'" aria-controls="messages">我的班级</a>
            </c:if>
            <c:if test="${teacherTitle!=2}">
                <a class="list-group-item list-group-item-action" id="list-messages-list" data-toggle="list"
                   href="#list-messages" role="tab" onclick="window.location.href='<%=path%>/client/t/teacherClass/${2}'" aria-controls="messages">我的班级</a>
            </c:if>
<%--            <c:if test="${teacherTitle==3}">--%>
<%--                <a class="list-group-item list-group-item-action active" id="list-messages-list" data-toggle="list"--%>
<%--                   href="#list-messages" role="tab" aria-controls="messages">班级查询</a>--%>
<%--            </c:if>--%>
<%--            <c:if test="${teacherTitle!=3}">--%>
<%--                <a class="list-group-item list-group-item-action" id="list-messages-list" data-toggle="list"--%>
<%--                   href="#list-messages" role="tab" aria-controls="messages">班级查询</a>--%>
<%--            </c:if>--%>
            <c:if test="${teacherTitle==4}">
                <a class="list-group-item list-group-item-action active" id="list-score-list" data-toggle="list"
                   href="#list-score" role="tab" onclick="window.location.href='<%=path%>/client/t/teachercourse/${4}'" aria-controls="score">我的课程</a>
            </c:if>
            <c:if test="${teacherTitle!=4}">
                <a class="list-group-item list-group-item-action" id="list-score-list" data-toggle="list"
                   href="#list-score" role="tab" onclick="window.location.href='<%=path%>/client/t/teachercourse/${4}'" aria-controls="score">我的课程</a>
            </c:if>
        </div>
    </div>
    <!-- 右侧内容部分 -->
    <div class="col-10">

        <div class="tab-content" id="nav-tabContent">
            <!-- 首页开始 -->
            <c:if test="${teacherTitle==0}">
                <div class="tab-pane fade show active clear-both" id="list-index" role="tabpanel"
            </c:if>
            <c:if test="${teacherTitle!=0}">
                <div class="tab-pane fade clear-both" id="list-index" role="tabpanel"
            </c:if>
                 aria-labelledby="list-index-list">
                <!-- 日历 -->
                <div class="float-left">
                    <iframe src="<%=path%>/static/calendar/index.html" frameborder="0"
                            style="width: 520px; height: 560px;"></iframe>
                </div>
                <script type="text/javascript">
                    // $("#mydatepicker").dcalendarpicker();
                    // $("#mydatepicker2").dcalendarpicker({
                    //     format: "yyyy-mm-dd",
                    // });
                    // $("#mycalendar").dcalendar();


                    $(document).ready(function() {
                        $("#mydatepicker").dcalendarpicker();
                        $("#mydatepicker2").dcalendarpicker({
                            format: "yyyy-mm-dd",
                        });
                        $("#mycalendar").dcalendar();
                    });

                </script>
            </div>
            <!-- 首页结束 -->


            <!--  个人信息查询部分开始-->

            <c:if test="${teacherTitle==1}">
            <div class="tab-pane fade show active" id="list-profile" role="tabpanel" aria-labelledby="list-profile-list">
            </c:if>
            <c:if test="${teacherTitle!=1}">
                <div class="tab-pane fade" id="list-profile" role="tabpanel" aria-labelledby="list-profile-list">
            </c:if>
                <div class="panel panel-default">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item active"><a href="<%=path%>/client/t/teacher/0">老师主页</a></li>
                            <li class="breadcrumb-item" aria-current="page">个人信息查询</li>
                        </ol>
                    </nav>

                    <div class="row">
                        <div class="col-12 py-2">
                            <div class="row">
                                <div class="col-1 text-center">姓名：</div>
                                <div class="col-11">${sessionScope.teacher.teacherName}</div>
                            </div>
                        </div>
                        <div class="col-6 py-2">
                            <div class="row">
                                <div class="col-2 text-center">工号：</div>
                                <div class="col-10">${sessionScope.teacher.teacherId}</div>
                            </div>
                        </div>
                        <div class="col-6 py-2">
                            <div class="row">
                                <div class="col-2 text-center">电话：</div>
                                <div class="col-10">${sessionScope.teacher.teacherPhone}</div>
                            </div>
                        </div>
                        <div class="col-6 py-2">
                            <div class="row">
                                <div class="col-2 text-center">邮箱：</div>
                                <div class="col-10">${sessionScope.teacher.teacherEmail}</div>
                            </div>
                        </div>
                        <div class="col-6 py-2">
                            <div class="row">
                                <div class="col-2 text-center">系部：</div>
                                <div class="col-10">${sessionScope.teacher.teacherDept}</div>
                            </div>
                        </div>

                    </div>

                </div>
            </div>
            <!-- 个人信息查询部分结束-->
            <!-- 我的班级部分开始-->

            <c:if test="${teacherTitle==2}">
                <div class="tab-pane fade  show active " id="list-messages" role="tabpanel" aria-labelledby="list-messages-list">
            </c:if>
            <c:if test="${teacherTitle!=2}">
                <div class="tab-pane fade" id="list-messages" role="tabpanel" aria-labelledby="list-messages-list">
            </c:if>
                <div class="panel panel-default">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item active"><a href="<%=path%>/client/t/teacher/0">老师主页</a></li>
                            <li class="breadcrumb-item" aria-current="page">班级管理</li>
                        </ol>
                    </nav>
                    <div class="card">
                        <div class="card-header">
                            搜索
                        </div>

                        <div class="card-body">
                            <form role="form" class="form-inline">
                                <div class="form-group">
                                    <label for="name03">班级名</label>
                                    <input type="text" class="form-control mx-2" id="name03" placeholder="请输入名称"
                                           required />
                                </div>
                                <div class="form-group mr-3">
                                    <label for="deph3">班主任</label>
                                    <input type="text" class="form-control mx-2" id="deph3" placeholder="请输入教师姓名"
                                           required />
                                </div>
                                <div class="form-group mr-auto">
                                    <button type="button" class="btn btn-primary">查询</button>
                                </div>

                            </form>


                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th>班级号</th>
                                <th>班级名</th>
                                <th>班主任</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>${classes.classId}</td>
                                <td>${classes.className}</td>
                                <td>${classes.classTeacherName}</td>
                                <td>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-light" data-toggle="modal"
                                                data-target="#exampleModal11" id="seeClassStudent">查看</button>

                                        <script>
                                            $(function() {
                                                var myVariable = "Hello, world!";
                                                console.log(myVariable); // 输出变量的值到控制台

                                                $.ajax({
                                                    type: 'get',
                                                    url: '<%=path%>/client/t/teacherClassStudent/3',
                                                    dataType: 'json',
                                                    success: function(response) {
                                                        var test = response;
                                                        console.log(test.length);

                                                        var html = "";
                                                        for (var i = 0; i < test.length; i++) {
                                                            html += "<tr>" +
                                                                "<td>" + test[i].studentName + "</td>" +
                                                                "<td>" + test[i].studentId + "</td>" +
                                                                "<td>" + test[i].studentGender + "</td>" +
                                                                "<td>" + test[i].studentPhone + "</td>" +
                                                                "<td>" + test[i].studentEmail + "</td>" +
                                                                "<td>" + test[i].studentAddress + "</td>" +
                                                                "</tr>";
                                                        }
                                                        $("#studentTable").html(html);
                                                    },
                                                    error: function(xhr, status, error) {
                                                        console.log(error);
                                                    }
                                                });
                                            });

                                        </script>
                                        <div class="modal fade" id="exampleModal11" tabindex="-1"
                                             aria-labelledby="exampleModalLabel11" aria-hidden="true">
                                            <div
                                                    class="modal-dialog  modal-dialog-centered modal-lg modal-dialog-scrollable">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalLabel11">查看学生信息
                                                        </h5>
                                                        <button type="button" class="close" data-dismiss="modal"
                                                                aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <table class="table table-striped">
                                                            <thead>
                                                            <tr>
                                                                <th>姓名</th>
                                                                <th>学号</th>
                                                                <th>性别</th>
                                                                <th>电话号码</th>
                                                                <th>邮箱</th>
                                                                <th>家庭住址</th>
                                                            </tr>
                                                            </thead>
                                                            <tbody id="studentTable">

                                                            </tbody>
                                                        </table>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-primary "
                                                                data-dismiss="modal">关闭</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- 班级查询部分结束-->


            <!-- 我的课程部分开始 3-->
            <c:if test="${teacherTitle==4}">
            <div class="tab-pane fade show active" id="list-score" role="tabpanel" aria-labelledby="list-score-list">
            </c:if>
            <c:if test="${teacherTitle!=4}">
                <div class="tab-pane fade" id="list-score" role="tabpanel" aria-labelledby="list-score-list">
            </c:if>

                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item active"><a href="<%=path%>/client/t/teacher/0">老师主页</a></li>
                        <li class="breadcrumb-item" aria-current="page">我的课程</li>
                    </ol>
                </nav>

                <div class="card">
                    <div class="card-header">
                        搜索
                    </div>
                    <div class="card-body">
                        <form role="form3" class="form-inline">
                            <div class="form-group">
                                <label for="name3">学生名称</label>
                                <input type="text" class="form-control mx-2" id="name3" placeholder="请输入名称"
                                       required />
                            </div>
                            <div class="form-group mr-auto">
                                <button type="submit" class="btn btn-primary">查询</button>
                            </div>
                            <div>
                                <button type="button" class="btn btn-primary" data-toggle="modal"
                                        data-target="#exampleModal3" data-whatever="@mdo">添加</button>
                            </div>
                        </form>
                        <!-- 添加弹框内容 -->
                        <div class="modal fade" id="exampleModal3" tabindex="-1" aria-labelledby="exampleModalLabel"
                             aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel3">添加学生成绩</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <form class="row" id="form33">
                                            <div class="form-group col-6">
                                                <label for="score-name3" class="col-form-label">学生姓名</label>
                                                <input type="text" class="form-control" id="score-name3" required>
                                            </div>
                                            <div class="form-group col-6">
                                                <label for="score-tel3" class="col-form-label">学生学号</label>
                                                <input type="text" class="form-control" id="score-tel3" required>
                                            </div>
                                            <div class="form-group col-6">
                                                <label for="score-class3" class="col-form-label">课程名称</label>
                                                <input type="text" class="form-control" id="score-class3" required>
                                            </div>
                                            <div class="form-group col-6">
                                                <label for="score-result3" class="col-form-label">学生成绩</label>
                                                <input type="text" class="form-control" id="score-result3" required>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="reset" class="btn btn-secondary" form="form33">重置</button>
                                        <button type="submit" class="btn btn-primary " form="form33">提交</button>
                                    </div>
                                </div>
                            </div>
                        </div><!-- 添加弹框内容 -->
                    </div>

                </div>
                <!-- 数据表 -->
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th>课程号</th>
                            <th>课程名</th>
                            <th>所属学期</th>
                            <th>状态</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${courseByPage.lists}" var="course">
                            <tr>
                                <td>${course.courseId}</td>
                                <td>${course.courseName}</td>
                                <td>${course.courseTerm}</td>
                                <c:if test="${empty course.courseStatus}">
                                    <td>未结课</td>
                                </c:if>
                                <c:if test="${not empty course.courseStatus}">
                                    <td>已结课</td>
                                </c:if>
                                <td>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-light"
                                                onclick="window.location.href='<%=path%>/client/t/showstudentandcourse?courseId=${course.courseId}'">上传成绩</button>




                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
                <c:if test="${empty flag}">
                    <%--班级管理页码显示--%>
                    <div class="btn-toolbar float-right" role="toolbar" aria-label="Toolbar with button groups">
                        <div class="btn-group mr-2" role="group" aria-label="First group">

                                <%--首页按钮实现--%>
                            <c:if test="${courseByPage.currPage==1}">
                                <button type="button" class="btn btn-light" disabled>首页</button>
                            </c:if>
                            <c:if test="${courseByPage.currPage!=1}">
                                <button type="button" class="btn btn-light"
                                        onclick="window.location.href='<%=path%>/admin/t/teachercourse/${4}?currPage=1'">首页</button>
                            </c:if>
                                <%--首页按钮实现结束--%>
                                <%--上一页实现按钮--%>
                            <c:if test="${courseByPage.currPage==1}">
                                <button type="button" class="btn btn-light" disabled>&laquo;</button>
                            </c:if>
                                <%--当前页不等于1时--%>
                            <c:if test="${courseByPage.currPage!=1}">
                                <button type="button" class="btn btn-light"
                                        onclick="window.location.href='<%=path%>/admin/t/teachercourse/${4}?currentPage=${courseByPage.currPage-1}'">&laquo;</button>
                            </c:if>
                                <%--上一页实现按钮结束--%>

                                <%--显示五个页码开始--%>
                            <c:choose>
                                <%--当总页码少于等于5时--%>
                                <c:when test="${courseByPage.totalPage<=5}">
                                    <c:set var="begin" value="1"/>
                                    <c:set var="end" value="${courseByPage.totalPage}"/>
                                </c:when>
                                <%--当总页码大于5时--%>
                                <c:when test="${courseByPage.totalPage>5}">
                                    <c:choose>
                                        <%--当 当前页码小于等于3时--%>
                                        <c:when test="${courseByPage.currPage<=3}">
                                            <c:set var="begin" value="1"/>
                                            <c:set var="end" value="5"/>
                                        </c:when>
                                        <%--当 当前页码大于总页码减2时--%>
                                        <c:when test="${courseByPage.currPage>=courseByPage.totalPage-2}">
                                            <c:set var="begin" value="${courseByPage.totalPage-4}"/>
                                            <c:set var="end" value="${courseByPage.totalPage}"/>
                                        </c:when>
                                        <%--其他情况--%>
                                        <c:otherwise>
                                            <c:set var="begin" value="${courseByPage.currPage-2}"/>
                                            <c:set var="end" value="${courseByPage.currPage+2}"/>
                                        </c:otherwise>
                                    </c:choose>
                                </c:when>
                            </c:choose>
                            <c:forEach begin="${begin}" end="${end}" var="i">
                                <c:if test="${courseByPage.currPage!=i}">
                                    <button type="button" class="btn btn-light"
                                            onclick="window.location.href='<%=path%>/admin/t/teachercourse/${4}?currentPage=${i}'">${i}</button>
                                </c:if>
                                <c:if test="${courseByPage.currPage==i}">
                                    <button type="button" class="btn btn-primary">${i}</button>
                                </c:if>
                            </c:forEach>
                                <%--显示五个页码结束--%>

                                <%--显示下一页按钮--%>
                            <c:if test="${courseByPage.currPage==courseByPage.totalPage}">
                                <button type="button" class="btn btn-light" disabled>&raquo;</button>
                            </c:if>
                            <c:if test="${courseByPage.currPage!=courseByPage.totalPage}">
                                <button type="button" class="btn btn-light"
                                        onclick="window.location.href='<%=path%>/admin/t/teachercourse/${4}?currentPage=${courseByPage.currPage+1}'">&raquo;</button>
                            </c:if>
                                <%--显示下一页按钮结束--%>
                                <%--显示末页按钮--%>
                            <c:if test="${courseByPage.currPage==courseByPage.totalPage}">
                                <button type="button" class="btn btn-light" disabled>末页</button>
                            </c:if>
                            <c:if test="${courseByPage.currPage!=courseByPage.totalPage}">
                                <button type="button" class="btn btn-light"
                                        onclick="window.location.href='<%=path%>/admin/t/teachercourse/${4}?currentPage=${courseByPage.totalPage}'">末页</button>
                            </c:if>
                                <%--显示末页按钮结束--%>
                        </div>
                    </div>
                    <%--班级管理页码显示结束--%>
                </c:if>
                <!-- 数据表 -->
            </div>
            <!-- 成绩管理部分结束 3-->


        </div>
    </div>



</div>
</body>

</html>
