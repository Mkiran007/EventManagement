<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Events List</title>
<style>
#eventPage {
	justify-content: space-around;
	align-items: center;
	background-color: #f0f0f0;
	padding: 20px;
	border-radius: 10px;
	width: 100%;
}

#eventPage .img_dge {
	width: 400px;
	height: 300px;
	object-fit: cover;
	border-radius: 10px;
}

.text-container {
	display: flex;
	flex-direction: column;
	justify-content: space-between;
	align-items: flex-start;
}

.text-container h2, .text-container h3, .text-container p {
	margin: 10px 0;
}

.text-container h2 {
	color: #333;
	font-size: 20px;
}

.text-container h3 {
	color: #666;
	font-size: 16px;
}

.text-container p {
	color: #999;
	font-size: 14px;
	max-width: 300px;
	text-align: justify;
}

.btn {
	width: 100px;
	height: 40px;
	background-color: #0c007d;
	color: #fafaff;
	box-shadow: 10px 2px 10px #e8dce2;
	border-radius: 5px;
	cursor: pointer;
}
</style>
</head>
<body>
	<%@page
		import="com.murali.mtie.adminDao,com.murali.mtie.*, java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


	<%
	List<admin> list = adminDao.getAllRecords();
	request.setAttribute("list", list);
	%>
	
	<jsp:include page="admin.html" />  
	

	<form action="admin.html" method="post">
		<c:forEach items="${list}" var="u">
			<div id="eventPage" style="display: inline-flex;">
				
					<table>
						<tr>
							<th rowspan="7"><img class="img_dge"
					src="https://media.istockphoto.com/id/499517325/photo/a-man-speaking-at-a-business-                       conference.jpg?s=612x612&w=0&k=20&c=gWTTDs_Hl6AEGOunoQ2LsjrcTJkknf9G8BGqsywyEtE=">
				<div class="text-container"></th>
							<th>Details</th>
						</tr>
						<tr>
							<th>
								<h2>${u.geteventname()}</h2>
							</th>
						</tr>
						<tr>
							<th><h2>${u.gethost()}</h2></th>
						</tr>
						<tr>
							<th><h3>${u.getStarting_time()}</h3></th>
						</tr>
						<tr>
						<th><h3>${u.getEnding_time()}</h3></th>
						</tr>
						<tr>
							<th><h2>${u.getEvent_location()}</h2></th>
						</tr>
						<tr>
							<th><p>${u.getEvent_description()}</p></th>
						</tr>
						<tr>
							<th colsan="2"><button class="btn">Enroll Event</button></th><hr>
						</tr>
				</div>
		</c:forEach>
	</form>

</body>
</html>
