<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
<title>Home</title>


<style type="text/css"> 

.button_a {
    display: inline-block;
    text-align: center;
    vertical-align: middle;
    padding: 9px 50px;
    border: 4px solid #27a135;
    border-radius: 83px;
    background: #4aff7a;
    background: -webkit-gradient(linear, left top, left bottom, from(#4aff7a), to(#0db320));
    background: -moz-linear-gradient(top, #4aff7a, #0db320);
    background: linear-gradient(to bottom, #4aff7a, #0db320);
    -webkit-box-shadow: #59ff80 -3px 12px 40px 0px;
    -moz-box-shadow: #59ff80 -3px 12px 40px 0px;
    box-shadow: #59ff80 -3px 12px 40px 0px;
    text-shadow: #591717 1px 1px 2px;
    font: italic normal bold 22px georgia;
    color: #ffffff;
    text-decoration: none;
}
.button_a:hover,
.button_a:focus {
    border: 4px solid #33d145;
    background: #59ff92;
    background: -webkit-gradient(linear, left top, left bottom, from(#59ff92), to(#10d726));
    background: -moz-linear-gradient(top, #59ff92, #10d726);
    background: linear-gradient(to bottom, #59ff92, #10d726);
    color: #ffffff;
    text-decoration: none;
}
.button_a:active {
    background: #2c9949;
    background: -webkit-gradient(linear, left top, left bottom, from(#2c9949), to(#0db320));
    background: -moz-linear-gradient(top, #2c9949, #0db320);
    background: linear-gradient(to bottom, #2c9949, #0db320);
}
.button_a:before{
    content:  "\0000a0";
    display: inline-block;
    height: 24px;
    width: 24px;
    line-height: 24px;
    margin: 0 4px -6px -4px;
    position: relative;
    top: 0px;
    left: 0px;
}

.button_b {
    display: inline-block;
    text-align: center;
    vertical-align: middle;
    padding: 9px 50px;
    border: 4px solid #9e1111;
    border-radius: 83px;
    background: #fc4b5a;
    background: -webkit-gradient(linear, left top, left bottom, from(#fc4b5a), to(#9e0808));
    background: -moz-linear-gradient(top, #fc4b5a, #9e0808);
    background: linear-gradient(to bottom, #fc4b5a, #9e0808);
    -webkit-box-shadow: #ed071b -18px 12px 40px 1px;
    -moz-box-shadow: #ed071b -18px 12px 40px 1px;
    box-shadow: #ed071b -18px 12px 40px 1px;
    text-shadow: #591717 2px 1px 2px;
    font: italic normal bold 22px georgia;
    color: #ffffff;
    text-decoration: none;
}
.button_b:hover,
.button_b:focus {
    border: 4px solid #fd1b1b;
    background: #ff5a6c;
    background: -webkit-gradient(linear, left top, left bottom, from(#ff5a6c), to(#be0a0a));
    background: -moz-linear-gradient(top, #ff5a6c, #be0a0a);
    background: linear-gradient(to bottom, #ff5a6c, #be0a0a);
    color: #ffffff;
    text-decoration: none;
}
.button_b:active {
    background: #972d36;
    background: -webkit-gradient(linear, left top, left bottom, from(#972d36), to(#9e0808));
    background: -moz-linear-gradient(top, #972d36, #9e0808);
    background: linear-gradient(to bottom, #972d36, #9e0808);
}
.button_b:before{
    content:  "\0000a0";
    display: inline-block;
    height: 24px;
    width: 24px;
    line-height: 24px;
    margin: 0 4px -6px -4px;
    position: relative;
    top: 0px;
    left: 0px;
}

.button_c {
    display: inline-block;
    text-align: center;
    vertical-align: middle;
    padding: 9px 50px;
    border: 4px solid #11299e;
    border-radius: 83px;
    background: #514bfc;
    background: -webkit-gradient(linear, left top, left bottom, from(#514bfc), to(#08109e));
    background: -moz-linear-gradient(top, #514bfc, #08109e);
    background: linear-gradient(to bottom, #514bfc, #08109e);
    -webkit-box-shadow: #5007ed 14px 12px 40px 1px;
    -moz-box-shadow: #5007ed 14px 12px 40px 1px;
    box-shadow: #5007ed 14px 12px 40px 1px;
    text-shadow: #591717 2px 1px 2px;
    font: italic normal bold 22px georgia;
    color: #ffffff;
    text-decoration: none;
}
.button_c:hover,
.button_c:focus {
    border: 4px solid #2b67ff;
    background: #615aff;
    background: -webkit-gradient(linear, left top, left bottom, from(#615aff), to(#0a13be));
    background: -moz-linear-gradient(top, #615aff, #0a13be);
    background: linear-gradient(to bottom, #615aff, #0a13be);
    color: #ffffff;
    text-decoration: none;
}
.button_c:active {
    background: #312d97;
    background: -webkit-gradient(linear, left top, left bottom, from(#312d97), to(#08109e));
    background: -moz-linear-gradient(top, #312d97, #08109e);
    background: linear-gradient(to bottom, #312d97, #08109e);
}
.button_c:before{
    content:  "\0000a0";
    display: inline-block;
    height: 24px;
    width: 24px;
    line-height: 24px;
    margin: 0 4px -6px -4px;
    position: relative;
    top: 0px;
    left: 0px;
}

.switch input {
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=0)";
  filter: alpha(opacity=0);
  -moz-opacity: 0;
  opacity: 0;
  z-index: 100;
  position: absolute;
  width: 100%;
  height: 100%;
  cursor: pointer;
}

.switch {
  width: 180px;
  height: 55px;
  position: relative;
  margin: 50px auto;
}

.switch label {
  display: block;
  width: 80%;
  height: 100%;
  position: relative;
  background: #1F2736; /*#121823*/
  background: linear-gradient(#121823, #161d2b);
  border-radius: 30px 30px 30px 30px;
  box-shadow: inset 0 3px 8px 1px rgba(0,0,0,0.5),  inset 0 1px 0 rgba(0,0,0,0.5),  0 1px 0 rgba(255,255,255,0.2);
  -webkit-transition: all .5s ease;
  transition: all .5s ease;
}

.switch input ~ label i {
  display: block;
  height: 51px;
  width: 51px;
  position: absolute;
  left: 2px;
  top: 2px;
  z-index: 2;
  border-radius: inherit;
  background: #283446; /* Fallback */
 background: linear-gradient(#36455b, #283446);
  box-shadow: inset 0 1px 0 rgba(255,255,255,0.2),  0 0 8px rgba(0,0,0,0.3),  0 12px 12px rgba(0,0,0,0.4);
  -webkit-transition: all .5s ease;
  transition: all .5s ease;
}

.switch label + span {
  content: "";
  display: inline-block;
  position: absolute;
  right: 0px;
  top: 17px;
  width: 18px;
  height: 18px;
  border-radius: 10px;
  background: #283446;
  background: gradient-gradient(#36455b, #283446);
  box-shadow: inset 0 1px 0 rgba(0,0,0,0.2),  0 1px 0 rgba(255,255,255,0.1),  0 0 10px rgba(185,231,253,0),  inset 0 0 8px rgba(0,0,0,0.9),  inset 0 -2px 5px rgba(0,0,0,0.3),  inset 0 -5px 5px rgba(0,0,0,0.5);
  -webkit-transition: all .5s ease;
  transition: all .5s ease;
  z-index: 2;
}

/* Toggle */

.switch input:checked ~ label + span {
  content: "";
  display: inline-block;
  position: absolute;
  width: 18px;
  height: 18px;
  border-radius: 10px;
  -webkit-transition: all .5s ease;
  transition: all .5s ease;
  z-index: 2;
  background: #b9f3fe;
  background: gradient-gradient(#ffffff, #77a1b9);
  box-shadow: inset 0 1px 0 rgba(0,0,0,0.1),  0 1px 0 rgba(255,255,255,0.1),  0 0 10px rgba(100,231,253,1),  inset 0 0 8px rgba( 61,157,247,0.8),  inset 0 -2px 5px rgba(185,231,253,0.3),  inset 0 -3px 8px rgba(185,231,253,0.5);
}

.switch input:checked ~ label i {
  left: auto;
  left: 63%;
  box-shadow: inset 0 1px 0 rgba(255,255,255,0.2),  0 0 8px rgba(0,0,0,0.3),  0 8px 8px rgba(0,0,0,0.3),  inset -1px 0 1px #b9f3fe;
  -webkit-transition: all .5s ease;
  transition: all .5s ease;
}

</style>


</head>
<body>
<%@page import="java.sql.* ,java.io.IOException, java.io.PrintWriter,javax.servlet.ServletException,
javax.servlet.annotation.WebServlet,
javax.servlet.http.HttpServlet,
javax.servlet.http.HttpServletRequest,
javax.servlet.http.HttpServletResponse,
javax.servlet.http.HttpSession,java.io.*,java.util.*,database.*" %>


<nav class="navbar navbar-inverse bg-inverse">
  <a class="navbar-brand" href="#" style="font-family:'Verdana'; color:#ffffff"><i>Smart Attendance and Secure Locking</i></a>
  <p style="float:right"><b>/ &nbsp</b><a style="color:#FFFFFF;" href="Login.jsp"><b>Logout</b></a></p>
  <%
     String name= (String) session.getAttribute("name");                     
     if (name == null) {%>
            <li style="float:right"><a href="Login.jsp">Login</a></li>
    <% } else {%>
            <li style="float:right"><a  style="color:#FFFFFF;" href="#">Logged in as <b><%=name %></b> &nbsp</a></li>
        <% }%>
 	
	
</nav>

<p><a style="color:#6666ff;" href="home.jsp"><b><h1><--Back</h1></b></a></p>
<%
    // String name= (String) session.getAttribute("name");   
	 int id= (int) (session.getAttribute("id"));
	 int atnd= (int) (session.getAttribute("atnd"));
	 String sql;
	 String doorstatus="";
	 String doorno="";
	 try {
		 Connection cn=Dbconnect.getCon();
		 ResultSet rs=null;
		 sql="Select doorstatus,doorno from faculty where id=?";
		 PreparedStatement ps=cn.prepareStatement(sql);
		 ps.setInt(1,id);
		 rs=ps.executeQuery();
		 
			while (rs.next())
			{
				doorstatus = rs.getString(1);
				doorno = rs.getString(2);
			}
	 }
	 catch(Exception e){
			e.printStackTrace();
		}
	 
 %> <!--
 <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript">
    $(document).ready(function(){
    	alert("hi1");
       $('#toggle').change(function(e){
    	   alert("hi2");
    	   e.preventDefault();
        	var value = ($(this).val());
        	var tog = ($(this).prop('checked'));                             
                var x;
            if(tog){ x=1;}
            else if(!(tog)){ x=0;}   
             alert(x);
             alert(value); 
       });
    
       $("#toggle").click(function(){
    	   alert("ajax start");
       $.ajax({
    	   type:'post',
            url:'http://localhost:8080/idpass1/Doorstats',
            data:{dstat:x, identity: value},
            
            cache:false,
            success:function(data){ alert("Operation Successful!!!"); },
            error:function(){ alert('error'); }
         });
		});
    });
</script> -->   <br><br>
<center>
<div style="border: 2px solid black; border-radius: 4px; width:50%; height:50%; background-color:#ffd9b3">
	 <center><h1><p style="font-family:'Times New Roman'"><b><%=name%></b></p></h1></center>
	 <center><h5><p style="font-family:'Times New Roman'"><b><i>Faculty ID: <%=id%></i></b></p></h5></center>
	<center><h5><p style="font-family:'Times New Roman'"><b><i>Total Attendance: <%=atnd%></i></b></p></h5></center>
	<br>
	<center><p><b><i>Click the button to get your schedule</i></b></p></center>

	<center>
		<table height=180px width=500px>
			<tr>
				<td style="padding-left:10px"><a class="button_b" href="Searchsch.jsp?value=tod&fid=<%=id%>">Today</a></td>
				<td><a class="button_a" href="Searchsch.jsp?value=cur&fid=<%=id%>">Current</a></td>
				<!-- <td><a class="button_c" href="Searchsch.jsp?value=wek&fid=<%=id%>">Full Week</a></td> -->
			</tr>
		</table>
	</center>
</div>
<br>
<center>
<div style="background-color:#000045; width: 400px;height: 200px; padding: 2px; border-radius: 8px">
<h1 style="margin-top:50px; color:#fff; text-align:center">Smart door Lock</h1>

<!--  <div class="switch">
		//<%
			//if(doorstatus.equals("off"))
			//{	
		%>
			 <input type="checkbox" name="toggle" id="toggle" value="<%=id%>">
		  	 <label for="toggle"><i></i></label>
		  	 <span></span>
			
  		<%// }

  		//else if(doorstatus.equals("on"))
	//		{	
		%>
			 <input type="checkbox" checked name="toggle" id="toggle" value="<%=id%>"> 
		  	 <label for="toggle"><i></i></label>
		  	 <span></span>
  		<%  //} 
  		
		
		  	  		
  		%>
  		
</div> -->
	<div>

	
	<form method="post" action="Doorstats">
	<%
			if(doorstatus.equals("off"))
			{	
		%>
			<button type=submit name="but" value="1<%=id%>" class="led btn btn-success btn-block btn-lg">Switch ON</button>
        	<br />
        	<% }

  		else if(doorstatus.equals("on"))
	 	{	
		%>
        	<button type=submit name="but" value="0<%=id%>" class="led btn btn-danger btn-block btn-lg">Switch OFF</button>
        	<br />
        <% } %>
       </form>
	</div>
	
</div>
</center>
</center>
</body>
</html>