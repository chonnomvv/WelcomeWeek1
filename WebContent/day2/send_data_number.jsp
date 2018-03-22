<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>계산기</title>
<style type="text/css">
input {
	text-align: center;
	color: red;
}

submit {
	color: red;
}

#result {
	color: blue;
}
</style>
</head>
<body>
	<%
		String result = request.getParameter("result");
		String calc = "";
		String num1 = "";
		String num2 = "";

		if (result == null) {
			result = "";
		} else {
			calc = request.getParameter("calc");
			num1 = request.getParameter("num1");
			num2 = request.getParameter("num2");
		}
	%>

	<form action="calc.jsp">
		<input type="text" name="number1" value="<%=num1%>"> <input
			type="text" name="calc" value="<%=calc%>"> <input type="text"
			name="number2" value="<%=num2%>"> <input type="text"
			name="result" value=<%=result%> id="result"> <input
			type="submit" value="계산">
	</form>

</body>
</html>