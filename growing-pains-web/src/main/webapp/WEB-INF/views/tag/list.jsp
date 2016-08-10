<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>BLOG | YOUR BEST CHOICE</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <meta content="" name="description"/>
    <meta content="" name="author"/>

    <link rel="stylesheet" type="text/css" href="${basePath}/resources/plugins/metronic/plugins/select2/select2.css">
    <%@ include file="./../common/base.jsp" %>
    <link rel="stylesheet" type="text/css" href="${basePath}/resources/plugins/metronic/css/dataTables.bootstrap.css">
</head>
<body class="page-md">
<%@ include file="./../common/header.jsp" %>
<!-- BEGIN PAGE CONTAINER -->
<div class="page-container">
    <!-- BEGIN PAGE HEAD -->
    <div class="page-head">
        <div class="container">
            <!-- BEGIN PAGE TITLE -->
            <div class="page-title">
                <h1>我的标签
                    <small>个人标签上限100个</small>
                </h1>
            </div>
            <!-- END PAGE TITLE -->
        </div>
    </div>
    <!-- END PAGE HEAD -->
    <!-- BEGIN PAGE CONTENT -->
    <div class="page-content">
        <%@ include file="./../common/modalDialog.jsp" %>
        <div class="container">
            <!-- BEGIN PAGE BREADCRUMB -->
            <ul class="page-breadcrumb breadcrumb">
                <li>
                    <a href="<c:url value="/"/>" style="color: #5b9bd1">Home</a><i class="fa fa-circle"></i>
                </li>
                <li class="active">
                    我的标签
                </li>
            </ul>
            <!-- END PAGE BREADCRUMB -->
            <!-- BEGIN PAGE CONTENT INNER -->
            <div class="row">
                <div class="col-md-12">
                    <div class="portlet light">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-gift font-green-sharp"></i>
                                <span class="caption-subject font-green-sharp bold uppercase">我的标签</span>
                                <span class="caption-helper">开启你的博客生涯</span>
                            </div>
                            <div class="actions">
                                <a href="<c:url value="/blogTag/addPage.htm"/>" class="btn btn-default btn-circle">
                                    <i class="fa fa-plus"></i>
								<span class="hidden-480">
								新建标签 </span>
                                </a>
                                <div class="btn-group">
                                    <a class="btn btn-default btn-circle" href="javascript:;" data-toggle="dropdown">
                                        <i class="fa fa-share"></i>
									<span class="hidden-480">
									Tools </span>
                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                    <ul class="dropdown-menu pull-right">
                                        <li>
                                            <a href="javascript:tagManager.delete();">
                                                删除标签 </a>
                                        </li>
                                        <li>
                                            <a href="javascript:tagManager.editPage();;">
                                                修改标签 </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="portlet-body">
                            <div class="table-container">
                                <div class="table-actions-wrapper">
                                    <label class="control-label">标签名</label>
                                    <input class="table-group-action-input form-control input-inline input-small input-sm" type="text" id="tagName" value=""/>
                                    <button id="tagSearchButton" class="btn btn-sm yellow table-group-action-submit"><i class="fa fa-check"></i> Search</button>
                                </div>
                                <table class="table table-striped table-bordered table-hover" id="datatable_ajax">
                                    <thead>
                                    <tr role="row" class="heading">
                                        <th width="2%">
                                            <input type="checkbox" class="group-checkable" />
                                        </th>
                                        <th width="10%">
                                            标签名
                                        </th>
                                        <th width="20%">
                                            标签描述
                                        </th>
                                        <th width="20%">
                                            创建时间
                                        </th>
                                        <th width="20%">
                                            更新时间
                                        </th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!-- End: life time stats -->
                </div>
            </div>
            <!-- END PAGE CONTENT INNER -->
        </div>
    </div>
    <!-- END PAGE CONTENT -->
</div>
<!-- END PAGE CONTAINER -->
<%@ include file="./../common/preFooter.jsp" %>
<%@ include file="./../common/footer.jsp" %>
<div class="scroll-to-top">
    <i class="icon-arrow-up"></i>
</div>
<script src="${basePath}/resources/plugins/metronic/script/jquery.dataTables.js" type="text/javascript"></script>
<script src="${basePath}/resources/plugins/metronic/script/dataTables.bootstrap.js" type="text/javascript"></script>
<script src="${basePath}/resources/plugins/metronic/script/datatable.js" type="text/javascript"></script>
<script src="${basePath}/resources/scripts/tag/tagList.js" type="text/javascript"></script>
<script src="${basePath}/resources/scripts/tag/tagManage.js" type="text/javascript"></script>
<script>
    jQuery(document).ready(function() {
        TableAjax.init();
    });
</script>
</body>
</html>