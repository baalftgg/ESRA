<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>공지사항 조회</title>
</head>
<body>
	<div id="nav">
		<%@ include file="../notice/nav.jsp" %>
	</div>
			<label>제목</label>
			${detail.title}<br>
			
			<label>작성자</label>
			${detail.writer}<br>
			
			<label>내용</label><br>
			${detail.content}<br>
			
			<div>
			<a href="update_form?no=${detail.no}">수정</a>
			<a id="del_link" href="delete_action?no=${detail.no}">삭제</a>
			</div>
</body>
</html>