<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Employee</title>
<style>
.loginform{  
    padding:10px;  
    border:1px solid green;  
    border-radius:15px;  
    width:425px;
    margin-top:10px;  
}  
.formheading{  
    background-color:red;  
    color:white;  
    padding:5px;  
    text-align:center;  
}  
.sub{  
background-color:skyblue;  
padding: 7px 40px 7px 40px;  
color:white;  
font-weight:bold;  
margin-left:70px;  
border-radius:5px;  
}  
.sub1{  
background-color:yellow;  
padding: 7px 40px 7px 40px;  
color:white;  
font-weight:bold;  
margin-left:70px;  
border-radius:5px;  
}  
.sub2{  
background-color:lightgreen;  
padding: 7px 40px 7px 40px;  
color:white;  
font-weight:bold;  
margin-left:70px;  
border-radius:5px;  
} 
.sub3{  
background-color:lightgray;  
padding: 7px 40px 7px 40px;  
color:white;  
font-weight:bold;  
margin-left:60px;  
border-radius:5px;  
}  
.sub4{  
background-color:red;  
padding: 7px 40px 7px 40px;  
color:white;  
font-weight:bold;  
margin-left:60px;  
border-radius:5px;  
} 
</style>
</head>
<body>
	<form name="addDetails" action="<%=request.getContextPath()%>/EmployeeServlet" method="post" >
			
		<table align="center" class="loginform">
			<tr align="center"><td colspan="25" align="center" class="formheading">Enter Details to Add Employee</tr>
			<tr align="center"><td class="sub">Name</td><td class="sub"><input type="text" name="name"></td></tr>
			<tr align="center"><td class="sub2">Age</td><td class="sub2"><input type="number" name="age"></td></tr>
			<tr align="center"><td class="sub3">MobileNo</td><td class="sub3"><input type="text" name="mobileNo"></td></tr>
			<tr align="center"><td class="sub3">Mail Id</td><td class="sub3"><input type="text" name="mailId"></td></tr>
			<tr><td colspan="25" align="center" class="sub1"><input type="submit" name="Submit"></td></tr>
		</table>
		
	</form>
</body>
</html>