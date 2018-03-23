<%@page import="java.util.Arrays"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Calendar</title>

<style type="text/css">
.sunday {
	color: red;
}

.saturday {
	color: blue;
}

.row {valign = top;
	
}

table {
	width: 200px;
	border-collapse: collapse;
	border: 1px solid black;
	text-align: center;
}

td {
	border: 1px solid black;
}
</style>

</head>
<body>

	<%
		int year = Integer.parseInt(request.getParameter("year"));
		int month = Integer.parseInt(request.getParameter("month"));
		Calendar calendar = Calendar.getInstance();
		calendar.set(year, month - 1, 1);

		int day = 1;
		int lastDay = calendar.getActualMaximum(Calendar.DAY_OF_MONTH);
		int space = calendar.get(Calendar.DAY_OF_WEEK) - 1;
		String[] cal_days = new String[42];
		Arrays.fill(cal_days, "");

		for (int i = space; i < lastDay + space; i++) {
			cal_days[i] = String.valueOf(day++);
		}
	%>
	<br>
	<table>
		<tr>
			<td align="center" colspan="7"><%=year%>년 <%=month%>월</td>
		</tr>
		<tr align="center">
			<td class="sunday">일</td>
			<td>월</td>
			<td>화</td>
			<td>수</td>
			<td>목</td>
			<td>금</td>
			<td class="saturday">토</td>
		</tr>
		<%for(int i= 0; i <cal_days.length ; i +=7){
		if(cal_days[35].equals("")&&i>28)
				break;
				%>
		<tr height="50" class="row">
			<td class="sunday"><%=cal_days[i]%></td>
			<td><%=cal_days[i+1]%></td>
			<td><%=cal_days[i+2]%></td>
			<td><%=cal_days[i+3]%></td>
			<td><%=cal_days[i+4]%></td>
			<td><%=cal_days[i+5]%></td>
			<td class="saturday"><%=cal_days[i+6]%></td>
			<%}
			%>
		</tr>




	</table>
</body>
</html>