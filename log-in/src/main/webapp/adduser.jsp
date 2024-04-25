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
<jsp:useBean id="u" class="com.login.bean.LoginBean"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
int i=LoginDao.save(u);  
if(i>0){  
response.sendRedirect("loginsuccess.jsp");  
}else{  
response.sendRedirect("loginerror.jsp");    
}  
%>  


</body>
</html>