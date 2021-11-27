<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
		if(request.isUserInRole("admin")){
			response.sendRedirect("admin_success.jsp");
		}
	%>
</body>
</html>