<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.bhargavi.contactus.coontactususerDao" %>
<jsp:useBean id="u" class="com.bhargavi.contactus.contactususer"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
int i=coontactususerDao.save(u);
if(i>0){
	response.sendRedirect("userviewevents.jsp");
}else{
	response.sendRedirect("error.jsp");
}
%>

</body>
</html>