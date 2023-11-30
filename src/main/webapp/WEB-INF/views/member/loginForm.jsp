<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.servletContext.contextPath}" />

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp"></jsp:include>
</head>

<body>
<c:if test="${!empty msg}">
    <script>
        alert("로그인 실패");
        document.loginForm.userid.focus();
    </script>
</c:if>

<form action="${path1}/member/loginpro.do" method="post" name="loginForm">
    <section class="hero is-primary is-fullheight" style="background: linear-gradient(to right, #71AEE8, #77E9CE);">
        <div class="hero-body">
            <div class="container">
                <div class="columns is-centered">
                    <div class="column is-5-tablet is-4-desktop is-3-widescreen">
                        <form action="" class="box">
                            <div class="field">
                                <label for="id">아이디</label>
                                <div class="control has-icons-left">
                                    <input type="text" name="id" id="id1" size="100" class="input" placeholder="아이디 입력" required>
                                    <span class="icon is-small is-left">
                                        <i class="fa fa-envelope"></i>
                                    </span>
                                </div>
                            </div>
                            <div class="field">
                                <label for="pw">비밀번호</label>
                                <div class="control has-icons-left">
                                    <input type="password" name="pw" id="pw1" class="input" placeholder="비밀번호 입력" required>
                                    <span class="icon is-small is-left">
                                        <i class="fa fa-lock"></i>
                                    </span>
                                </div>
                            </div>
                            <div class="field has-text-centered">
                                <div class="buttons">
                                    <input type="submit" class="button is-primary" value="로그인">
                                    <input type="reset" class="button" value="취소">
                                    <button type="submit" class="button is-success">
                                        <a href="${path1}/member/term.do">회원가입</a>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
</form>

<script>
    function loginFaiure() {
        alert("로그인 실패");
    }
</script>
</body>

</html>
