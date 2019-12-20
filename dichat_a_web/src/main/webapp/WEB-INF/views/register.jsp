<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>用户注册</title>
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
    <!-- bootstrap styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/bootstrap.min.css">

    <!-- bootstrapValidator styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/bootstrapValidator.min.css">
</head>

<body class="form-membership">
<style type="text/css">
    .upload {
        position: relative;
    }

    #upload {
        border-radius: 50%;
        opacity: 0;
        filter: alpha(opacity=0);
        height: 100px;
        width: 100px;
        position: absolute;
        top: 0;
        left: 0;
        margin-left: 14px;
        margin-top: 9px;
        z-index: 9;
        cursor: pointer;
    }

    #img0 {
        width: 100px;
        height: 100px;
        border-radius: 50%;

    }

</style>
<div class="form-wrapper">
    <h5>用户注册</h5>

    <!-- form -->
    <form action="${pageContext.request.contextPath}/user/register" method="post" id="ajaxform">
        <div class="form-group">

                <span class="btn upload ">
                    <img id="img0" width="200" height="200"
                         src="${pageContext.request.contextPath}/dist/imgs/uploadhead.png"></img>
                    <input name="file" type="file" class="" id="upload" placeholder="请点击上传头像" accept=".jpeg,.bmp,.jpg,.png"/>
                </span>
        </div>
        <div class="form-group">
            <input name="username" type="text" class="form-control" placeholder="请输入用户名" autofocus>
        </div>
        <div class="form-group">
            <input name="name" type="text" class="form-control" placeholder="请输入您的姓名">
        </div>
        <div class="form-group">
            <input name="birthday" type="date" class="form-control" placeholder="请输入选择您的出生日期">
        </div>
        <div class="form-group">
            <input name="tel" type="phone" class="form-control" placeholder="请输入选择您的手机号">
        </div>
        <div class="form-group">
            <input name="email" type="email" class="form-control" placeholder="请输入您的Email">
        </div>
        <div class="form-group">
            <input id="password" name="password" type="password" class="form-control" placeholder="请输入登录密码">
        </div>
        <div class="form-group">
            <input name="confirm_password" type="password" class="form-control" placeholder="请再次输入登录密码">
        </div>
        <button class="btn btn-primary btn-block" type="button" onclick="register();return false;">注&nbsp;&nbsp;&nbsp;&nbsp;册</button>
        <hr>
        <p class="text-muted">已拥有账号?</p>
        <a href="./login" class="btn btn-outline-light btn-sm">返&nbsp;回&nbsp;登&nbsp;录</a>
    </form>

    <!-- ./ form -->

</div>

<!-- Bundle -->
<script src="${pageContext.request.contextPath}/vendor/bundle.js"></script>

