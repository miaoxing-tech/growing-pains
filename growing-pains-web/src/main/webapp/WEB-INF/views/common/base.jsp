<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="basePath" value="${pageContext.request.contextPath}"/>

<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="${basePath}/resources/plugins/metronic/css/components-md.css" id="style_components" rel="stylesheet"
      type="text/css"/>
<link href="${basePath}/resources/plugins/metronic/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="${basePath}/resources/plugins/metronic/css/simple-line-icons.min.css" rel="stylesheet" type="text/css">
<link href="${basePath}/resources/plugins/metronic/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="${basePath}/resources/plugins/metronic/css/uniform.default.css" rel="stylesheet" type="text/css">
<link href="${basePath}/resources/plugins/metronic/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css">
<!-- END GLOBAL MANDATORY STYLES -->

<!-- BEGIN THEME STYLES -->
<link href="${basePath}/resources/plugins/metronic/css/components-rounded.css" id="style_components" rel="stylesheet" type="text/css">
<link href="${basePath}/resources/plugins/metronic/css/plugins.css" rel="stylesheet" type="text/css">
<link href="${basePath}/resources/plugins/metronic/css/layout.css" rel="stylesheet" type="text/css">
<link href="${basePath}/resources/plugins/metronic/css/default.css" rel="stylesheet" type="text/css" id="style_color">
<!-- END THEME STYLES -->

<script src="${basePath}/resources/plugins/metronic/script/jquery.min.js" type="text/javascript"></script>
<script src="${basePath}/resources/plugins/metronic/script/jquery-ui.min.js" type="text/javascript"></script>
<script src="${basePath}/resources/plugins/metronic/script/jquery.slimscroll.js" type="text/javascript"></script>
<script src="${basePath}/resources/plugins/metronic/script/jquery.blockui.min.js" type="text/javascript"></script>
<script src="${basePath}/resources/plugins/metronic/script/layout.js" type="text/javascript"></script>
<script src="${basePath}/resources/plugins/metronic/script/metronic.js" type="text/javascript"></script>
<script src="${basePath}/resources/plugins/metronic/script/bootstrap.js" type="text/javascript"></script>
<script src="${basePath}/resources/plugins/metronic/script/bootstrap-hover-dropdown.js" type="text/javascript"></script>
<script src="${basePath}/resources/plugins/metronic/plugins/uniform/jquery.uniform.js" type="text/javascript"></script>

<script src="${basePath}/resources/scripts/common/base.js" type="text/javascript"></script>
<script src="${basePath}/resources/scripts/common/time.js" type="text/javascript"></script>
<script src="${basePath}/resources/scripts/system/system.js" type="text/javascript"></script>

<script>
    jQuery(document).ready(function() {
        Metronic.init(); // init metronic core components
        Layout.init(); // init current layout
    });
    var environment = {
        basePath : '${basePath}'
    };
</script>


