<%@ page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Word Service</title>
</head>
<body>
	<h1>
		<!-- 주석은 이렇게 다는 거란다. HeadLine -->
		<%
			// 스크립트릿
			//	격언 5개를 만들어서 접속하는 클라이언트에게 하나를 선택해서 보여주는 코드 작성
			int number = (int) (Math.random() * 5) + 1;
			String proverb[] = { "시간은 금이라고 친구. - 어느 고블린 상인", "록  타오가르 ", "얼라이언스를 위하여!", "우리는 노예가 되지 않는다! - 가로시 헬스크림",
					" 화이팅" };

			Random r = new Random();
			int index = r.nextInt(proverb.length);

			out.print(proverb[index]);

			switch (number) {
			case 1:
				out.print(proverb[0]);
				break;
			case 2:
				out.print(proverb[1]);
				break;
			case 3:
				out.print(proverb[2]);
				break;
			case 4:
				out.print(proverb[3]);
				break;
			case 5:
				out.print(proverb[4]);
				break;
			}
		%>
	</h1>

</body>
</html>