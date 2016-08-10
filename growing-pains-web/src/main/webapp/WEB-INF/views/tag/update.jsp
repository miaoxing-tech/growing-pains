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

    <%@ include file="./../common/base.jsp" %>

    <script src="${basePath}/resources/scripts/tag/tagManage.js" type="text/javascript"></script>
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
                <h1>标签修改
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
                    标签修改
                </li>
            </ul>
            <!-- END PAGE BREADCRUMB -->
            <!-- BEGIN PAGE CONTENT INNER -->
            <div class="row">
                <div class="col-md-12">
                    <!-- BEGIN EXTRAS PORTLET-->
                    <div class="portlet light">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-cogs font-green-sharp"></i>
                                <span class="caption-subject font-green-sharp bold uppercase">标签修改</span>
                            </div>
                            <div class="tools">
                                <a href="javascript:;" class="collapse">
                                </a>
                            </div>
                        </div>
                        <div class="portlet-body form">
                            <form class="form-horizontal form-bordered">
                                <div class="form-body">
                                    <input type="hidden" id="tagId" value="${tag.id}">
                                    <div class="form-group">
                                        <label class="control-label col-md-2">标签名</label>
                                        <div class="col-md-10">
                                            <input type="text" id="tagName" class="form-control maxlength-handler" name="product[meta_title]" maxlength="100" placeholder="" value="${tag.name}">
											<span id="tagNameHelp" class="help-block">最多10字符</span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-2">标签描述</label>
                                        <div class="col-md-10">
                                            <input type="text" id="tagDesc" class="form-control maxlength-handler" name="product[meta_title]" maxlength="100" placeholder="" value="${tag.desc}">
                                            <span id="tagDescHelp" class="help-block">最多200字符</span>
                                        </div>
                                    </div>
                                    <div class="form-actions">
                                        <div class="row">
                                            <div class="col-md-offset-4 col-md-8">
                                                <button type="button" class="btn green" onclick="tagManager.edit();">Submit</button>
                                                <button type="button" class="btn default" onclick="tagManager.cancel();">Cancel</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
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
<script type="text/javascript">
    $(function () {
        //初始化页面相应元素绑定事件
        tagManager.init();
    });
</script>
</body>
</html>