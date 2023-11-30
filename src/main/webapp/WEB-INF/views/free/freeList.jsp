<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="${pageContext.servletContext.contextPath }"  />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>자유게시판 목록</title>
    <!-- 헤드 부분 인클루드 -->
	<jsp:include page="../include/head.jsp" />
	<style>
		.title { padding-top:36px; padding-bottom:20px; }
		.agree_fr { width: 900px; white-space:pre-wrap; margin: 10px auto;
			padding: 24px; border:2px solid #eee; height:600px; overflow-y:auto; }
	</style>
</head>
<body>
<div class="container" style="padding-bottom: 100px;">
	<jsp:include page="../include/hd.jsp"/>
</div>
<nav class="breadcrumb has-succeeds-separator is-medium is-right mt-3 p-4" style="background: #f1f4f9" aria-label="breadcrumbs">
	<ul class="mr-5">
		<li><a href="${path1}"><i class="xi-home is-size-3"></i></a></li>
		<li><a>커뮤니티</a></li>
		<li><a href="${path1}/faq/list.do">자주 묻는 질문</a></li>
	</ul>
	<p class="title has-text-centered mt-1 mb-2">자주 묻는 질문</p>
</nav>
<div class="container is-fullhd">
	<div class="content" id="contents">
	    <div class="row column text-center">
	      <h2 class="h1">자유게시판 목록</h2>
	      <hr>
	      <div class="container">
		      <table>
		      	<thead>
		      		<tr>
		      			<th>No</th>
		      			<th>Title</th>
		      			<th>RegDate</th>
		      			<th>Visited</th>
		      		</tr>
		      	</thead>
		      	<tbody>
				<c:if test="${not empty freeList }">
		      	<c:forEach items="${freeList }" var="free" varStatus="status">
		      		<tr>
		      			<td>${status.count }</td>
		      			<td><a href="${path1}/free/detail.do?bno=${free.bno }">${free.title }</a></td>
		      			<td>
	      					<fmt:parseDate value="${free.regdate }" var="resdate" pattern="yyyy-MM-dd HH:mm:ss" />
	      					<fmt:formatDate value="${resdate }" pattern="yyyy-MM-dd" />
		      			</td>
		      			<td>${free.visited }</td>
		      		</tr>
		      	</c:forEach>
				</c:if>
				<c:if test="${empty freeList }">
					<tr>
						<td colspan="4">자유게시판에 글이 존재하지 않습니다.</td>
					</tr>
				</c:if>
		      	</tbody>
		      </table>
			      	    <%-- <c:if test='${sid eq "admin"}'>  --%> 
		      	<div class="button-group">
				  <a class="button is-info" href="${path1 }/free/insert.do">글쓰기</a>
				</div>
			<%-- </c:if> --%>
	      </div>

	    </div>
	</div>
</div>
<!-- 푸터 부분 인클루드 -->
<jsp:include page="../include/ft.jsp" />
</body>
</html>