<!-- App scripts -->
<script src="${pageContext.request.contextPath}/dist/js/app.min.js"></script>
<!-- bootstrapValidator scripts -->
<script src="${pageContext.request.contextPath}/dist/js/bootstrapValidator.min.js"></script>
<!-- Layer scripts -->
<script src="${pageContext.request.contextPath}/dist/layer/layer.js"></script>
<!-- sweetalert scripts -->
<script src="${pageContext.request.contextPath}/dist/sweetalert/sweetalert.min.js"></script>
<script>
    $("#upload").change(function () {
        var objUrl = getObjectURL(this.files[0]);
        console.log("objUrl = " + objUrl);
        if (objUrl) {
            $("#img0").attr("src", objUrl);
            $("#img0").removeClass("hide");
        }
    });

    //建立一个可存取到该file的url
    function getObjectURL(file) {
        var url = null;
        if (window.createObjectURL != undefined) { // basic
            url = window.createObjectURL(file);
        } else if (window.URL != undefined) {
            // mozilla(firefox)
            url = window.URL.createObjectURL(file);
        } else if (window.webkitURL != undefined) {
            // webkit or chrome
            url = window.webkitURL.createObjectURL(file);
        }
        return url;
    }

    $('#upload').on('change', function () {
        var value = $(this).val();
        value = value.split("\\")[2];
        //            alert(value);
    })
    //表单校验
    $("#ajaxform").bootstrapValidator({
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            username: {
                message: '用户名验证失败',
                validators: {
                    notEmpty: {
                        message: '用户名不能为空'
                    },
                    stringLength: {
                        min: 6,
                        max: 18,
                        message: '用户名长度必须在6到18位之间'
                    },
                    regexp: {
                        regexp: /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,}$/,
                        message: '用户名至少6位，要求必须字母、数字加英文符号（不包含空格)'
                    },
                    remote: {
                        url: "${pageContext.request.contextPath}/user/checkUsername"
                    }
                }
            },
            file: {
                validators: {
                    notEmpty: {
                        message: '头像不能为空'
                    },
                    file: {
                        extension: 'png,jpg,jpeg,bmp',
                        type: 'image/png,image/jpg,image/jpeg,image/bmp',
                        message: '图片格式错误仅支持png,jpg,jpeg,bmp'
                    }
                }
            },
            name: {
                message: '姓名验证失败',
                validators: {
                    notEmpty: {
                        message: '姓名不能为空'
                    },
                    stringLength: {
                        max: 30,
                        message: '姓名长度不能超过30位'
                    }
                }
            },
            birthday: {
                message: '出生日期验证失败',
                validators: {
                    notEmpty: {
                        message: '出生日期不能为空'
                    },
                    date: {
                        format: 'YYYY/MM/DD',
                        message: '出生日期无效'
                    }
                }
            },
            tel: {
                message: '手机号验证失败',
                validators: {
                    notEmpty: {
                        message: '手机号不能为空'
                    },
                    regexp: {
                        regexp: /^1\d{10}$/,
                        message: '手机号格式错误'
                    }
                }
            },
            email: {
                message: '邮箱验证失败',
                validators: {
                    notEmpty: {
                        message: '邮箱不能为空'
                    },
                    emailAddress: {
                        message: '邮箱格式错误'
                    }
                }
            },
            password: {
                message: '密码验证失败',
                validators: {
                    notEmpty: {
                        message: '密码不能为空'
                    }
                }
            },

            confirm_password: {
                validators: {
                    notEmpty: {
                        message: '确认密码不能为空'
                    },
                    identical: {
                        field: 'password',
                        message: '两次输入的密码不相符'
                    }
                }
            },

        },
    })

</script>
<script type="application/javascript">
    //注册

    function register() {

        $('#ajaxform').data('bootstrapValidator').validate();
        if(!$('#ajaxform').data('bootstrapValidator').isValid()){
            return;
        } else {
            //通过校验，可进行提交等操作
            var formData = new FormData($("#ajaxform")[0]);


            var timestamp = new Date(formData.get("birthday")).getTime();
            formData.set("birthday",timestamp);
            formData.delete("confirm_password");
            // 发送请求
            $.ajax({
                url:"${pageContext.request.contextPath}/user/register",
                type:'post',
                data:formData,
                processData:false,
                contentType:false,
                beforeSend() {
                    //发送前操作
                    loading = layer.load(2);
                },
                success: function(res) {
                    layer.close(loading);
                    if (res.code == 1) {
                        swal("注册成功，三秒后返回登录", {
                            button: false,
                            dangerMode: true,
                            icon: "success",
                            timer: 1500,
                        }).then(name => {
                            window.location.href = "${pageContext.request.contextPath}/login";
                    });

                    } else {
                        swal(res.msg, {
                            button: false,
                            dangerMode: true,
                            icon: "warning",
                            timer: 2000,
                        });
                    }
                },
                error: function(XMLHttpRequest, textStatus, errorThrown) {
                    layer.close(loading);
                    swal("连接错误", {
                        button: false,
                        dangerMode: true,
                        icon: "warning",
                        timer: 2000,
                    });
                }

            })

        }
    }
</script>
</body>
</html>