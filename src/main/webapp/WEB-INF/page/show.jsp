<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2020/2/21
  Time: 10:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix='fmt' %>
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
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 用户中心 <span class="c-gray en">&gt;</span> 用户管理 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
    <div class="text-c"> 日期范围：
        <input type="text" onfocus="WdatePicker({ maxDate:'#F{$dp.$D(\'datemax\')||\'%y-%M-%d\'}' })" id="datemin" class="input-text Wdate" style="width:120px;">
        -
        <input type="text" onfocus="WdatePicker({ minDate:'#F{$dp.$D(\'datemin\')}',maxDate:'%y-%M-%d' })" id="datemax" class="input-text Wdate" style="width:120px;">
        <input type="text" class="input-text" style="width:250px" placeholder="输入会员名称、电话、邮箱" id="" name="">
        <button type="submit" class="btn btn-success radius" id="" name=""><i class="Hui-iconfont">&#xe665;</i> 搜用户</button>
    </div>
    <div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l"><a href="javascript:;" onclick="datadel()" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i>
        批量删除</a>
        <a href="javascript:" onclick="member_add('添加用户','GoToAdd.do','','510')" class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i> 添加用户</a></span> <span class="r">共有数据：<strong>88</strong> 条</span> </div>
    <div class="mt-20">
        <table class="table table-border table-bordered table-hover table-bg table-sort">
            <thead>
            <tr class="text-c">
                <th width="25"><input type="checkbox" name="" value=""></th>
                <th width="80">mid</th>
                <th width="100">musername</th>
                <th width="100">mpassword</th>
                <th width="70">状态</th>

            </tr>
            </thead>
            <tbody>
<c:forEach items="${posts}" var="p" varStatus="post">
    <tr>
        <td><input type="checkbox" value="1" name=""></td>
<%--        <th>${post.index+1}</th>--%>
        <th>${managers.mid}</th>
        <th>${managers.musername}</th>
<%--        <td><fmt:formatDate value="${vote.starttime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>--%>
<%--        <td><fmt:formatDate value="${vote.endtime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>--%>
        <th>${managers.mpassword}</th>
        <td class="td-status"><span class="label label-success radius">已启用</span></td>
        <td class="td-manage"><a style="text-decoration:none" onClick="member_stop(this,'10001')" href="javascript:;"
                                 title="停用"><i class="Hui-iconfont">&#xe631;</i></a>
            <a title="编辑" href="javascript:;"
               onclick="member_edit('编辑','updareOne.do?pid=${p.pid}','4','','510')"
               class="ml-5"
               style="text-decoration:none"><i
                class="Hui-iconfont">&#xe6df;</i></a>
            <a style="text-decoration:none" class="ml-5"
               onClick="change_password('修改密码','change-password.html','10001','600','270')"
               href="javascript:;" title="修改密码"><i class="Hui-iconfont">&#xe63f;</i></a>
            <a title="删除" href="javascript:;" onclick="member_del(this,${p.pid})" class="ml-5"
               style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a></td>

<%--        <th>--%>
<%--            <a class="je-btn xg" type="button" style="color: #fdfff8" onclick="update(${vote.id})"><i class="je-icon">&#xe63f;</i>修改</a>--%>
<%--        </th>--%>
<%--        <th>--%>
<%--            <a class="je-btn je-bg-orange" href="/vote/delete?id=${vote.id}" style="color: #fdfff8"><i class="je-icon">&#xe63e;</i>删除</a>--%>
<%--        </th>--%>
    </tr>


</c:forEach>
<%--            <tr class="text-c">--%>
<%--                <td><input type="checkbox" value="1" name=""></td>--%>
<%--                <td>1</td>--%>
<%--                <td><u style="cursor:pointer" class="text-primary" onclick="member_show('张三','member-show.html','10001','360','400')">张三</u></td>--%>
<%--                <td>男</td>--%>
<%--                <td>13000000000</td>--%>
<%--                <td>admin@mail.com</td>--%>
<%--                <td class="text-l">北京市 海淀区</td>--%>
<%--                <td>2014-6-11 11:11:42</td>--%>
<%--                <td class="td-status"><span class="label label-success radius">已启用</span></td>--%>
<%--                <td class="td-manage"><a style="text-decoration:none" onClick="member_stop(this,'10001')" href="javascript:;" title="停用"><i class="Hui-iconfont">&#xe631;</i></a> <a title="编辑" href="javascript:;" onclick="member_edit('编辑','member-add.html','4','','510')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a> <a style="text-decoration:none" class="ml-5" onClick="change_password('修改密码','change-password.html','10001','600','270')" href="javascript:;" title="修改密码"><i class="Hui-iconfont">&#xe63f;</i></a> <a title="删除" href="javascript:;" onclick="member_del(this,'1')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a></td>--%>
<%--            </tr>--%>
            </tbody>
        </table>
    </div>
</div>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">
    $(function(){
        $('.table-sort').dataTable({
            "aaSorting": [[ 1, "desc" ]],//默认第几个排序
            "bStateSave": true,//状态保存
            "aoColumnDefs": [
                //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
                // {"orderable":false,"aTargets":[0,8,9]}// 制定列不参与排序
            ]
        });

    });
    /*用户-添加*/
    function member_add(title,url,w,h){
        layer_show(title,url,w,h);
    }
    /*用户-查看*/
    function member_show(title,url,id,w,h){
        layer_show(title,url,w,h);
    }
    /*用户-停用*/
    function member_stop(obj,id){
        layer.confirm('确认要停用吗？',function(index){
            // $.ajax({
            //     type: 'POST',
            //     url: '',
            //     dataType: 'json',
            //     success: function(data){
                    $(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="member_start(this,id)" href="javascript:;" title="启用"><i class="Hui-iconfont">&#xe6e1;</i></a>');
                    $(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">已停用</span>');
                    $(obj).remove();
                    layer.msg('已停用!',{icon: 5,time:1000});
                // },
                // error:function(data) {
                //     console.log(data.msg);
            //     },
            // });
        });
    }

    // /*用户-启用*/
    function member_start(obj,id){
        layer.confirm('确认要启用吗？',function(index){
            // $.ajax({
            //     type: 'POST',
            //     url: '',
            //     dataType: 'json',
            //     success: function(data){
                    $(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="member_stop(this,id)" href="javascript:;" title="停用"><i class="Hui-iconfont">&#xe631;</i></a>');
                    $(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已启用</span>');
                    $(obj).remove();
                    layer.msg('已启用!',{icon: 6,time:1000});
                // },
                // error:function(data) {
                //     console.log(data.msg);
                // },
            // });
        });
    }
    /*用户-编辑*/
    function member_edit(title,url,id,w,h){
        layer_show(title,url,w,h);
    }
    /*密码-修改*/
    function change_password(title,url,id,w,h){
        layer_show(title,url,w,h);
    }
    /*用户-删除*/
    function member_del(obj,id){
        layer.confirm('确认要删除吗？',function(index){
            $.ajax({
                type: 'POST',
                url: 'delPost.do?pid='+id,
                success: function(data){
                    $(obj).parents("tr").remove();
                    layer.msg('已删除!',{icon:1,time:1000});
                },
                error:function(data) {
                    console.log(data.msg);
                    alert("删除失败！")
                },
            });
        });
    }
</script>
</body>
</html>
