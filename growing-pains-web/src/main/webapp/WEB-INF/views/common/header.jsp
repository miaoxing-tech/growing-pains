<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!-- BEGIN HEADER -->
<div class="page-header">
    <div id="loginModal" class="modal fade" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                    <h4 class="modal-title">LOGIN</h4>
                </div>
                <div class="modal-body">
                    <div class="scroller" style="height:200px" data-always-visible="1" data-rail-visible1="1">
                        <div class="row">
                            <div class="form-group col-md-12"></div>
                            <div class="form-group col-md-12" id="loginError"></div>
                            <div class="form-group col-md-12">
                                <div class="col-md-1"></div>
                                <label class="control-label col-md-2">用户名</label>
                                <div class="col-md-8">
                                    <input type="text" id="userName" class="form-control maxlength-handler"
                                           name="userName" maxlength="100" placeholder="">
                                </div>
                                <div class="col-md-1"></div>
                            </div>
                            <div class="form-group col-md-12"></div>
                            <div class="form-group col-md-12">
                                <div class="col-md-1"></div>
                                <label class="control-label col-md-2">密&nbsp;&nbsp;&nbsp;&nbsp;码</label>
                                <div class="col-md-8">
                                    <input type="password" id="password" class="form-control maxlength-handler"
                                           name="password" maxlength="100" placeholder="">
                                </div>
                                <div class="col-md-1"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" data-dismiss="modal" class="btn default">Close</button>
                    <button type="button" class="btn green" onclick="systemManager.login();">Login</button>
                    <button type="button" class="btn blue" onclick="systemManager.registerPage();">Register</button>
                </div>
            </div>
        </div>
    </div>
    <div id="registerModal" class="modal fade" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                    <h4 class="modal-title">REGISTER</h4>
                </div>
                <div class="modal-body">
                    <div class="scroller" style="height:300px" data-always-visible="1" data-rail-visible1="1">
                        <div class="row">
                            <div class="form-group col-md-12"></div>
                            <div class="form-group col-md-12" id="registerError"></div>
                            <div class="form-group col-md-12">
                                <div class="col-md-1"></div>
                                <label class="control-label col-md-2">用&nbsp;&nbsp;户&nbsp;&nbsp;名</label>
                                <div class="col-md-8">
                                    <input type="text" id="registerUserName" class="form-control maxlength-handler"
                                           name="registerUserName" maxlength="100" placeholder="">
                                </div>
                                <div class="col-md-1"></div>
                            </div>
                            <div class="form-group col-md-12">
                                <div class="col-md-1"></div>
                                <label class="control-label col-md-2">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码</label>
                                <div class="col-md-8">
                                    <input type="password" id="registerPassword" class="form-control maxlength-handler"
                                           name="registerPassword" maxlength="100" placeholder="">
                                </div>
                                <div class="col-md-1"></div>
                            </div>
                            <div class="form-group col-md-12">
                                <div class="col-md-1"></div>
                                <label class="control-label col-md-2">密码确认</label>
                                <div class="col-md-8">
                                    <input type="password" id="registerPasswordAgain" class="form-control maxlength-handler"
                                           name="registerPasswordAgain" maxlength="100" placeholder="">
                                </div>
                                <div class="col-md-1"></div>
                            </div>
                            <div class="form-group col-md-12">
                                <div class="col-md-1"></div>
                                <label class="control-label col-md-2">邀&nbsp;&nbsp;请&nbsp;&nbsp;码</label>
                                <div class="col-md-8">
                                    <input type="text" id="invitationCode" class="form-control maxlength-handler"
                                           name="invitationCode" maxlength="100" placeholder="">
                                </div>
                                <div class="col-md-1"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" data-dismiss="modal" class="btn default">Close</button>
                    <button type="button" class="btn green" onclick="systemManager.register();">Register</button>
                </div>
            </div>
        </div>
    </div>
    <!-- BEGIN HEADER TOP -->
    <div class="page-header-top">
        <div class="container">
            <!-- BEGIN LOGO -->
            <div class="page-logo">
                <a href="<c:url value="/"/>"><img src="${basePath}/resources/img/logo.jpeg" alt="logo" class="logo-default" style="border-radius:80%;height:75px;"></a>
            </div>
            <!-- END LOGO -->
            <!-- BEGIN RESPONSIVE MENU TOGGLER -->
            <a href="javascript:;" class="menu-toggler"></a>
            <!-- END RESPONSIVE MENU TOGGLER -->
            <!-- BEGIN TOP NAVIGATION MENU -->
            <div class="top-menu">
                <ul class="nav navbar-nav pull-right">
                    <!-- BEGIN NOTIFICATION DROPDOWN -->
                    <li class="dropdown dropdown-extended dropdown-dark dropdown-notification"
                        id="header_notification_bar">
                        <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"
                           data-close-others="true">
                            <i class="icon-bell"></i>
                            <span class="badge badge-default">提醒</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="external">
                                <h3><strong>敬请期待~</strong></h3>
                                <a href="javascript:;">别点我100下,有毒=。=</a>
                            </li>
                        </ul>
                    </li>
                    <!-- END NOTIFICATION DROPDOWN -->
                    <!-- BEGIN TODO DROPDOWN -->
                    <li class="dropdown dropdown-extended dropdown-dark dropdown-tasks" id="header_task_bar">
                        <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"
                           data-close-others="true">
                            <i class="icon-calendar"></i>
                            <span class="badge badge-default">日历</span>
                        </a>
                        <ul class="dropdown-menu extended tasks">
                            <li class="external">
                                <h3><strong>敬请期待~X2</strong></h3>
                                <a href="javascript:;">你敢点10000下?</a>
                            </li>
                        </ul>
                    </li>
                    <!-- END TODO DROPDOWN -->
                    <li class="droddown dropdown-separator">
                        <span class="separator"></span>
                    </li>
                    <!-- BEGIN INBOX DROPDOWN -->
                    <li class="dropdown dropdown-extended dropdown-dark dropdown-inbox" id="header_inbox_bar">
                        <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"
                           data-close-others="true">
                            <span class="circle">这是你</span>
                            <span class="corner"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="external">
                                <h3><strong>敬请期待~X3</strong></h3>
                                <a href="javascript:;">你想点多少下?</a>
                            </li>
                        </ul>
                    </li>
                    <!-- END INBOX DROPDOWN -->
                    <!-- BEGIN USER LOGIN DROPDOWN -->
                    <li class="dropdown dropdown-user dropdown-dark">
                        <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"
                           data-close-others="true">
                            <img alt="" class="img-circle" src="${basePath}/resources/img/logo.jpeg">
                            <span class="username username-hide-mobile">${username}</span>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-default">
                            <li>
                                <c:if test="${isLogin == true}">
                                    <a href="#" onclick="systemManager.logout();">
                                        <i class="icon-user"></i>登出</a>
                                </c:if>
                                <c:if test="${isLogin == false}">
                                    <a href="#" onclick="$('#loginModal').modal('show');">
                                        <i class="icon-user"></i>登录</a>
                                    <a href="#" onclick="systemManager.registerPage();">
                                        <i class="icon-user"></i>注册</a>
                                </c:if>
                            </li>
                        </ul>
                    </li>
                    <!-- END USER LOGIN DROPDOWN -->
                </ul>
            </div>
            <!-- END TOP NAVIGATION MENU -->
        </div>
    </div>
    <!-- END HEADER TOP -->
    <!-- BEGIN HEADER MENU -->
    <div class="page-header-menu">
        <div class="container">
            <!-- BEGIN HEADER SEARCH BOX -->
            <form class="search-form" action="<c:url value="/"/>" method="GET">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search Blog" name="query">
					<span class="input-group-btn">
					<a href="javascript:;" class="btn submit"><i class="icon-magnifier"></i></a>
					</span>
                </div>
            </form>
            <!-- END HEADER SEARCH BOX -->
            <!-- BEGIN MEGA MENU -->
            <!-- DOC: Apply "hor-menu-light" class after the "hor-menu" class below to have a horizontal menu with white background -->
            <!-- DOC: Remove data-hover="dropdown" and data-close-others="true" attributes below to disable the dropdown opening on mouse hover -->
            <div class="hor-menu ">
                <ul class="nav navbar-nav">
                    <li class="menu-dropdown classic-menu-dropdown ">
                        <a data-hover="megamenu-dropdown" data-close-others="true" data-toggle="dropdown"
                           href="javascript:;">
                            BLOG<i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu pull-left">
                            <li class="active">
                                <a href="<c:url value="/"/>">
                                    <i class="icon-home"></i>
                                    博客首页 </a>
                            </li>
                            <li class="active">
                                <a href="<c:url value="/blog/listPage.htm"/>">
                                    <i class="icon-puzzle"></i>
                                    我的博客 </a>
                            </li>
                            <li class="active">
                                <a href="<c:url value="/blog/addPage.htm"/>">
                                    <i class="icon-wallet"></i>
                                    新增博客 </a>
                            </li>
                        </ul>
                    </li>
                    <li class="menu-dropdown classic-menu-dropdown ">
                        <a data-hover="megamenu-dropdown" data-close-others="true" data-toggle="dropdown"
                           href="javascript:;">
                            TAG<i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu pull-left">
                            <li class="active">
                                <a href="<c:url value="/blogTag/listPage.htm"/>">
                                    <i class="icon-puzzle"></i>
                                    我的标签 </a>
                            </li>
                            <li class="active">
                                <a href="<c:url value="/blogTag/addPage.htm"/>">
                                    <i class="icon-wallet"></i>
                                    新增标签 </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!-- END MEGA MENU -->
        </div>
    </div>
    <!-- END HEADER MENU -->
</div>
<!-- END HEADER -->