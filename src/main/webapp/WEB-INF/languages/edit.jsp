<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page isErrorPage="true" %>   

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/indexstyle.css">
		<title>Languages</title>

	</head>
	<body>
		<div class="container">
			<form action="/languages/${language.id}" method="post">
			    <input type="hidden" name="_method" value="delete">
			    <input class="btn" id="deletebtn" type="submit" value="Delete">
			</form>
			<a href="/languages" class="btn">Dashboard</a>
			<h1>Edit Language</h1>
			<form:form action="/languages/${language.id}" method="put" modelAttribute="language">
			    <input type="hidden" name="_method" value="put">
			    <p>
			        <form:label class="label" path="name">Name</form:label>
			        <form:errors class="errormsg" path="name"/>
			        <form:input class="input" path="name"/>
			    </p>
			    <p>
			        <form:label class="label" path="creator">Creator</form:label>
			        <form:errors class="errormsg" path="creator"/>
			        <form:textarea class="input" path="creator"/>
			    </p>
			    <p>
			        <form:label class="label" path="version">Version</form:label>
			        <form:errors class="errormsg" path="version"/>
			        <form:input class="input" path="version"/>
			    </p>
			    <input class="submitbtn" type="submit" value="Submit"/>
			</form:form> 
		</div>
	</body>
</html>