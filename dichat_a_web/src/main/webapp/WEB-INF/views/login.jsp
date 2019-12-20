<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>用户登录</title>
    <meta name="renderer" content="webkit"/>

    <!-- 强制Chromium内核，作用于其他双核浏览器 -->
    <meta name="force-rendering" content="webkit"/>

    <!-- 如果有安装 Google Chrome Frame 插件则强制为Chromium内核，否则强制本机支持的最高版本IE内核，作用于IE浏览器 -->
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1"/>

    <!-- Favicon -->
    <link rel="icon" href="${pageContext.request.contextPath}/dist/media/img/favicon.png" type="image/png">

    <!-- Bundle Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/vendor/bundle.css">

    <!-- App styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/app.min.css">
</head>
<body class="form-membership">

<div class="form-wrapper">
    <h5>用户登录</h5>
    <!-- form -->
    <form action="${pageContext.request.contextPath}/user/login" method="post" id="ajaxform">
        <div class="form-group">
            <input name="username" type="text" class="form-control" placeholder="用户名或账号"  >
        </div>

        <div class="form-group">
            <input name="password" type="password" class="form-control" placeholder="密码" >
        </div>

        <button class="btn btn-primary btn-block" type="button" onclick="userLogin();return false;">登&nbsp;&nbsp;&nbsp;&nbsp;入</button>
        <hr>

        <p class="text-muted"> <a href="./register" >没有账号?点击注册!</a></p>

    </form>
    <!-- ./ form -->

</div>

<!-- Bundle -->
<script src="${pageContext.request.contextPath}/vendor/bundle.js"></script>
<!-- App scripts -->
<script src="${pageContext.request.contextPath}/dist/js/app.min.js"></script>
<!-- Layer scripts -->
<script src="${pageContext.request.contextPath}/dist/layer/layer.js"></script>
<!-- sweetalert scripts -->
<script src="${pageContext.request.contextPath}/dist/sweetalert/sweetalert.min.js"></script>
<script type="application/javascript">
    function userLogin() {
        //用户登录

        $.ajax({
            type: 'post',
            url: '${pageContext.request.contextPath}/user/login',
            dataType: 'json',
            data: $('#ajaxform').serialize(),

            success: function(res) {
                if (res.code == 1) {
                    alert("登录成功！");
                    window.location.href = "${pageContext.request.contextPath}/center/";
                } else {
                    alert(res.msg);
                }
            },

            error: function(XMLHttpRequest, textStatus, errorThrown) {
                alert("连接错误");
            }

        })
    }
</script>
</body>
</html>