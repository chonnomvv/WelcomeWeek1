<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	String id = "admin";
	String pw = "1234";
	String welcome = null;
%>

<%
	String id = request.getParameter("user");
	String pw = request.getParameter("pw");
	
	if(id.equals("admin")&&pw.equals("1234")){
		welcome = "반갑습니다.";
	} else{
		welcome = "there is no one";
		response.sendRedirect("login.jsp?welcome=" +0);
	}
%>
<br><%=welcome%>

</body>
</html>