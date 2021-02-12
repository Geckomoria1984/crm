<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/">
    <meta charset="UTF-8">
    <title>bootstrap3会员管理</title>
    <script src="jquery/jquery-3.4.1.min.js"></script>
    <link rel="stylesheet" href="bootstrap3/css/bootstrap.css" type="text/css">
    <script src="bootstrap3/js/bootstrap.js"></script>
    <style>
        .myposition {
            position: relative;
            left: 30px;
            margin-top: 20px;
        }
    </style>
</head>
<body>
<!--新增会员的模态窗口--->
<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">新增会员</h4>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label for="username">姓名</label>
                        <input type="email" class="form-control" id="username" placeholder="请输入姓名：">
                    </div>

                    <div class="form-group">
                        <label for="birthday">生日</label>
                        <input type="text" class="form-control" id="birthday" placeholder="请输入生日：">
                    </div>
                    <div class="form-group">
                        <label for="userphone">电话</label>
                        <input type="text" class="form-control" id="userphone" placeholder="请输入电话：">
                    </div>
                    <div class="form-group">
                        <label for="address">姓名</label>
                        <input type="text" class="form-control" id="address" placeholder="请输入住址：">
                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary">保存</button>
            </div>
        </div>
    </div>
</div>
<div style="position: relative;left: 30px;">
    <div class="page-header myposition" >
        <h1>会员信息维护 <small>Subtext for header</small></h1>
        <!-- Standard button -->
    </div>
</div>
<div style="position: relative;left: 30px;"  class="myposition">
    <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addModal">
        <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
    </button>

    <button type="button" class="btn btn-info"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改</button>
    <button type="button" class="btn btn-danger">
        <span class="glyphicon glyphicon-remove" aria-hidden="true"></span> 删除
    </button>
    <!-- Standard button -->
    <button type="button" class="btn btn-default">
        <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>导入
    </button>
    <button type="button" class="btn btn-default">
        <span class="glyphicon glyphicon-save" aria-hidden="true"></span>导出
    </button>
    <button type="button" class="btn btn-default">
        <span class="glyphicon glyphicon-home" aria-hidden="true"></span>导出所有
    </button>

</div>

<div class="myposition">
    <table class="table table-striped">
        <tr>
            <th><input type="checkbox"/></th>
            <th>序号</th>
            <th>姓名</th>
            <th>生日</th>
            <th>电话</th>
            <th>住址</th>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
    </table>
</div>

</body>
</html>