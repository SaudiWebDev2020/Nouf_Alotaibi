<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<meta charset="windows-1256">
<title>Insert title here</title>
</head>
<body>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	<h1>New Book</h1>
	<form:form action="/books" method="post" modelAttribute="book">
		<p>
			<form:label path="title">Title</form:label>
			<form:errors path="title" />
			<form:input path="title" />
		</p>
		<p>
			<form:label path="description">Description</form:label>
			<form:errors path="description" />
			<form:textarea path="description" />
		</p>
		<p>
			<form:label path="language">Language</form:label>
			<form:errors path="language" />
			<form:input path="language" />
		</p>
		<p>
			<form:label path="numberOfPages">Pages</form:label>
			<form:errors path="numberOfPages" />
			<form:input type="number" path="numberOfPages" />
		</p>
		<input type="submit" value="Submit" />
	</form:form>
</body>
</html>