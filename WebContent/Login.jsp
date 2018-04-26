<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<div class="container" style="background-color:	#F0E68C">
	
	<form  name="frm" onsubmit="return check()" action="Check"  method="post">
<center><h3><i>Please Login in</i></h3><br><table border=1px height=200 style="background-color:#FFFFE0">
<tr><td>Enter Login ID :</td><td><input type="number" name="id" id="id" required></td></tr>
<tr><td>Enter Password :</td><td><input type="number" name="pwd" id="pwd" required></td></tr>
<tr><td colspan="2" align="center"><input type="submit" value="Login"> </td></tr>
</table>
<br>
<br>
<center><h3><p style="color:red"><a href="newreg.jsp">Click here</a> for new registration.</p></h3></center>
</form></center>
<br>
	
</div>
</body>
</html>