<%@page import="org.slf4j.Logger" %>
<%@page import="org.slf4j.LoggerFactory" %>
<%! private static final Logger logger = LoggerFactory.getLogger("error_page_404"); %>
<%
    logger.error("oops, 404 NOT FOUND");
%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>出错啦</title>
</head>
<body>
<h3>建设中~</h3>
</body>
</html>