<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>

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
      <h1 style='color:green'>${pass}</h1>
        <h1 style='color:red'>${fail}</h1>
       <h1>Welcome To Main Page</h1>
      <form>
        <table border=1 cellspacing=2px cellpadding=2px>
               <tr>
               <th><button formaction="insert">Insert Record</button></th>
               
               <th><button formaction="fetch">Fetch All Record</button></th>
              
               
               </tr>
        </table>
       </form>
  </div>
</body>
</html>