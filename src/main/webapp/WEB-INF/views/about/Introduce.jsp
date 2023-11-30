<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.servletContext.contextPath }" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <!-- mobile responsive meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>티스푼 메인 페이지</title>
    <jsp:include page="../include/head.jsp" />
</head>
<body>
<jsp:include page="../include/hd.jsp"/>
<!-- Slider Start -->
<section class="banner is-flex is-align-items-center">
    <div class="banner-img-part"></div>
    <div class="container">
        <div class="columns">
            <div class="column is-8-widescreen is-10-desktop">
                <div class="block">
                    <span class="is-uppercase text-sm letter-spacing ">The most powerful Solution</span>
                    <h1 class="my-4">Digital experience with Orbitor</h1>
                    <p class="mb-6">Veritatis earum aliquid doloribus molestias, eveniet molestiae aperiam ratione. Facilis velit voluptatibus impedit eligendi delectus illo earum voluptatum, laudantium molestiae!</p>

                    <a href="about.html" target="_blank" class="btn btn-main">Learn more about Digicon<i class="fa fa-angle-right ml-2"></i></a>

                </div>
            </div>
        </div>
    </div>
</section>


<!-- footer Start -->
<jsp:include page="../include/ft.jsp"/>
</body>
</html>