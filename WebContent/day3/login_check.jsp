<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("user");
	String pw = request.getParameter("pw");
	boolean flag = false;
	
	if(id.equals("admin")&&pw.equals("1234")){
		flag = true;
	}
	if(flag){
		out.print("반갑습니다.");
		session.setAttribute("member", id);
		
	}
	else{
		response.sendRedirect("login.jsp?code=0");

	}
%>
<br>

</body>
</html>