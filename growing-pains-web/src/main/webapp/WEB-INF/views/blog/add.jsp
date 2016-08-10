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
    <link rel="stylesheet" type="text/css" href="${basePath}/resources/plugins/metronic/css/bootstrap-markdown.min.css">

    <script src="${basePath}/resources/plugins/metronic/script/markdown.js" type="text/javascript"></script>
    <script src="${basePath}/resources/plugins/metronic/script/bootstrap-markdown.js" type="text/javascript"></script>
    <script src="${basePath}/resources/scripts/blog/blogManage.js" type="text/javascript"></script>
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
                <h1>新建博客
                    <small>正文请使用MarkDown语言</small>
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
                    <a href="/" style="color: #5b9bd1">Home</a><i class="fa fa-circle"></i>
                </li>
                <li class="active">
                    新建博客
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
                                <span class="caption-subject font-green-sharp bold uppercase">新建博客</span>
                            </div>
                            <div class="tools">
                                <a href="javascript:;" class="collapse">
                                </a>
                            </div>
                        </div>
                        <div class="portlet-body form">
                            <form class="form-horizontal form-bordered">
                                <div class="form-body">
                                    <div class="form-group">
                                        <label class="control-label col-md-2">标题</label>
                                        <div class="col-md-10">
                                            <input type="text" id="title" class="form-control maxlength-handler"
                                                   name="product[meta_title]" maxlength="100" placeholder="">
                                            <span id="titleHelp" class="help-block">最多80字符</span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-2">正文</label>
                                        <div class="col-md-10">
                                            <textarea id="content" name="content" data-provide="markdown"
                                                      rows="10"></textarea>
                                            <span id="contentHelp" class="help-block">最多48000字符</span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-2">标签</label>
                                        <div class="col-md-10">
                                            <div class="checkbox-list">
                                                <c:forEach items="${tags}" var="tag">
                                                    <div class="col-md-3">
                                                        <label class="checkbox-inline">
                                                            <input type="checkbox" name="tagCheckbox"
                                                                   value="${tag.id}">${tag.name}</label>
                                                    </div>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-actions">
                                        <div class="row">
                                            <div class="col-md-offset-4 col-md-8">
                                                <button type="button" class="btn green" onclick="blogManager.add();">Submit</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <!-- BEGIN EXTRAS PORTLET-->
                    <div class="portlet light">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-cogs font-green-sharp"></i>
                                <span class="caption-subject font-green-sharp bold uppercase">正文预览</span>
                            </div>
                            <div class="tools">
                                <a href="javascript:;" class="collapse">
                                </a>
                            </div>
                        </div>
                        <div class="portlet-body form">
                            <form class="form-horizontal form-bordered">
                                <div class="form-body">
                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <xmp theme="united" style="display:none;">
##### 点击preview, 预览正文格式。
                                            </xmp>
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
<script src="${basePath}/resources/plugins/strapdown/strapdown.js" type="text/javascript"></script>
<script type="text/javascript">
    $(function () {
        //初始化页面相应元素绑定事件
        blogManager.init();
    });
</script>
</body>
</html>