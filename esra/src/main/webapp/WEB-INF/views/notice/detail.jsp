<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>공지사항 조회</title>
	</head>
	<body>
			<label>제목</label>
			${detail.title}<br>
			
			<label>작성자</label>
			${detail.writer}<br>
			
			<label>내용</label><br>
			${detail.content}<br>
	</body>
</html>