<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
     <div>
		<h1 style='color:green'>${pass}</h1>
		<table border="1px solid black">
			<tr>
				<th>Name</th>
				<th>Mobile</th>
				<th>DOB</th>
				<th>English</th>
				<th>Science</th>
				<th>Mathematics</th>
				<th>Percentage</th>
				<th>Result</th>
				<th>Delete</th>
				<th>Edit</th>
			</tr>
			<spring:forEach var="student" items="${list}">
				<tr>
					<th>${student.name}</th>
					<th>${student.mobile}</th>
					<th>${student.dob}</th>
					<th>${student.english}</th>
					<th>${student.science}</th>
					<th>${student.maths}</th>
					<th>${student.percentage}</th>
					<th>${student.result}</th>
					<th><a href="delete?id=${student.id}"><button>Delete</button></a></th>
					<th><a href="edit?id=${student.id}"><button>Edit</button></a></th>
				</tr>
			</spring:forEach>
		</table>
		
		<a href="/"><button type="button">Back</button></a>
		
	</div>
</body>
</html>