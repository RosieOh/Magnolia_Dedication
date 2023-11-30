<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.servletContext.contextPath }"  />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>공지사항 목록</title>
    <!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp"></jsp:include>
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
	<div class="content" id="content">
	    <div class="row column text-center">
	      <hr>
	      <div class="container">
		      <table>
		      	<thead>
		      		<tr>
		      			<th width="80">No</th>
		      			<th>Title</th>
		      			<th width="120">RegDate</th>
						<th width="120">nickname</th>
		      			<th width="100">Visited</th>
		      		</tr>
		      	</thead>
		      	<tbody>
		      	<c:forEach items="${boardList }" var="board" varStatus="status">
		      		<tr>
		      			<td>${status.count }</td>
		      			<td><a href="${path1}/board/detail.do?seq=${board.seq }">${board.title }</a></td>
		      			<td>
	      					<fmt:parseDate value="${board.regdate }" var="resdate" pattern="yyyy-MM-dd HH:mm:ss" />
	      					<fmt:formatDate value="${resdate }" pattern="yyyy-MM-dd" />
		      			</td>
						<td>${board.nickname}</td>
		      			<td>${board.visited }</td>
		      		</tr>
		      	</c:forEach>	
		      	</tbody>
		      </table>
			      	    <%-- <c:if test='${sid eq "admin"}'>  --%> 
		      	<div class="button-group">
				  <a class="button" href="${path1 }/board/insert.do">글쓰기</a>
				</div>
			<%-- </c:if> --%>
	      </div>

	    </div>
	</div>
</div>
<!-- 푸터 부분 인클루드 -->
<jsp:include page="../include/ft.jsp"></jsp:include>
</body>
</html>