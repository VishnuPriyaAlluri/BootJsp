<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Student</title>
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
             <form action="insert" method="post">
             <h1>Enter Student</h1>
             
            <table cellspacing="2px" cellpadding="2px">
                 <tr>
                        <th>Student Name :</th>
                        <th><input type="text" name="name"/></th>
                        
                 </tr>
                 <tr>
                     <th>Student Mobile :</th>
                     <th><input type="tel" maxlength="10" name="mobile"/></th>
                 </tr>
                 <tr>
                     <th>Marks</th>
                 </tr>
                 <tr>
                     <th>English :</th>
                     <th><input type="number" name="english"/></th>
                 </tr>
                 <tr>
                     <th>Science :</th>
                     <th><input type="number" name="science"/></th>
                 </tr>
                 <tr>
                     <th>Mathematics :</th>
                     <th><input type="number" name="maths"/></th>
                 </tr>
                 <tr>
                    <th>Student DOB :</th>
                    <th><input type="date" name="dob"/></th>
                 </tr>
                 <tr>
                    <th><button >Add</button></th>
                    <th> <button type="reset">Cancel</button></th>
                 </tr>
                 <tr>
                    <th><a href="/"><button type="button">Back</button></a></th>
                 </tr>
            </table>
            
             </form>
             
       </div>
</body>
</html>