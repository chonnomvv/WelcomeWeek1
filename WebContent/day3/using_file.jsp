<%@page import="java.util.List"%>
<%@page import="kr.co.bit.day3.Student"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.File" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>파일 이용</title>
</head>
<body>
<%
	String path = application.getRealPath("WEB-INF/file/Abc1115.txt");
	File file = new File(path);
	
	Reader fr = new FileReader("D:\\dev\\workspace\\WelcomeWeek1\\WebContent\\WEB-INF\\file\\Abc1115.txt");
	BufferedReader br = new BufferedReader(fr);
	Student student = new Student();
	String loading;
	List<Student> list = new ArrayList<Student>();
	while(br.readLine()!=null){
		loading = br.readLine();
		list.add(loading);
		
	}
	
	
	br.close();
%>

</body>
</html>