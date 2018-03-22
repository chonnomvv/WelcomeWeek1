<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>계산기 결과창</title>
</head>
<body>
	<%
		double number1 = Double.parseDouble(request.getParameter("number1"));
		double number2 = Double.parseDouble(request.getParameter("number2"));
		String calc = request.getParameter("calc");
		double result = 0;
		if(calc.equals("+")){
			result = number1+number2;
			response.sendRedirect("send_data_number.jsp?result=" +result + "&num1="+number1+"&num2="+number2+"&calc="+calc);
			
		out.print(number1 + " + " + number2 + "=" + (number1 + number2));
		}
		else if(calc.equals("-")){
			result = number1-number2;
			response.sendRedirect("send_data_number.jsp?result=" +result + "&num1="+number1+"&num2="+number2+"&calc="+calc);
		}
		else if(calc.equals("*")||calc.equals("x")){
			result = number1*number2;
			response.sendRedirect("send_data_number.jsp?result=" +result + "&num1="+number1+"&num2="+number2+"&calc="+calc);
		}
		else if(calc.equals("/")||calc.equals("%")){
			result = number1 / number2;
			String r2 = String.format("%.2f",result);
			response.sendRedirect("send_data_number.jsp?result=" +r2 + "&num1="+number1+"&num2="+number2+"&calc="+calc);
		}
	%>
</body>
</html>