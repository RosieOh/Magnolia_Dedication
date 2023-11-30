<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path0" value="${pageContext.servletContext.contextPath }" />
<!-- 헤더 내용 기술 -->
<div id="navbar" class="navigation py-4">
    <div class="container">
        <nav class="navbar">
            <div class="navbar-brand">
                <a class="navbar-item" href="index.html">
                    <img src="images/logo.png" alt="logo">
                </a>
                <button role="button" class="navbar-burger burger" data-hidden="true" data-target="navigation">
                    <span aria-hidden="true"></span>
                    <span aria-hidden="true"></span>
                    <span aria-hidden="true"></span>
                </button>
            </div>

            <div class="navbar-menu" id="navigation" style="padding-left: 100px;">
                <ul class="navbar-start ml-auto">
                    <li class="navbar-item">
                        <a class="navbar-link" href="index.html">Home</a>
                    </li>

                    <li class="navbar-item">
                        <a class="navbar-link" href="about.html">About</a>
                    </li>

                    <li class="navbar-item">
                        <a class="navbar-link" href="project.html">Portfolio</a>
                    </li>

                    <li class="navbar-item has-dropdown">
                        <a class="navbar-link">Pages</a>
                        <div class="navbar-dropdown">
                            <a class="navbar-item" href="service.html">Service</a>
                            <a class="navbar-item" href="pricing.html">Pricing</a>
                            <a class="navbar-item" href="blog-sidebar.html">Blog with sidebar</a>
                            <a class="navbar-item" href="blog-single.html">Blog Single</a>
                        </div>
                    </li>

                    <li class="navbar-item">
                        <a class="navbar-link" href="${path0}/contact.do">Contact</a>
                    </li>
                </ul>
            </div>
                <div class="navbar-item">
                    <div class="buttons">
                        <c:if test="${!empty sid}">
                            <a href="${path1}/member/mypage.do" class="button is-primary">
                                <strong>MyPage</strong>
                            </a>
                            <a href="${path1}/member/logout.do" class="button is-light">
                                LogOut
                            </a>
                        </c:if>
                        <c:if test="${empty sid}">
                            <a href="${path1}/member/term.do" class="button is-primary">
                                <strong>Sign up</strong>
                            </a>
                            <a href="${path1}/member/login.do" class="button is-light">
                                Log in
                            </a>
                        </c:if>
                        <c:if test="${sid.equals('admin')}">
                            <a href="${path1}/member/list.do" class="button is-light">
                                MemberList
                            </a>
                        </c:if>
                    </div>
                </div>
        </nav>
    </div>
</div>