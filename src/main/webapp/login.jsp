<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="static/h-ui/css/H-ui.min.css" rel="stylesheet" type="text/css"/>
    <link href="static/h-ui.admin/css/H-ui.login.css" rel="stylesheet" type="text/css"/>
    <link href="static/h-ui.admin/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="lib/Hui-iconfont/1.0.8/iconfont.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<input type="hidden" id="TenantId" name="TenantId" value=""/>
<div class="header"></div>
<div class="loginWraper">
    <div id="loginform" class="loginBox">
        <form class="form form-horizontal">
            <div class="row cl">
                <label class="form-label col-xs-3"><i class="Hui-iconfont">&#xe60d;</i></label>
                <div class="formControls col-xs-8">
                    <input id="name" name="name" type="text" placeholder="账户" class="input-text size-L">
                </div>
            </div>
            <div class="row cl">
                <label class="form-label col-xs-3"><i class="Hui-iconfont">&#xe60e;</i></label>
                <div class="formControls col-xs-8">
                    <input id="password" name="password" type="password" placeholder="密码" class="input-text size-L">
                </div>
            </div>
            <div class="row cl">
                <div class="formControls col-xs-8 col-xs-offset-3">
                    <input class="input-text size-L" type="text" placeholder="验证码"
                           onblur="if(this.value==''){this.value='验证码:'}"
                           onclick="if(this.value=='验证码:'){this.value='';}"
                           value="验证码:" style="width:150px;">
                    <img src=""> <a id="kanbuq" href="javascript:;">看不清，换一张</a></div>
            </div>
            <div class="row cl">
                <div class="formControls col-xs-8 col-xs-offset-3">
                    <label for="online">
                        <input type="checkbox" name="online" id="online" value="">
                        使我保持登录状态</label>
                </div>
            </div>
            <div class="row cl">
                <div class="formControls col-xs-8 col-xs-offset-3">
                    <input id="login" type="button" class="btn btn-success radius size-L"
                           value="&nbsp;登&nbsp;&nbsp;&nbsp;&nbsp;录&nbsp;">
                    <input type="reset" class="btn btn-default radius size-L"
                           value="&nbsp;取&nbsp;&nbsp;&nbsp;&nbsp;消&nbsp;">
                </div>
            </div>
        </form>
    </div>
</div>
<div class="footer">Copyright 你的公司名称 by H-ui.admin v3.1</div>
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
<script>
    $(function () {
        $("#login").on("click", function () {
            $.ajax({
                url: "login.do",
                type: "post",
                data: {
                    "name": $("#name").val(),
                    "password": $("#password").val()
                },
                success(result) {
                    if (result == 0) {
                        alert("登录成功！")
                        window.location.href="index.do";
                    } else if (result == 1) {
                        alert("密码错误！")
                    } else {
                        alert("用户不存在！")
                    }

                }
            })
        })
    });


</script>
</body>
</html>
