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

    <script src="${basePath}/resources/scripts/blog/blogManage.js" type="text/javascript"></script>
    <script src="${basePath}/resources/scripts/blog/blogIndex.js" type="text/javascript"></script>
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
                <h1>最新博客
                    <small>love & peace</small>
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
                <li class="active">
                    Home
                </li>
            </ul>
            <!-- END PAGE BREADCRUMB -->
            <!-- BEGIN PAGE CONTENT INNER -->
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 margin-bottom-10">
                    <a class="dashboard-stat dashboard-stat-light blue-madison" href="javascript:;">
                        <div class="visual">
                            <i class="fa fa-briefcase fa-icon-medium"></i>
                        </div>
                        <div class="details">
                            <div class="number">
                                ${blogTotal}
                            </div>
                            <div class="desc">
                                博文总数
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                    <a class="dashboard-stat dashboard-stat-light red-intense" href="javascript:;">
                        <div class="visual">
                            <i class="fa fa-shopping-cart"></i>
                        </div>
                        <div class="details">
                            <div class="number">
                                ${lastTime}
                            </div>
                            <div class="desc">
                                博文最新时间
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <!-- Begin: life time stats -->
                    <div class="portlet light">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="icon-bar-chart font-green-sharp"></i>
                                <span class="caption-subject font-green-sharp bold uppercase">Overview</span>
                                <span class="caption-helper">我是小尾巴</span>
                            </div>
                            <div class="tools">
                                <a href="javascript:;" class="collapse">
                                </a>
                                <a href="#" class="reload" onclick="blogIndexManager.getBlogs()">
                                </a>
                                <a href="javascript:;" class="remove">
                                </a>
                            </div>
                        </div>
                        <div class="portlet-body">
                            <div class="tabbable-line">
                                <ul class="nav nav-tabs">
                                    <li class="active">
                                        <a href="#overview_1" data-toggle="tab">
                                            最新博文 </a>
                                    </li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="overview_1">
                                        <div class="table-responsive">
                                            <table class="table table-hover table-light">
                                                <thead>
                                                <tr class="uppercase">
                                                    <th>
                                                        Title
                                                    </th>
                                                    <th>
                                                        Create Time
                                                    </th>
                                                    <th>
                                                        Author
                                                    </th>
                                                    <th>
                                                    </th>
                                                </tr>
                                                </thead>
                                                <tbody id="blogTable">
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
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
<script type="text/javascript">
    $(function () {
        //初始化页面相应元素绑定事件
        blogIndexManager.init();
    });
</script>
</body>
</html>