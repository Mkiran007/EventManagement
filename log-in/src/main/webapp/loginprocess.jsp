<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.login.bean.LoginDao"%>  
<jsp:useBean id="obj" class="com.login.bean.LoginBean"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
boolean status=LoginDao.validate(obj);  
if(status){  
response.sendRedirect("validate.jsp"); 
}  
else  
{  
 
	response.sendRedirect("loginerror.jsp"); 
 
}  
%> 

</body>
</html>