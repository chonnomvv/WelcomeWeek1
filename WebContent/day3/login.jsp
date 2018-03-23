<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 페이지</title>
</head>
<body>
	<%
		String welcome1 = request.getParameter("code");
	if(welcome1 == null){
		welcome1="";
	} else{
		welcome1 = welcome1.equals("0")?"no one.":"";
	}
	%>
<form action = "login_check.jsp"> 	
아이디: <input type="text" name = "user" value = "">
비밀번호: <input type="password" name = "pw" value = "">
<input type ="submit" value = "로그인">

<%=welcome1%>

</form>



</body>
</html>