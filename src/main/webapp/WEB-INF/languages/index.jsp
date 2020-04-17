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
			<h1>Languages</h1>
			<table>
				<thead>
					<tr>
						<th>Name</th>
						<th>Creator</th>
						<th>Version</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${languages}" var="language">
					<tr>
						<td><a href="/languages/${language.id}"><c:out value="${language.name}"/></a></td>
						<td><c:out value="${language.creator}"/></td>
						<td><c:out value="${language.version}"/></td>
						<td class="action">			
							<form action="/languages/${language.id}" method="post">
						    <input type="hidden" name="_method" value="delete">
						    <input class="btn" type="submit" value="Delete">
							</form> <a href="languages/${language.id}/edit" class="edit">Edit</a>
						</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		
		<div class="container">
			<h1>New Language</h1>
			<form:form action="/languages" method="post" modelAttribute="language">
			    <p>
			        <form:label class="label" path="name">Name</form:label>
			        <form:errors class="errormsg" path="name"/>
			        <form:input class="input" path="name"/>
			    </p>
			    <p>
			        <form:label class="label" path="creator">Creator</form:label>
			        <form:errors class="errormsg" path="creator"/>
			        <form:input class="input" path="creator"/>
			    </p>
			    <p>
			        <form:label class="label" path="version">Version</form:label>
			        <form:errors class="errormsg" path="version"/>
			        <form:input class="input" path="version"/>
			    </p>
			    <input type="submit" value="Submit" class="submitbtn"/>
			</form:form>    
		</div>
	</body>
</html>