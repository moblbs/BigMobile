<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                       
                        <!-- <li>
                            <a href="#"><i class="fa fa-user fa-fw"></i>账户管理<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="user.do?method=toChangePasswordPage">修改密码</a>
                                </li>
                                <li>
                                    <a href="user.do?method=toUpdateProfilePage">信息维护</a>
                                </li>
                            </ul>
                            /.nav-second-level
                        </li> -->
                        
                        <li>
                            <a href="#"><i class="fa fa-user fa-fw"></i>基础用户<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <!-- <li>
                                    <a href="mobileUser.do?method=toMobile">手机用户</a>
                                </li> -->
                            	<li>
                                    <a href="mobileUser.do?method=toMobileUsers">手机用户</a>
                                </li>
                                <li>
                                    <a href="mobileUser.do?method=toBank">银行用户</a>
                                </li>
                                <li>
                                    <a href="mobileUser.do?method=toCar">车主用户</a>
                                </li>
                                <li>
                                    <a href="mobileUser.do?method=toEnterprise">企业家</a>
                                </li>
                                <li>
                                    <a href="mobileUser.do?method=toFlight">飞行乘客</a>
                                </li>
                                <li>
                                    <a href="mobileUser.do?method=toInsurance">保险用户</a>
                                </li>
                                <li>
                                    <a href="mobileUser.do?method=toResume">简历用户</a>
                                </li>
                                <li>
                                    <a href="mobileUser.do?method=toSocialSecurity">社保账户</a>
                                </li>
                                <li>
                                    <a href="mobileUser.do?method=toStock">股市账户</a>
                                </li>
                            	<li>
                                    <a href="mobileUser.do?method=toMobileUsersQuery">用户筛选</a>
                                </li>
                            	<li>
                                    <a href="mobileUser.do?method=toUserStat">用户统计</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        
                        <li>
                            <a href="#"><i class="fa fa-user fa-fw"></i>标签用户<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                            	<li>
                                    <a href="mobileUser.do?method=toMobileUsersByLabel">用户列表</a>
                                </li>
                            	<li>
                                    <a href="mobileUser.do?method=toMobileUsersQueryByLabel">用户筛选</a>
                                </li>
                            	<li>
                                    <a href="mobileUser.do?method=toUserStat">用户统计</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        
                        <li>
                            <a href="#"><i class="fa fa-gear fa-fw"></i>属性配置<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="config.do?method=loadLocation">位置管理</a>
                                </li>
                                <li>
                                    <a href="config.do?method=loadLabel">标签管理</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        
                        <li>
                            <a href="#"><i class="fa fa-flag fa-fw"></i>策略制定<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="#">样本筛选</a>
                                </li>
                                <li>
                                    <a href="#">样本分析</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        
                        <li>
                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>效果分析<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="mobileUser.do?method=toUserAccess">上网情况</a>
                                </li>
                                <li>
                                    <a href="mobileUser.do?method=toAccessStatBySite">网点统计</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        
                        
                        
                        
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->