<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2020/2/21
  Time: 10:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="static/h-ui/css/H-ui.min.css" />
    <link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/H-ui.admin.css" />
    <link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css" />
    <link rel="stylesheet" type="text/css" href="static/h-ui.admin/skin/default/skin.css" id="skin" />
    <link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/style.css" />
</head>
<body>
<article class="page-container">
    <form id="Postform" class="form form-horizontal" id="form-member-add">
        <input type="text" name="mid" class="input-text" value="${manager.mid}" hidden>

        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>用户名：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="${manager.musername}" placeholder="" id="pname" name="pname">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>密码：</label>
            <div class="formControls col-xs-8 col-sm-9 skin-minimal">
                <div class="formControls col-xs-8 col-sm-9">
                    <input type="text" class="input-text" value="${manager.mpassword}" placeholder="" id="psalary" name="psalary">
                </div>
            </div>
        </div>
<%--        <div class="row cl">--%>
<%--            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>描述：</label>--%>
<%--            <div class="formControls col-xs-8 col-sm-9">--%>
<%--                <input type="text" class="input-text" value="${postOne.pnumberofperson}" placeholder="" id="pnumberofperson" name="pnumberofperson">--%>
<%--            </div>--%>
<%--        </div>--%>
    </form>
    <c:if test="${not empty postOne}">
        <div class="row cl">
            <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
                <button  id="update" class="btn btn-primary radius" type="button" >&nbsp;&nbsp;修改&nbsp;&nbsp;</button>
            </div>
        </div>
    </c:if>
    <c:if test="${empty postOne}">
        <div class="row cl">
            <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
                <button  id="add" class="btn btn-primary radius" type="button" >&nbsp;&nbsp;添加&nbsp;&nbsp;</button>
            </div>
        </div>
    </c:if>
<%--    <div class="row cl">--%>
<%--        <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">--%>
<%--            <button  id="add" class="btn btn-primary radius" type="button" >&nbsp;&nbsp;添加&nbsp;&nbsp;</button>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div class="row cl">--%>
<%--        <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">--%>
<%--            <button  id="update" class="btn btn-primary radius" type="button" >&nbsp;&nbsp;修改&nbsp;&nbsp;</button>--%>
<%--        </div>--%>
<%--    </div>--%>
</article>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="lib/jquery.validation/1.14.0/jquery.validate.js"></script>
<script type="text/javascript" src="lib/jquery.validation/1.14.0/validate-methods.js"></script>
<script type="text/javascript" src="lib/jquery.validation/1.14.0/messages_zh.js"></script>
<script type="text/javascript">
    $(function(){
        $('#add').click(function () {
            $.get("insertM.do", $("#Postform").serialize(), function (data) {
                var index = parent.layer.getFrameIndex(window.name);
                //parent.$('.btn-refresh').click();
                parent.location.href = "list.do";
                parent.layer.close(index);

            });
        });
        $('#update').click(function () {
            $.get("updateM.do", $("#Postform").serialize(), function (data) {
                var index = parent.layer.getFrameIndex(window.name);
                //parent.$('.btn-refresh').click();
                parent.location.href = "list.do";
                parent.layer.close(index);

            });
        });
        //
        // $('.skin-minimal input').iCheck({
        //     checkboxClass: 'icheckbox-blue',
        //     radioClass: 'iradio-blue',
        //     increaseArea: '20%'
        // });
        //
        // $("#form-member-add").validate({
        //     rules:{
        //         username:{
        //             required:true,
        //             minlength:2,
        //             maxlength:16
        //         },
        //         sex:{
        //             required:true,
        //         },
        //         mobile:{
        //             required:true,
        //             isMobile:true,
        //         },
        //         email:{
        //             required:true,
        //             email:true,
        //         },
        //         uploadfile:{
        //             required:true,
        //         },
        //
        //     },
        //     onkeyup:false,
        //     focusCleanup:true,
        //     success:"valid",
        //     submitHandler:function(form){
        //         //$(form).ajaxSubmit();
        //         var index = parent.layer.getFrameIndex(window.name);
        //         //parent.$('.btn-refresh').click();
        //         parent.layer.close(index);
        //     }
        // });
    });
</script>
<!--/请在上方写此页面业务相关的脚本-->
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>
