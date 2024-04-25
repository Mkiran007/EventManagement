<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.murali.mtie.adminDao" %>
<jsp:useBean id="u" class="com.murali.mtie.admin"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=adminDao.save(u);
if(i>0){
	response.sendRedirect("adminviewevent.jsp");
}else{
	response.sendRedirect("Event_Error.jsp");
}
%>

</body>
</html>