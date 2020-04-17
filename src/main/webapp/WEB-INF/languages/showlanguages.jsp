<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/indexstyle.css">
		<title>Languages</title>
	</head>
	<body>
		<div class="container">
			<a href="/languages" class="btn">Dashboard</a>
			<h1><c:out value="${language.name}"/></h1>
			<p>Creator: <c:out value="${language.creator}"/></p>
			<p>Version: <c:out value="${language.version}"/></p>
			<p class="line">_______________________________________</p>
			<a href="/languages/${language.id}/edit">Edit</a>
			<form action="/languages/${language.id}" method="post">
			    <input type="hidden" name="_method" value="delete">
			    <input class="btn" id="deletebtn" type="submit" value="Delete">
			</form>
		</div>
	</body>
</html>