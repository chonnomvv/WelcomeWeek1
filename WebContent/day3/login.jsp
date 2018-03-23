<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 페이지</title>
</head>
<body>
<!-- 아이디와 패스워드를 입력 할 수 있는 UI를 구성 
	가. 처리페이지는 login_check.jsp
	나. 성공했을 경우 '반갑습니다' 라는 문자열을 브라우저에 출력
	다. 실패했을 경우 입력페이지로 이동해서 '해당하는 회원 없습니다'라는 문자열 출력
	-->
	<%
		String welcome1 = request.getParameter("welcome");
	if(welcome1 == null){
		welcome1="";
	} else{
		welcome1 = welcome1.equals("0")?"해당하는 회원이 없습니다.":"";
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