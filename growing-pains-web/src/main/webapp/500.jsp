<%@page import="org.slf4j.Logger" %>
<%@page import="org.slf4j.LoggerFactory" %>
<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%! private static final Logger logger = LoggerFactory.getLogger("error_page_500"); %>
<%
    logger.error("oops, 500 INTERNAL SERVER ERROR");
%>
<c:set var="basePath" value="${pageContext.request.contextPath}"/>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>404</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <meta content="" name="description"/>
    <meta content="" name="author"/>

    <!-- BEGIN STYLES -->
    <link href="${basePath}/resources/plugins/metronic/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="${basePath}/resources/plugins/metronic/css/error.css" rel="stylesheet" type="text/css">
    <!-- END STYLES -->
</head>
<body class="page-500-full-page">
<div class="row">
    <div class="col-md-12 page-500">
        <div class=" number">
            500
        </div>
        <div class=" details">
            <h3>Oops! Something went wrong.</h3>
            <p>
                We will fix it!<br/>
                请联系管理员 或 <a href="/">
                返回首页 </a>
            </p>
        </div>
    </div>
</div>
</body>
</html>