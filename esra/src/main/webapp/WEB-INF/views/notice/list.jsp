<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>공지사항</title>
</head>
<body>
	<div id="nav">
		<%@ include file="../notice/nav.jsp" %>
	</div>
	<table>
		<thead>
			<tr>
				<th>번 호</th>
				<th>제 목</th>
				<th>작성일</th>
				<th>작성자</th>
				<th>조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${notice_list}" var="list">
				<tr>
					<td>${list.no}</td>
					<td><a href="detail?no=${list.no}">${list.title}</a></td>
					<td>
						<fmt:formatDate value="${list.regdate}" pattern="yyyy-MM-dd" />
					</td>
					<td>${list.writer}</td>
					<td>${list.viewCnt}</td>
				</tr>
			</c:forEach> 
		</tbody>
	</table>

</body>
</html>