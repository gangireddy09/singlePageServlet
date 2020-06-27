<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Page</title>
<style>
.loginform{  
    padding:10px;  
    border:1px solid green;  
    border-radius:15px;  
    width:400px;
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
	<table align="center" class="loginform">
		<tr>
			<td align="center">
				<h4>
					<%
						if (request.getAttribute("addsuccess") != null)
					%><%=request.getAttribute("addsuccess")%>
				</h4>
			</td>
		</tr>
		<tr ><td align="center" class="sub"><a href="<%=request.getContextPath()%>/jsp/addEmploy.jsp">ADD EMPLOYEE</a></td></tr>
		<tr ><td align="center" class="sub1"><a href="<%=request.getContextPath()%>/EmployeeServlet">VIEW EMPLOYEES</a></td></tr>
	</table>
	
</body>
</html>