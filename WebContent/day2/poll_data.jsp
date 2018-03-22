<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>결과</title>
</head>
<body>
	<%!
	int[] votes = null;
	int count = 0;
	double[] rate  = null;

	public void jspInit() {
		votes = new int[5];
		rate = new double[5];
		System.out.println("jsp instance create");

	}

	public void jspDestroy() {
		System.out.println("jsp instance destroy");
		System.out.println("resource free");
	}
	%>
	<%
		String r1 = request.getParameter("r1");
		if (r1.equals("Red")) {
			votes[0]++;
		} else if (r1.equals("Twice")) {
			votes[1]++;
		} else if (r1.equals("BIG BANG")) {
			votes[2]++;
		} else if (r1.equals("WANNAONE")) {
			votes[3]++;
		} else if (r1.equals("BTS")) {
			votes[4]++;
		}		
		count++;
		for(int i = 0; i < 5; i ++ ){
			rate[i] = votes[i] / count * 100;
			System.out.print(votes[i] + "\t");	
		}
		System.out.println("");
		System.out.println(count+"\t" +"\t");
		for(int i = 0; i <5; i++){
			System.out.print(votes[i]);
		}
		
		
		
	%>
	<table>
		<tr>
			<td>Q1.</td>
			<td>아이돌 그룹 득표수</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>1.</td>
			<td>레드벨벳</td>
			<td><%=votes[0]%></td>
			<td><%=rate[0]%></td>
		</tr>
		<tr>
			<td>2.</td>
			<td>트와이스</td>
			<td><%=votes[1]%></td>
			<td><%=rate[1]%></td>
		</tr>
		<tr>
			<td>3.</td>
			<td>BIG BANG</td>
			<td><%=votes[2]%></td>
			<td><%=rate[2]%></td>
		</tr>
		<tr>
			<td>4.</td>
			<td>WANNAONE</td>
			<td><%=votes[3]%></td>
			<td><%=rate[3]%></td>
		</tr>
		<tr>
			<td>5.</td>
			<td>BTS</td>
			<td><%=votes[4]%></td>
			<td><%=rate[4]%></td>
		</tr>

	</table>


</body>
</html>