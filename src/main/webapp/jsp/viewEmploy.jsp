<%@page import="java.util.ArrayList"%>
<%@page import="com.dto.EmployeeDto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Details</title>
<style>
.loginform{  
    padding:10px;  
    border:1px solid green;  
    border-radius:15px;  
    width:425px;
    margin-top:100px;  
}  
.formheading{  
    background-color:yellow;  
    color:red;  
    padding: 7px 40px 7px 40px;  
    margin-left:100px; 
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
background-color:pink;  
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
     
</style>
</head>
<body>
	<form>
		<table align="center">
			<tr><td align="center" colspan="25" class="sub2">Employee Details</td></tr>
			<tr class="sub"><td>Id</td><td>Name</td><td>Age</td><td>Mobile No</td><td>Mail Id</td></tr>
			<%ArrayList<EmployeeDto> employees = (ArrayList)request.getAttribute("employees"); %>
					<%for(int i=0;i<employees.size();i++) {%>
			<tr>      
		         <td><%=employees.get(i).getId()%></td>
		         <td><%=employees.get(i).getName()%></td>
		         <td><%=employees.get(i).getAge()%></td>
		         <td><%=employees.get(i).getMobileNo()%></td>
		         <td><%=employees.get(i).getMailId()%></td>
		    </tr>
					<%} %>
		</table>
	</form>
</body>
</html>