<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Page</title>
<style>
div {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
}
</style>
</head>
<body>
      <div>

		<h1>Edit Record</h1>
		<!-- action is address where the values are carried to  -->
		<form action="update" method="post">
			<fieldset>
				<legend>Enter Details</legend>
				<input type="hidden" name="id" value="${student.id}">
				<table>
					<tr>
						<th>Student Name: </th>
						<!-- Name attribute is Complusory to carry value  -->
						<th><input type="text" value="${student.name}" name="name"></th>
					</tr>
					<tr>
						<th>Student Mobile: </th>
						<!-- Name attribute is Complusory to carry value  -->
						<th><input type="tel" maxlength="10" value="${student.mobile}" name="mobile"></th>
					</tr>
					<tr>
					     <th>English :</th>
					     <th><input type="number" value="${student.english}" name="english"></th>
					</tr>
					<tr>
					     <th>Science :</th>
					     <th><input type="number" value="${student.science}" name="science"></th>
					</tr>
					<tr>
					     <th>Mathematics :</th>
					     <th><input type="number" value="${student.maths}" name="maths"></th>
					</tr>
					<tr>
					     <th>DOB :</th>
					     <th><input type="date" value="${student.dob}" name="dob"></th>
					</tr>
					<tr>
						<!-- Clicking this button will carry the values to action Location  -->
						<th><button>Update</button></th>
						<th><button type="reset">Cancel</button></th>
					</tr>
				</table>
			</fieldset>
		</form>
		<br>
		<br>
		<!-- This is for Loading Home Page Servlet -->					
		<a href="/"><button>Back</button></a>
	</div>
</body>
</html>