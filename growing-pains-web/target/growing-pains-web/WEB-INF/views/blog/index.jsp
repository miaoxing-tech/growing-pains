<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
</head>
<body class="page-md">
<!-- BEGIN HEADER -->
<div class="page-header">
    <!-- BEGIN HEADER TOP -->
    <div class="page-header-top">
        <div class="container">
            <!-- BEGIN LOGO -->
            <div class="page-logo">
                <a href="index.html"><img src="${basePath}/resources/images/logo-default.png" alt="logo"
                                          class="logo-default"></a>
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
                            <span class="badge badge-default">7</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="external">
                                <h3>You have <strong>12 pending</strong> tasks</h3>
                                <a href="javascript:;">view all</a>
                            </li>
                            <li>
                                <ul class="dropdown-menu-list scroller" style="height: 250px;"
                                    data-handle-color="#637283">
                                    <li>
                                        <a href="javascript:;">
                                            <span class="time">just now</span>
										<span class="details">
										<span class="label label-sm label-icon label-success">
										<i class="fa fa-plus"></i>
										</span>
										New user registered. </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <span class="time">3 mins</span>
										<span class="details">
										<span class="label label-sm label-icon label-danger">
										<i class="fa fa-bolt"></i>
										</span>
										Server #12 overloaded. </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <span class="time">10 mins</span>
										<span class="details">
										<span class="label label-sm label-icon label-warning">
										<i class="fa fa-bell-o"></i>
										</span>
										Server #2 not responding. </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <span class="time">14 hrs</span>
										<span class="details">
										<span class="label label-sm label-icon label-info">
										<i class="fa fa-bullhorn"></i>
										</span>
										Application error. </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <span class="time">2 days</span>
										<span class="details">
										<span class="label label-sm label-icon label-danger">
										<i class="fa fa-bolt"></i>
										</span>
										Database overloaded 68%. </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <span class="time">3 days</span>
										<span class="details">
										<span class="label label-sm label-icon label-danger">
										<i class="fa fa-bolt"></i>
										</span>
										A user IP blocked. </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <span class="time">4 days</span>
										<span class="details">
										<span class="label label-sm label-icon label-warning">
										<i class="fa fa-bell-o"></i>
										</span>
										Storage Server #4 not responding dfdfdfd. </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <span class="time">5 days</span>
										<span class="details">
										<span class="label label-sm label-icon label-info">
										<i class="fa fa-bullhorn"></i>
										</span>
										System Error. </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <span class="time">9 days</span>
										<span class="details">
										<span class="label label-sm label-icon label-danger">
										<i class="fa fa-bolt"></i>
										</span>
										Storage server failed. </span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <!-- END NOTIFICATION DROPDOWN -->
                    <!-- BEGIN TODO DROPDOWN -->
                    <li class="dropdown dropdown-extended dropdown-dark dropdown-tasks" id="header_task_bar">
                        <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"
                           data-close-others="true">
                            <i class="icon-calendar"></i>
                            <span class="badge badge-default">3</span>
                        </a>
                        <ul class="dropdown-menu extended tasks">
                            <li class="external">
                                <h3>You have <strong>12 pending</strong> tasks</h3>
                                <a href="javascript:;">view all</a>
                            </li>
                            <li>
                                <ul class="dropdown-menu-list scroller" style="height: 275px;"
                                    data-handle-color="#637283">
                                    <li>
                                        <a href="javascript:;">
										<span class="task">
										<span class="desc">New release v1.2 </span>
										<span class="percent">30%</span>
										</span>
										<span class="progress">
										<span style="width: 40%;" class="progress-bar progress-bar-success"
                                              aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"><span
                                                class="sr-only">40% Complete</span></span>
										</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
										<span class="task">
										<span class="desc">Application deployment</span>
										<span class="percent">65%</span>
										</span>
										<span class="progress">
										<span style="width: 65%;" class="progress-bar progress-bar-danger"
                                              aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"><span
                                                class="sr-only">65% Complete</span></span>
										</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
										<span class="task">
										<span class="desc">Mobile app release</span>
										<span class="percent">98%</span>
										</span>
										<span class="progress">
										<span style="width: 98%;" class="progress-bar progress-bar-success"
                                              aria-valuenow="98" aria-valuemin="0" aria-valuemax="100"><span
                                                class="sr-only">98% Complete</span></span>
										</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
										<span class="task">
										<span class="desc">Database migration</span>
										<span class="percent">10%</span>
										</span>
										<span class="progress">
										<span style="width: 10%;" class="progress-bar progress-bar-warning"
                                              aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"><span
                                                class="sr-only">10% Complete</span></span>
										</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
										<span class="task">
										<span class="desc">Web server upgrade</span>
										<span class="percent">58%</span>
										</span>
										<span class="progress">
										<span style="width: 58%;" class="progress-bar progress-bar-info"
                                              aria-valuenow="58" aria-valuemin="0" aria-valuemax="100"><span
                                                class="sr-only">58% Complete</span></span>
										</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
										<span class="task">
										<span class="desc">Mobile development</span>
										<span class="percent">85%</span>
										</span>
										<span class="progress">
										<span style="width: 85%;" class="progress-bar progress-bar-success"
                                              aria-valuenow="85" aria-valuemin="0" aria-valuemax="100"><span
                                                class="sr-only">85% Complete</span></span>
										</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
										<span class="task">
										<span class="desc">New UI release</span>
										<span class="percent">38%</span>
										</span>
										<span class="progress progress-striped">
										<span style="width: 38%;" class="progress-bar progress-bar-important"
                                              aria-valuenow="18" aria-valuemin="0" aria-valuemax="100"><span
                                                class="sr-only">38% Complete</span></span>
										</span>
                                        </a>
                                    </li>
                                </ul>
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
                            <span class="circle">3</span>
                            <span class="corner"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="external">
                                <h3>You have <strong>7 New</strong> Messages</h3>
                                <a href="javascript:;">view all</a>
                            </li>
                            <li>
                                <ul class="dropdown-menu-list scroller" style="height: 275px;"
                                    data-handle-color="#637283">
                                    <li>
                                        <a href="inbox.html?a=view">
										<span class="photo">
										<img src="../../assets/admin/layout3/img/avatar2.jpg" class="img-circle" alt="">
										</span>
										<span class="subject">
										<span class="from">
										Lisa Wong </span>
										<span class="time">Just Now </span>
										</span>
										<span class="message">
										Vivamus sed auctor nibh congue nibh. auctor nibh auctor nibh... </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="inbox.html?a=view">
										<span class="photo">
										<img src="../../assets/admin/layout3/img/avatar3.jpg" class="img-circle" alt="">
										</span>
										<span class="subject">
										<span class="from">
										Richard Doe </span>
										<span class="time">16 mins </span>
										</span>
										<span class="message">
										Vivamus sed congue nibh auctor nibh congue nibh. auctor nibh auctor nibh... </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="inbox.html?a=view">
										<span class="photo">
										<img src="../../assets/admin/layout3/img/avatar1.jpg" class="img-circle" alt="">
										</span>
										<span class="subject">
										<span class="from">
										Bob Nilson </span>
										<span class="time">2 hrs </span>
										</span>
										<span class="message">
										Vivamus sed nibh auctor nibh congue nibh. auctor nibh auctor nibh... </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="inbox.html?a=view">
										<span class="photo">
										<img src="../../assets/admin/layout3/img/avatar2.jpg" class="img-circle" alt="">
										</span>
										<span class="subject">
										<span class="from">
										Lisa Wong </span>
										<span class="time">40 mins </span>
										</span>
										<span class="message">
										Vivamus sed auctor 40% nibh congue nibh... </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="inbox.html?a=view">
										<span class="photo">
										<img src="../../assets/admin/layout3/img/avatar3.jpg" class="img-circle" alt="">
										</span>
										<span class="subject">
										<span class="from">
										Richard Doe </span>
										<span class="time">46 mins </span>
										</span>
										<span class="message">
										Vivamus sed congue nibh auctor nibh congue nibh. auctor nibh auctor nibh... </span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <!-- END INBOX DROPDOWN -->
                    <!-- BEGIN USER LOGIN DROPDOWN -->
                    <li class="dropdown dropdown-user dropdown-dark">
                        <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"
                           data-close-others="true">
                            <img alt="" class="img-circle" src="../../assets/admin/layout3/img/avatar9.jpg">
                            <span class="username username-hide-mobile">Nick</span>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-default">
                            <li>
                                <a href="extra_profile.html">
                                    <i class="icon-user"></i> My Profile </a>
                            </li>
                            <li>
                                <a href="page_calendar.html">
                                    <i class="icon-calendar"></i> My Calendar </a>
                            </li>
                            <li>
                                <a href="inbox.html">
                                    <i class="icon-envelope-open"></i> My Inbox <span class="badge badge-danger">
								3 </span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <i class="icon-rocket"></i> My Tasks <span class="badge badge-success">
								7 </span>
                                </a>
                            </li>
                            <li class="divider">
                            </li>
                            <li>
                                <a href="extra_lock.html">
                                    <i class="icon-lock"></i> Lock Screen </a>
                            </li>
                            <li>
                                <a href="login.html">
                                    <i class="icon-key"></i> Log Out </a>
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
            <form class="search-form" action="extra_search.html" method="GET">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search" name="query">
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
                    <li>
                        <a href="index.html">Dashboard</a>
                    </li>
                    <li class="menu-dropdown mega-menu-dropdown active">
                        <a data-hover="megamenu-dropdown" data-close-others="true" data-toggle="dropdown"
                           href="javascript:;" class="dropdown-toggle">
                            Features <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu" style="min-width: 710px">
                            <li>
                                <div class="mega-menu-content">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <ul class="mega-menu-submenu">
                                                <li>
                                                    <h3>eCommerce</h3>
                                                </li>
                                                <li class="active">
                                                    <a href="ecommerce_index.html" class="iconify">
                                                        <i class="icon-home"></i>
                                                        eCommerce </a>
                                                </li>
                                                <li>
                                                    <a href="ecommerce_orders.html" class="iconify">
                                                        <i class="icon-basket"></i>
                                                        Manage Orders </a>
                                                </li>
                                                <li>
                                                    <a href="ecommerce_orders_view.html" class="iconify">
                                                        <i class="icon-tag"></i>
                                                        Order View </a>
                                                </li>
                                                <li>
                                                    <a href="ecommerce_products.html" class="iconify">
                                                        <i class="icon-handbag"></i>
                                                        Manage Products </a>
                                                </li>
                                                <li>
                                                    <a href="ecommerce_products_edit.html" class="iconify">
                                                        <i class="icon-pencil"></i>
                                                        Product Edit </a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-md-4">
                                            <ul class="mega-menu-submenu">
                                                <li>
                                                    <h3>Layouts</h3>
                                                </li>
                                                <li>
                                                    <a href="layout_fluid.html" class="iconify">
                                                        <i class="icon-cursor-move"></i>
                                                        Fluid Layout </a>
                                                </li>
                                                <li>
                                                    <a href="layout_mega_menu_fixed.html" class="iconify">
                                                        <i class="icon-pin"></i>
                                                        Fixed Mega Menu </a>
                                                </li>
                                                <li>
                                                    <a href="layout_top_bar_fixed.html" class="iconify">
                                                        <i class="icon-bar-chart"></i>
                                                        Fixed Top Bar </a>
                                                </li>
                                                <li>
                                                    <a href="layout_light_header.html" class="iconify">
                                                        <i class="icon-paper-plane"></i>
                                                        Light Header Dropdowns </a>
                                                </li>
                                                <li>
                                                    <a href="layout_blank_page.html" class="iconify">
                                                        <i class="icon-doc"></i>
                                                        Blank Page Layout </a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-md-4">
                                            <ul class="mega-menu-submenu">
                                                <li>
                                                    <h3>More Layouts</h3>
                                                </li>
                                                <li>
                                                    <a href="layout_click_dropdowns.html" class="iconify">
                                                        <i class="icon-speech"></i>
                                                        Click vs. Hover Dropdowns </a>
                                                </li>
                                                <li>
                                                    <a href="layout_fontawesome_icons.html" class="iconify">
                                                        <i class="icon-link"></i>
                                                        Layout with Fontawesome </a>
                                                </li>
                                                <li>
                                                    <a href="layout_glyphicons.html" class="iconify">
                                                        <i class="icon-settings"></i>
                                                        Layout with Glyphicon </a>
                                                </li>
                                                <li>
                                                    <a href="layout_language_bar.html" class="iconify">
                                                        <i class="icon-globe"></i>
                                                        Language Switch Bar </a>
                                                </li>
                                                <li>
                                                    <a href="layout_disabled_menu.html" class="iconify">
                                                        <i class=" icon-lock"></i>
                                                        Disabled Menu Links </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <li class="menu-dropdown mega-menu-dropdown mega-menu-full ">
                        <a data-hover="megamenu-dropdown" data-close-others="true" data-toggle="dropdown"
                           href="javascript:;" class="dropdown-toggle">
                            UI Components <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <div class="mega-menu-content">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <ul class="mega-menu-submenu">
                                                <li>
                                                    <h3>UI Components</h3>
                                                </li>
                                                <li>
                                                    <a href="ui_general.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        General </a>
                                                </li>
                                                <li>
                                                    <a href="ui_buttons.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Buttons </a>
                                                </li>
                                                <li>
                                                    <a href="ui_icons.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Font Icons </a>
                                                </li>
                                                <li>
                                                    <a href="ui_colors.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Flat UI Colors </a>
                                                </li>
                                                <li>
                                                    <a href="ui_typography.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Typography </a>
                                                </li>
                                                <li>
                                                    <a href="ui_tabs_accordions_navs.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Tabs, Accordions & Navs </a>
                                                </li>
                                                <li>
                                                    <a href="ui_tree.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Tree View </a>
                                                </li>
                                                <li>
                                                    <a href="ui_page_progress_style_1.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Page Progress Bar <span
                                                            class="badge badge-roundless badge-warning">new</span></a>
                                                </li>
                                                <li>
                                                    <a href="ui_blockui.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Block UI </a>
                                                </li>
                                                <li>
                                                    <a href="ui_bootstrap_growl.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Bootstrap Growl Notifications <span
                                                            class="badge badge-roundless badge-warning">new</span></a>
                                                </li>
                                                <li>
                                                    <a href="ui_notific8.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Notific8 Notifications </a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-md-3">
                                            <ul class="mega-menu-submenu">
                                                <li>
                                                    <h3>More UI Components</h3>
                                                </li>
                                                <li>
                                                    <a href="ui_toastr.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Toastr Notifications </a>
                                                </li>
                                                <li>
                                                    <a href="ui_alert_dialog_api.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Alerts & Dialogs API <span
                                                            class="badge badge-roundless badge-danger">new</span></a>
                                                </li>
                                                <li>
                                                    <a href="ui_session_timeout.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Session Timeout </a>
                                                </li>
                                                <li>
                                                    <a href="ui_idle_timeout.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        User Idle Timeout </a>
                                                </li>
                                                <li>
                                                    <a href="ui_modals.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Modals </a>
                                                </li>
                                                <li>
                                                    <a href="ui_extended_modals.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Extended Modals </a>
                                                </li>
                                                <li>
                                                    <a href="ui_tiles.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Tiles </a>
                                                </li>
                                                <li>
                                                    <a href="ui_datepaginator.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Date Paginator </a>
                                                </li>
                                                <li>
                                                    <a href="ui_nestable.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Nestable List </a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-md-3">
                                            <ul class="mega-menu-submenu">
                                                <li>
                                                    <h3>Form Stuff</h3>
                                                </li>
                                                <li>
                                                    <a href="form_controls_md.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Material Design<br>
                                                        Form Controls </a>
                                                </li>
                                                <li>
                                                    <a href="form_controls.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Bootstrap<br>
                                                        Form Controls </a>
                                                </li>
                                                <li>
                                                    <a href="form_icheck.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        iCheck Controls </a>
                                                </li>
                                                <li>
                                                    <a href="form_layouts.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Form Layouts </a>
                                                </li>
                                                <li>
                                                    <a href="form_editable.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Form X-editable <span
                                                            class="badge badge-roundless badge-success">new</span></a>
                                                </li>
                                                <li>
                                                    <a href="form_wizard.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Form Wizard </a>
                                                </li>
                                                <li>
                                                    <a href="form_validation.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Form Validation </a>
                                                </li>
                                                <li>
                                                    <a href="form_image_crop.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Image Cropping </a>
                                                </li>
                                                <li>
                                                    <a href="form_fileupload.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Multiple File Upload </a>
                                                </li>
                                                <li>
                                                    <a href="form_dropzone.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Dropzone File Upload </a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-md-3">
                                            <ul class="mega-menu-submenu">
                                                <li>
                                                    <h3>Form Components</h3>
                                                </li>
                                                <li>
                                                    <a href="components_pickers.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Date & Time Pickers </a>
                                                </li>
                                                <li>
                                                    <a href="components_context_menu.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Context Menu </a>
                                                </li>
                                                <li>
                                                    <a href="components_dropdowns.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Custom Dropdowns </a>
                                                </li>
                                                <li>
                                                    <a href="components_form_tools.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Form Widgets & Tools </a>
                                                </li>
                                                <li>
                                                    <a href="components_form_tools2.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Form Widgets & Tools 2 </a>
                                                </li>
                                                <li>
                                                    <a href="components_editors.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Markdown & WYSIWYG Editors </a>
                                                </li>
                                                <li>
                                                    <a href="components_ion_sliders.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Ion Range Sliders </a>
                                                </li>
                                                <li>
                                                    <a href="components_noui_sliders.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        NoUI Range Sliders </a>
                                                </li>
                                                <li>
                                                    <a href="components_jqueryui_sliders.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        jQuery UI Sliders </a>
                                                </li>
                                                <li>
                                                    <a href="components_knob_dials.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Knob Circle Dials </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <li class="menu-dropdown classic-menu-dropdown ">
                        <a data-hover="megamenu-dropdown" data-close-others="true" data-toggle="dropdown"
                           href="javascript:;">
                            Extra <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu pull-left">
                            <li class=" dropdown-submenu">
                                <a href=":;">
                                    <i class="icon-briefcase"></i>
                                    Data Tables </a>
                                <ul class="dropdown-menu">
                                    <li class=" ">
                                        <a href="table_basic.html">
                                            Basic Datatables </a>
                                    </li>
                                    <li class=" ">
                                        <a href="table_tree.html">
                                            Tree Datatables </a>
                                    </li>
                                    <li class=" ">
                                        <a href="table_responsive.html">
                                            Responsive Datatables </a>
                                    </li>
                                    <li class=" ">
                                        <a href="table_managed.html">
                                            Managed Datatables </a>
                                    </li>
                                    <li class=" ">
                                        <a href="table_editable.html">
                                            Editable Datatables </a>
                                    </li>
                                    <li class=" ">
                                        <a href="table_advanced.html">
                                            Advanced Datatables </a>
                                    </li>
                                    <li class=" ">
                                        <a href="table_ajax.html">
                                            Ajax Datatables </a>
                                    </li>
                                </ul>
                            </li>
                            <li class=" dropdown-submenu">
                                <a href=":;">
                                    <i class="icon-wallet"></i>
                                    Portlets </a>
                                <ul class="dropdown-menu">
                                    <li class=" ">
                                        <a href="portlet_general.html">
                                            General Portlets </a>
                                    </li>
                                    <li class=" ">
                                        <a href="portlet_general2.html">
                                            New Portlets #1 <span class="badge badge-roundless badge-danger">new</span>
                                        </a>
                                    </li>
                                    <li class=" ">
                                        <a href="portlet_general3.html">
                                            New Portlets #2 <span class="badge badge-roundless badge-danger">new</span>
                                        </a>
                                    </li>
                                    <li class=" ">
                                        <a href="portlet_ajax.html">
                                            Ajax Portlets </a>
                                    </li>
                                    <li class=" ">
                                        <a href="portlet_draggable.html">
                                            Draggable Portlets </a>
                                    </li>
                                </ul>
                            </li>
                            <li class=" dropdown-submenu">
                                <a href=":;">
                                    <i class="icon-bar-chart"></i>
                                    Charts </a>
                                <ul class="dropdown-menu">
                                    <li class=" ">
                                        <a href="charts_amcharts.html">
                                            amChart </a>
                                    </li>
                                    <li class=" ">
                                        <a href="charts_flotcharts.html">
                                            Flotchart </a>
                                    </li>
                                </ul>
                            </li>
                            <li class=" dropdown-submenu">
                                <a href=":;">
                                    <i class="icon-pointer"></i>
                                    Maps </a>
                                <ul class="dropdown-menu">
                                    <li class=" ">
                                        <a href="maps_google.html">
                                            Google Maps </a>
                                    </li>
                                    <li class=" ">
                                        <a href="maps_vector.html">
                                            Vector Maps </a>
                                    </li>
                                </ul>
                            </li>
                            <li class=" dropdown-submenu">
                                <a href=":;">
                                    <i class="icon-puzzle"></i>
                                    Multi Level </a>
                                <ul class="dropdown-menu">
                                    <li class=" ">
                                        <a href="javascript:;">
                                            <i class="icon-settings"></i>
                                            Item 1 </a>
                                    </li>
                                    <li class=" ">
                                        <a href="javascript:;">
                                            <i class="icon-user"></i>
                                            Item 2 </a>
                                    </li>
                                    <li class=" ">
                                        <a href="javascript:;">
                                            <i class="icon-globe"></i>
                                            Item 3 </a>
                                    </li>
                                    <li class=" dropdown-submenu">
                                        <a href="#">
                                            <i class="icon-folder"></i>
                                            Sub Items </a>
                                        <ul class="dropdown-menu">
                                            <li class=" ">
                                                <a href="javascript:;">
                                                    Item 1 </a>
                                            </li>
                                            <li class=" ">
                                                <a href="javascript:;">
                                                    Item 2 </a>
                                            </li>
                                            <li class=" ">
                                                <a href="javascript:;">
                                                    Item 3 </a>
                                            </li>
                                            <li class=" ">
                                                <a href="javascript:;">
                                                    Item 4 </a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class=" ">
                                        <a href="javascript:;">
                                            <i class="icon-share"></i>
                                            Item 4 </a>
                                    </li>
                                    <li class=" ">
                                        <a href="javascript:;">
                                            <i class="icon-bar-chart"></i>
                                            Item 5 </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="menu-dropdown mega-menu-dropdown mega-menu-full ">
                        <a data-hover="megamenu-dropdown" data-close-others="true" data-toggle="dropdown"
                           href="javascript:;" class="dropdown-toggle">
                            Pages <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <div class="mega-menu-content">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <ul class="mega-menu-submenu">
                                                <li>
                                                    <h3>User Pages</h3>
                                                </li>
                                                <li>
                                                    <a href="page_timeline.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        New Timeline <span class="badge badge-warning">2</span></a>
                                                </li>
                                                <li>
                                                    <a href="extra_profile.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        New User Profile <span
                                                            class="badge badge-success badge-roundless">new</span></a>
                                                </li>
                                                <li>
                                                    <a href="page_todo.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Todo & Tasks <span class="badge badge-danger">4</span></a>
                                                </li>
                                                <li>
                                                    <a href="inbox.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        User Inbox <span class="badge badge-success">4</span></a>
                                                </li>
                                                <li>
                                                    <a href="page_calendar.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        User Calendar <span class="badge badge-warning">14</span></a>
                                                </li>
                                                <li>
                                                    <a href="page_timeline_old.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Old Timeline <span class="badge badge-warning">2</span></a>
                                                </li>
                                                <li>
                                                    <a href="extra_profile_old.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Old User Profile </a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-md-3">
                                            <ul class="mega-menu-submenu">
                                                <li>
                                                    <h3>General Pages</h3>
                                                </li>
                                                <li>
                                                    <a href="extra_faq.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        FAQ Page </a>
                                                </li>
                                                <li>
                                                    <a href="page_portfolio.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Portfolio </a>
                                                </li>
                                                <li>
                                                    <a href="page_timeline.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Timeline <span class="badge badge-info">4</span></a>
                                                </li>
                                                <li>
                                                    <a href="page_coming_soon.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Coming Soon </a>
                                                </li>
                                                <li>
                                                    <a href="extra_invoice.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Invoice </a>
                                                </li>
                                                <li>
                                                    <a href="page_blog.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Blog </a>
                                                </li>
                                                <li>
                                                    <a href="page_blog_item.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Blog Post </a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-md-3">
                                            <ul class="mega-menu-submenu">
                                                <li>
                                                    <h3>Custom Pages</h3>
                                                </li>
                                                <li>
                                                    <a href="page_news.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        News <span class="badge badge-success">9</span></a>
                                                </li>
                                                <li>
                                                    <a href="page_news_item.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        News View </a>
                                                </li>
                                                <li>
                                                    <a href="page_about.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        About Us </a>
                                                </li>
                                                <li>
                                                    <a href="page_contact.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Contact Us </a>
                                                </li>
                                                <li>
                                                    <a href="extra_search.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Search Results </a>
                                                </li>
                                                <li>
                                                    <a href="extra_pricing_table.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Pricing Tables </a>
                                                </li>
                                                <li>
                                                    <a href="login.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Login Form 1 </a>
                                                </li>
                                                <li>
                                                    <a href="login_2.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Login Form 2 </a>
                                                </li>
                                                <li>
                                                    <a href="login_3.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Login Form 3 </a>
                                                </li>
                                                <li>
                                                    <a href="login_soft.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Login Form 4 </a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-md-3">
                                            <ul class="mega-menu-submenu">
                                                <li>
                                                    <h3>Miscellaneous</h3>
                                                </li>
                                                <li>
                                                    <a href="extra_lock.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Lock Screen 1 </a>
                                                </li>
                                                <li>
                                                    <a href="extra_lock2.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        Lock Screen 2 </a>
                                                </li>
                                                <li>
                                                    <a href="extra_404_option1.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        404 Page Option 1 </a>
                                                </li>
                                                <li>
                                                    <a href="extra_404_option2.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        404 Page Option 2 </a>
                                                </li>
                                                <li>
                                                    <a href="extra_404_option3.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        404 Page Option 3 </a>
                                                </li>
                                                <li>
                                                    <a href="extra_500_option1.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        500 Page Option 1 </a>
                                                </li>
                                                <li>
                                                    <a href="extra_500_option2.html">
                                                        <i class="fa fa-angle-right"></i>
                                                        500 Page Option 2 </a>
                                                </li>

                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <li class="menu-dropdown">
                        <a href="angularjs" target="_blank" class="tooltips" data-container="body"
                           data-placement="bottom" data-html="true" data-original-title="AngularJS version demo">
                            AngularJS Version </a>
                    </li>
                </ul>
            </div>
            <!-- END MEGA MENU -->
        </div>
    </div>
    <!-- END HEADER MENU -->
