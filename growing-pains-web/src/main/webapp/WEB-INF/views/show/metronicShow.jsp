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
    <link rel="stylesheet" type="text/css" href="${basePath}/resources/plugins/metronic/css/blog.css">

    <script src="${basePath}/resources/scripts/blog/metronicShow.js" type="text/javascript"></script>
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
                <h1>${blogUserName}'s BLOG
                    <small>love & peace </small>
                </h1>
            </div>
            <!-- END PAGE TITLE -->
        </div>
    </div>
    <!-- END PAGE HEAD -->
    <!-- BEGIN PAGE CONTENT -->
    <div class="page-content">
        <div class="container">
            <ul class="page-breadcrumb breadcrumb">
            </ul>
            <!-- BEGIN PAGE CONTENT INNER -->
            <div class="portlet light">
                <div class="portlet-body">
                    <div class="row">
                        <div class="col-md-12 blog-page">
                            <div class="row">
                                <div class="col-md-12 article-block" id="blogList">
                                </div>
                            </div>
                            <ul class="pagination pagination-circle pull-right" id="blogPagination">
                            </ul>
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
        metronicShowManager.init('${blogUserName}');
    });
</script>
</body>
</html>