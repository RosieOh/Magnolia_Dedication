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
	<title>자유 게시판 글쓰기</title>
	<!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp"></jsp:include>
	<!-- <script src="https://cdn.ckeditor.com/4.20.0/standard/ckeditor.js"></script> -->
	<script type="text/javascript" src="${path1 }/resources/ckeditor/ckeditor.js"></script>
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
	      <h2 class="h1">자유게시판 글쓰기</h2>
	      <hr>
	      <div class="container">
	      	<form action="${path1 }/free/insert.do" method="post">
			      <table id="table1">
			      	<tbody>
			      		<tr>
			      			<th style="background-color:#dcdcdc">글 제목</th>
			      			<td>
			      				<input type="text" name="title" id="title" class="input" placeholder="제목 입력" maxlength="98" required>
			      			</td>
			      		</tr>
			      		<tr>
			      			<th style="background-color:#dcdcdc">글 내용</th>
			      			<td>
			      				<textarea name="content" id="content" class="textarea" placeholder="내용 입력" rows="8" cols="100" maxlength="1400" required></textarea>
			      				<script>
			      				CKEDITOR.replace('content',	{filebrowserUploadUrl:'${path1}/free/imageUpload.do'});
			      				</script>
			      			</td>
			      		</tr>
			      		<tr>
			      			<td colspan="2">
			      				<input type="submit" class="submit button is-info" value="글 등록" >
			      				<a class="button is-primary" href="${path1 }/free/list.do">글 목록</a>
			      			</td>
			      		</tr>
			      	</tbody>
			      </table>
			   </form>   
	      </div>
	    </div>
	</div>
</div>
<!-- 푸터 부분 인클루드 -->
<jsp:include page="../include/ft.jsp"></jsp:include>
</body>
</html>