<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 작성</title>
</head>
<body>

	<div id="nav">
		<%@ include file="../notice/nav.jsp" %>
	</div>
	<form action="insert_action" method="post">
	
	<label>제목</label>
	<input type="text" name="title" /><br>
	
	<label>작성자</label>
	<input type="text" name="writer" /><br>
	
	<label>내용</label>
	<textarea cols="50" rows="5" name="content"></textarea><br>
	
	<button type="submit">작성</button>
	
	</form>

</body>
</html>