</div>
<!-- END HEADER -->
<!-- BEGIN PAGE CONTAINER -->
<div class="page-container">
    <!-- BEGIN PAGE HEAD -->
    <div class="page-head">
        <div class="container">
            <!-- BEGIN PAGE TITLE -->
            <div class="page-title">
                <h1>eCommerce
                    <small>dashboard & statistics</small>
                </h1>
            </div>
            <!-- END PAGE TITLE -->
            <!-- BEGIN PAGE TOOLBAR -->
            <div class="page-toolbar">
                <!-- BEGIN THEME PANEL -->
                <div class="btn-group btn-theme-panel">
                    <a href="javascript:;" class="btn dropdown-toggle" data-toggle="dropdown">
                        <i class="icon-settings"></i>
                    </a>
                    <div class="dropdown-menu theme-panel pull-right dropdown-custom hold-on-click">
                        <div class="row">
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <h3>THEME COLORS</h3>
                                <div class="row">
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <ul class="theme-colors">
                                            <li class="theme-color theme-color-default" data-theme="default">
                                                <span class="theme-color-view"></span>
                                                <span class="theme-color-name">Default</span>
                                            </li>
                                            <li class="theme-color theme-color-blue-hoki" data-theme="blue-hoki">
                                                <span class="theme-color-view"></span>
                                                <span class="theme-color-name">Blue Hoki</span>
                                            </li>
                                            <li class="theme-color theme-color-blue-steel" data-theme="blue-steel">
                                                <span class="theme-color-view"></span>
                                                <span class="theme-color-name">Blue Steel</span>
                                            </li>
                                            <li class="theme-color theme-color-yellow-orange"
                                                data-theme="yellow-orange">
                                                <span class="theme-color-view"></span>
                                                <span class="theme-color-name">Orange</span>
                                            </li>
                                            <li class="theme-color theme-color-yellow-crusta"
                                                data-theme="yellow-crusta">
                                                <span class="theme-color-view"></span>
                                                <span class="theme-color-name">Yellow Crusta</span>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <ul class="theme-colors">
                                            <li class="theme-color theme-color-green-haze" data-theme="green-haze">
                                                <span class="theme-color-view"></span>
                                                <span class="theme-color-name">Green Haze</span>
                                            </li>
                                            <li class="theme-color theme-color-red-sunglo" data-theme="red-sunglo">
                                                <span class="theme-color-view"></span>
                                                <span class="theme-color-name">Red Sunglo</span>
                                            </li>
                                            <li class="theme-color theme-color-red-intense" data-theme="red-intense">
                                                <span class="theme-color-view"></span>
                                                <span class="theme-color-name">Red Intense</span>
                                            </li>
                                            <li class="theme-color theme-color-purple-plum" data-theme="purple-plum">
                                                <span class="theme-color-view"></span>
                                                <span class="theme-color-name">Purple Plum</span>
                                            </li>
                                            <li class="theme-color theme-color-purple-studio"
                                                data-theme="purple-studio">
                                                <span class="theme-color-view"></span>
                                                <span class="theme-color-name">Purple Studio</span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12 seperator">
                                <h3>LAYOUT</h3>
                                <ul class="theme-settings">
                                    <li>
                                        Theme Style
                                        <select class="theme-setting theme-setting-style form-control input-sm input-small input-inline tooltips"
                                                data-original-title="Change theme style" data-container="body"
                                                data-placement="left">
                                            <option value="boxed" selected="selected">Square corners</option>
                                            <option value="rounded">Rounded corners</option>
                                        </select>
                                    </li>
                                    <li>
                                        Layout
                                        <select class="theme-setting theme-setting-layout form-control input-sm input-small input-inline tooltips"
                                                data-original-title="Change layout type" data-container="body"
                                                data-placement="left">
                                            <option value="boxed" selected="selected">Boxed</option>
                                            <option value="fluid">Fluid</option>
                                        </select>
                                    </li>
                                    <li>
                                        Top Menu Style
                                        <select class="theme-setting theme-setting-top-menu-style form-control input-sm input-small input-inline tooltips"
                                                data-original-title="Change top menu dropdowns style"
                                                data-container="body" data-placement="left">
                                            <option value="dark" selected="selected">Dark</option>
                                            <option value="light">Light</option>
                                        </select>
                                    </li>
                                    <li>
                                        Top Menu Mode
                                        <select class="theme-setting theme-setting-top-menu-mode form-control input-sm input-small input-inline tooltips"
                                                data-original-title="Enable fixed(sticky) top menu"
                                                data-container="body" data-placement="left">
                                            <option value="fixed">Fixed</option>
                                            <option value="not-fixed" selected="selected">Not Fixed</option>
                                        </select>
                                    </li>
                                    <li>
                                        Mega Menu Style
                                        <select class="theme-setting theme-setting-mega-menu-style form-control input-sm input-small input-inline tooltips"
                                                data-original-title="Change mega menu dropdowns style"
                                                data-container="body" data-placement="left">
                                            <option value="dark" selected="selected">Dark</option>
                                            <option value="light">Light</option>
                                        </select>
                                    </li>
                                    <li>
                                        Mega Menu Mode
                                        <select class="theme-setting theme-setting-mega-menu-mode form-control input-sm input-small input-inline tooltips"
                                                data-original-title="Enable fixed(sticky) mega menu"
                                                data-container="body" data-placement="left">
                                            <option value="fixed" selected="selected">Fixed</option>
                                            <option value="not-fixed">Not Fixed</option>
                                        </select>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END THEME PANEL -->
            </div>
            <!-- END PAGE TOOLBAR -->
        </div>
    </div>
    <!-- END PAGE HEAD -->
    <!-- BEGIN PAGE CONTENT -->
    <div class="page-content">
        <div class="container">
            <!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
            <div class="modal fade" id="portlet-config" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                            <h4 class="modal-title">Modal title</h4>
                        </div>
                        <div class="modal-body">
                            Widget settings form goes here
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn blue">Save changes</button>
                            <button type="button" class="btn default" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
            <!-- BEGIN PAGE BREADCRUMB -->
            <ul class="page-breadcrumb breadcrumb">
                <li>
                    <a href="#">Home</a><i class="fa fa-circle"></i>
                </li>
                <li>
                    <a href="ecommerce_index.html">Features</a>
                    <i class="fa fa-circle"></i>
                </li>
                <li class="active">
                    eCommerce
                </li>
            </ul>
            <!-- END PAGE BREADCRUMB -->
            <!-- BEGIN PAGE CONTENT INNER -->
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 margin-bottom-10">
                    <a class="dashboard-stat dashboard-stat-light blue-madison" href="javascript:;">
                        <div class="visual">
                            <i class="fa fa-briefcase fa-icon-medium"></i>
                        </div>
                        <div class="details">
                            <div class="number">
                                $168,492.54
                            </div>
                            <div class="desc">
                                Lifetime Sales
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                    <a class="dashboard-stat dashboard-stat-light red-intense" href="javascript:;">
                        <div class="visual">
                            <i class="fa fa-shopping-cart"></i>
                        </div>
                        <div class="details">
                            <div class="number">
                                1,127,390
                            </div>
                            <div class="desc">
                                Total Orders
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                    <a class="dashboard-stat dashboard-stat-light green-haze" href="javascript:;">
                        <div class="visual">
                            <i class="fa fa-group fa-icon-medium"></i>
                        </div>
                        <div class="details">
                            <div class="number">
                                $670.54
                            </div>
                            <div class="desc">
                                Average Orders
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <!-- Begin: life time stats -->
                    <div class="portlet light">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="icon-bar-chart font-green-sharp"></i>
                                <span class="caption-subject font-green-sharp bold uppercase">Overview</span>
                                <span class="caption-helper">weekly stats...</span>
                            </div>
                            <div class="tools">
                                <a href="javascript:;" class="collapse">
                                </a>
                                <a href="#portlet-config" data-toggle="modal" class="config">
                                </a>
                                <a href="javascript:;" class="reload">
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
                                            Top Selling </a>
                                    </li>
                                    <li>
                                        <a href="#overview_2" data-toggle="tab">
                                            Most Viewed </a>
                                    </li>
                                    <li>
                                        <a href="#overview_3" data-toggle="tab">
                                            Customers </a>
                                    </li>
                                    <li class="dropdown">
                                        <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
                                            Orders <i class="fa fa-angle-down"></i>
                                        </a>
                                        <ul class="dropdown-menu" role="menu">
                                            <li>
                                                <a href="#overview_4" tabindex="-1" data-toggle="tab">
                                                    Latest 10 Orders </a>
                                            </li>
                                            <li>
                                                <a href="#overview_4" tabindex="-1" data-toggle="tab">
                                                    Pending Orders </a>
                                            </li>
                                            <li>
                                                <a href="#overview_4" tabindex="-1" data-toggle="tab">
                                                    Completed Orders </a>
                                            </li>
                                            <li>
                                                <a href="#overview_4" tabindex="-1" data-toggle="tab">
                                                    Rejected Orders </a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="overview_1">
                                        <div class="table-responsive">
                                            <table class="table table-hover table-light">
                                                <thead>
                                                <tr class="uppercase">
                                                    <th>
                                                        Product Name
                                                    </th>
                                                    <th>
                                                        Price
                                                    </th>
                                                    <th>
                                                        Sold
                                                    </th>
                                                    <th>
                                                    </th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a href="javascript:;">
                                                            Apple iPhone 4s - 16GB - Black </a>
                                                    </td>
                                                    <td>
                                                        $625.50
                                                    </td>
                                                    <td>
                                                        809
                                                    </td>
                                                    <td>
                                                        <a href="javascript:;" class="btn default btn-xs green-stripe">
                                                            View </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="javascript:;">
                                                            Samsung Galaxy S III SGH-I747 - 16GB </a>
                                                    </td>
                                                    <td>
                                                        $915.50
                                                    </td>
                                                    <td>
                                                        6709
                                                    </td>
                                                    <td>
                                                        <a href="javascript:;" class="btn default btn-xs green-stripe">
                                                            View </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="javascript:;">
                                                            Motorola Droid 4 XT894 - 16GB - Black </a>
                                                    </td>
                                                    <td>
                                                        $878.50
                                                    </td>
                                                    <td>
                                                        784
                                                    </td>
                                                    <td>
                                                        <a href="javascript:;" class="btn default btn-xs green-stripe">
                                                            View </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="javascript:;">
                                                            Regatta Luca 3 in 1 Jacket </a>
                                                    </td>
                                                    <td>
                                                        $25.50
                                                    </td>
                                                    <td>
                                                        1245
                                                    </td>
                                                    <td>
                                                        <a href="javascript:;" class="btn default btn-xs green-stripe">
                                                            View </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="javascript:;">
                                                            Samsung Galaxy Note 3 </a>
                                                    </td>
                                                    <td>
                                                        $925.50
                                                    </td>
                                                    <td>
                                                        21245
                                                    </td>
                                                    <td>
                                                        <a href="javascript:;" class="btn default btn-xs green-stripe">
                                                            View </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="javascript:;">
                                                            Inoval Digital Pen </a>
                                                    </td>
                                                    <td>
                                                        $125.50
                                                    </td>
                                                    <td>
                                                        1245
                                                    </td>
                                                    <td>
                                                        <a href="javascript:;" class="btn default btn-xs green-stripe">
                                                            View </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="javascript:;">
                                                            Metronic - Responsive Admin + Frontend Theme </a>
                                                    </td>
                                                    <td>
                                                        $20.00
                                                    </td>
                                                    <td>
                                                        11190
                                                    </td>
                                                    <td>
                                                        <a href="javascript:;" class="btn default btn-xs green-stripe">
                                                            View </a>
                                                    </td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="overview_2">
                                        <div class="table-responsive">
                                            <table class="table table-hover table-light">
                                                <thead>
                                                <tr class="uppercase">
                                                    <th>
                                                        Product Name
                                                    </th>
                                                    <th>
                                                        Price
                                                    </th>
                                                    <th>
                                                        Views
                                                    </th>
                                                    <th>
                                                    </th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a href="javascript:;">
                                                            Metronic - Responsive Admin + Frontend Theme </a>
                                                    </td>
                                                    <td>
                                                        $20.00
                                                    </td>
                                                    <td>
                                                        11190
                                                    </td>
                                                    <td>
                                                        <a href="javascript:;" class="btn default btn-xs green-stripe">
                                                            View </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="javascript:;">
                                                            Regatta Luca 3 in 1 Jacket </a>
                                                    </td>
                                                    <td>
                                                        $25.50
                                                    </td>
                                                    <td>
                                                        1245
                                                    </td>
                                                    <td>
                                                        <a href="javascript:;" class="btn default btn-xs green-stripe">
                                                            View </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="javascript:;">
                                                            Apple iPhone 4s - 16GB - Black </a>
                                                    </td>
                                                    <td>
                                                        $625.50
                                                    </td>
                                                    <td>
                                                        809
                                                    </td>
                                                    <td>
                                                        <a href="javascript:;" class="btn default btn-xs green-stripe">
                                                            View </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="javascript:;">
                                                            Samsung Galaxy S III SGH-I747 - 16GB </a>
                                                    </td>
                                                    <td>
                                                        $915.50
                                                    </td>
                                                    <td>
                                                        6709
                                                    </td>
                                                    <td>
                                                        <a href="javascript:;" class="btn default btn-xs green-stripe">
                                                            View </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="javascript:;">
                                                            Motorola Droid 4 XT894 - 16GB - Black </a>
                                                    </td>
                                                    <td>
                                                        $878.50
                                                    </td>
                                                    <td>
                                                        784
                                                    </td>
                                                    <td>
                                                        <a href="javascript:;" class="btn default btn-xs green-stripe">
                                                            View </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="javascript:;">
                                                            Samsung Galaxy Note 3 </a>
                                                    </td>
                                                    <td>
                                                        $925.50
                                                    </td>
                                                    <td>
                                                        21245
                                                    </td>
                                                    <td>
                                                        <a href="javascript:;" class="btn default btn-xs green-stripe">
                                                            View </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="javascript:;">
                                                            Inoval Digital Pen </a>
                                                    </td>
                                                    <td>
                                                        $125.50
                                                    </td>
                                                    <td>
                                                        1245
                                                    </td>
                                                    <td>
                                                        <a href="javascript:;" class="btn default btn-xs green-stripe">
                                                            View </a>
                                                    </td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="overview_3">
                                        <div class="table-responsive">
                                            <table class="table table-hover table-light">
                                                <thead>
                                                <tr>
                                                    <th>
                                                        Customer Name
                                                    </th>
                                                    <th>
                                                        Total Orders
                                                    </th>
                                                    <th>
                                                        Total Amount
                                                    </th>
                                                    <th>
                                                    </th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a href="javascript:;">
                                                            David Wilson </a>
                                                    </td>
                                                    <td>
                                                        3
                                                    </td>
                                                    <td>
                                                        $625.50
                                                    </td>
                                                    <td>
                                                        <a href="javascript:;" class="btn default btn-xs green-stripe">
                                                            View </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="javascript:;">
                                                            Amanda Nilson </a>
                                                    </td>
                                                    <td>
                                                        4
                                                    </td>
                                                    <td>
                                                        $12625.50
                                                    </td>
                                                    <td>
                                                        <a href="javascript:;" class="btn default btn-xs green-stripe">
                                                            View </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="javascript:;">
                                                            Jhon Doe </a>
                                                    </td>
                                                    <td>
                                                        2
                                                    </td>
                                                    <td>
                                                        $125.00
                                                    </td>
                                                    <td>
                                                        <a href="javascript:;" class="btn default btn-xs green-stripe">
                                                            View </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="javascript:;">
                                                            Bill Chang </a>
                                                    </td>
                                                    <td>
                                                        45
                                                    </td>
                                                    <td>
                                                        $12,125.70
                                                    </td>
                                                    <td>
                                                        <a href="javascript:;" class="btn default btn-xs green-stripe">
                                                            View </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="javascript:;">
                                                            Paul Strong </a>
                                                    </td>
                                                    <td>
                                                        1
                                                    </td>
                                                    <td>
                                                        $890.85
                                                    </td>
                                                    <td>
                                                        <a href="javascript:;" class="btn default btn-xs green-stripe">
                                                            View </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="javascript:;">
                                                            Jane Hilson </a>
                                                    </td>
                                                    <td>
                                                        5
                                                    </td>
                                                    <td>
                                                        $239.85
                                                    </td>
                                                    <td>
                                                        <a href="javascript:;" class="btn default btn-xs green-stripe">
                                                            View </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="javascript:;">
                                                            Patrick Walker </a>
                                                    </td>
                                                    <td>
                                                        2
                                                    </td>
                                                    <td>
                                                        $1239.85
                                                    </td>
                                                    <td>
                                                        <a href="javascript:;" class="btn default btn-xs green-stripe">
                                                            View </a>
                                                    </td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="overview_4">
                                        <div class="table-responsive">
                                            <table class="table table-hover table-light">
                                                <thead>
                                                <tr class="uppercase">
                                                    <th>
                                                        Customer Name
                                                    </th>
                                                    <th>
                                                        Date
                                                    </th>
                                                    <th>
                                                        Amount
                                                    </th>
                                                    <th>
                                                        Status
                                                    </th>
                                                    <th>
                                                    </th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <a href="javascript:;">
                                                            David Wilson </a>
                                                    </td>
                                                    <td>
                                                        3 Jan, 2013
                                                    </td>
                                                    <td>
                                                        $625.50
                                                    </td>
                                                    <td>
													<span class="label label-sm label-warning">
													Pending </span>
                                                    </td>
                                                    <td>
                                                        <a href="javascript:;" class="btn default btn-xs green-stripe">
                                                            View </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="javascript:;">
                                                            Amanda Nilson </a>
                                                    </td>
                                                    <td>
                                                        13 Feb, 2013
                                                    </td>
                                                    <td>
                                                        $12625.50
                                                    </td>
                                                    <td>
													<span class="label label-sm label-warning">
													Pending </span>
                                                    </td>
                                                    <td>
                                                        <a href="javascript:;" class="btn default btn-xs green-stripe">
                                                            View </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="javascript:;">
                                                            Jhon Doe </a>
                                                    </td>
                                                    <td>
                                                        20 Mar, 2013
                                                    </td>
                                                    <td>
                                                        $125.00
                                                    </td>
                                                    <td>
													<span class="label label-sm label-success">
													Success </span>
                                                    </td>
                                                    <td>
                                                        <a href="javascript:;" class="btn default btn-xs green-stripe">
                                                            View </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="javascript:;">
                                                            Bill Chang </a>
                                                    </td>
                                                    <td>
                                                        29 May, 2013
                                                    </td>
                                                    <td>
                                                        $12,125.70
                                                    </td>
                                                    <td>
													<span class="label label-sm label-info">
													In Process </span>
                                                    </td>
                                                    <td>
                                                        <a href="javascript:;" class="btn default btn-xs green-stripe">
                                                            View </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="javascript:;">
                                                            Paul Strong </a>
                                                    </td>
                                                    <td>
                                                        1 Jun, 2013
                                                    </td>
                                                    <td>
                                                        $890.85
                                                    </td>
                                                    <td>
													<span class="label label-sm label-success">
													Success </span>
                                                    </td>
                                                    <td>
                                                        <a href="javascript:;" class="btn default btn-xs green-stripe">
                                                            View </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="javascript:;">
                                                            Jane Hilson </a>
                                                    </td>
                                                    <td>
                                                        5 Aug, 2013
                                                    </td>
                                                    <td>
                                                        $239.85
                                                    </td>
                                                    <td>
													<span class="label label-sm label-danger">
													Canceled </span>
                                                    </td>
                                                    <td>
                                                        <a href="javascript:;" class="btn default btn-xs green-stripe">
                                                            View </a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="javascript:;">
                                                            Patrick Walker </a>
                                                    </td>
                                                    <td>
                                                        6 Aug, 2013
                                                    </td>
                                                    <td>
                                                        $1239.85
                                                    </td>
                                                    <td>
													<span class="label label-sm label-success">
													Success </span>
                                                    </td>
                                                    <td>
                                                        <a href="javascript:;" class="btn default btn-xs green-stripe">
                                                            View </a>
                                                    </td>
                                                </tr>
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
                <div class="col-md-6">
                    <!-- Begin: life time stats -->
                    <div class="portlet light">
                        <div class="portlet-title tabbable-line">
                            <div class="caption">
                                <i class="icon-share font-red-sunglo"></i>
                                <span class="caption-subject font-red-sunglo bold uppercase">Revenue</span>
                                <span class="caption-helper">weekly stats...</span>
                            </div>
                            <ul class="nav nav-tabs">
                                <li>
                                    <a href="#portlet_tab2" data-toggle="tab" id="statistics_amounts_tab">
                                        Amounts </a>
                                </li>
                                <li class="active">
                                    <a href="#portlet_tab1" data-toggle="tab">
                                        Orders </a>
                                </li>
                            </ul>
                        </div>
                        <div class="portlet-body">
                            <div class="tab-content">
                                <div class="tab-pane active" id="portlet_tab1">
                                    <div id="statistics_1" class="chart">
                                    </div>
                                </div>
                                <div class="tab-pane" id="portlet_tab2">
                                    <div id="statistics_2" class="chart">
                                    </div>
                                </div>
                            </div>
                            <div class="margin-top-20 no-margin no-border">
                                <div class="row">
                                    <div class="col-md-3 col-sm-3 col-xs-6 text-stat">
										<span class="label label-success uppercase">
										Revenue: </span>
                                        <h3>$1,234,112.20</h3>
                                    </div>
                                    <div class="col-md-3 col-sm-3 col-xs-6 text-stat">
										<span class="label label-info uppercase">
										Tax: </span>
                                        <h3>$134,90.10</h3>
                                    </div>
                                    <div class="col-md-3 col-sm-3 col-xs-6 text-stat">
										<span class="label label-danger uppercase">
										Shipment: </span>
                                        <h3>$1,134,90.10</h3>
                                    </div>
                                    <div class="col-md-3 col-sm-3 col-xs-6 text-stat">
										<span class="label label-warning uppercase">
										Orders: </span>
                                        <h3>235090</h3>
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
<!-- BEGIN PRE-FOOTER -->
<div class="page-prefooter">
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-6 col-xs-12 footer-block">
                <h2>About</h2>
                <p>
                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam dolore.
                </p>
            </div>
            <div class="col-md-3 col-sm-6 col-xs12 footer-block">
                <h2>Subscribe Email</h2>
                <div class="subscribe-form">
                    <form action="javascript:;">
                        <div class="input-group">
                            <input type="text" placeholder="mail@email.com" class="form-control">
							<span class="input-group-btn">
							<button class="btn" type="submit">Submit</button>
							</span>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12 footer-block">
                <h2>Follow Us On</h2>
                <ul class="social-icons">
                    <li>
                        <a href="javascript:;" data-original-title="rss" class="rss"></a>
                    </li>
                    <li>
                        <a href="javascript:;" data-original-title="facebook" class="facebook"></a>
                    </li>
                    <li>
                        <a href="javascript:;" data-original-title="twitter" class="twitter"></a>
                    </li>
                    <li>
                        <a href="javascript:;" data-original-title="googleplus" class="googleplus"></a>
                    </li>
                    <li>
                        <a href="javascript:;" data-original-title="linkedin" class="linkedin"></a>
                    </li>
                    <li>
                        <a href="javascript:;" data-original-title="youtube" class="youtube"></a>
                    </li>
                    <li>
                        <a href="javascript:;" data-original-title="vimeo" class="vimeo"></a>
                    </li>
                </ul>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12 footer-block">
                <h2>Contacts</h2>
                <address class="margin-bottom-40">
                    Phone: 800 123 3456<br>
                    Email: <a href="mailto:info@metronic.com">info@metronic.com</a>
                </address>
            </div>
        </div>
    </div>
</div>
<!-- END PRE-FOOTER -->
<!-- BEGIN FOOTER -->
<div class="page-footer">
    <div class="container">
        2014 &copy; Metronic by keenthemes. <a
            href="http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes"
            title="Purchase Metronic just for 27$ and get lifetime updates for free" target="_blank">Purchase
        Metronic!</a>
    </div>
</div>
<div class="scroll-to-top">
    <i class="icon-arrow-up"></i>
</div>
</body>
</html>
