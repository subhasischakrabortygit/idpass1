<%@page import="database.Dbconnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="bootstrap/css/bootstrap.css">

<title>Schedule Search</title>
<style type="text/css">
	td {
		text-align:center; 
    	vertical-align:middle;
    	border: 1px solid black;
	}
	html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6,
	p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
	em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
	b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend,
	table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
	details, embed, figure, figcaption, footer, header, hgroup, menu, nav,
	output, ruby, section, summary, time, mark, audio, video {
  margin: 0;
  padding: 0;
  border: 0;
  font-size: 100%;
  font: inherit;
  vertical-align: baseline;
  outline: none;
  -webkit-font-smoothing: antialiased;
  -webkit-text-size-adjust: 100%;
  -ms-text-size-adjust: 100%;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
html { overflow-y: scroll; }
body { 
  background: #d0d0d0;
  font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
  font-size: 62.5%;
  line-height: 1;
  color: #585858;
  padding: 22px 10px;
  padding-bottom: 55px;
}

::selection { background: #5f74a0; color: #fff; }
::-moz-selection { background: #5f74a0; color: #fff; }
::-webkit-selection { background: #5f74a0; color: #fff; }

br { display: block; line-height: 1.6em; } 

article, aside, details, figcaption, figure, footer, header, hgroup, menu, nav, section { display: block; }
ol, ul { list-style: none; }

input, textarea { 
  -webkit-font-smoothing: antialiased;
  -webkit-text-size-adjust: 100%;
  -ms-text-size-adjust: 100%;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  outline: none; 
}

blockquote, q { quotes: none; }
blockquote:before, blockquote:after, q:before, q:after { content: ''; content: none; }
strong, b { font-weight: bold; } 

table { border-collapse: collapse; border-spacing: 0; }
img { border: 0; max-width: 100%; }

h1 { 
  font-family: 'Amarante', Tahoma, sans-serif;
  font-weight: bold;
  font-size: 3.6em;
  line-height: 1.7em;
  margin-bottom: 10px;
  text-align: center;
}


/** page structure **/
#wrapper {
  display: block;
  width: 750px;
  background: #fff;
  margin: 0 auto;
  padding: 10px 17px;
  -webkit-box-shadow: 2px 2px 3px -1px rgba(0,0,0,0.35);
}

#keywords {
  margin: 0 auto;
  font-size: 1.2em;
  margin-bottom: 15px;
  width: 700px;
}


#keywords thead {
  cursor: pointer;
  background: #c9dff0;
}

#keywords thead tr th { 
  font-weight: bold;
  padding: 12px 30px;
  padding-left: 42px;
}
#keywords thead tr th span { 
  padding-right: 20px;
  background-repeat: no-repeat;
  background-position: 100% 100%;
}

#keywords thead tr th.headerSortUp, #keywords thead tr th.headerSortDown {
  background: #acc8dd;
}

#keywords tbody tr { 
  color: #555;
}
#keywords tbody tr td {
  text-align: center;
  padding: 15px 10px;
}
#keywords tbody tr td.lalign {
  text-align: center;
}

</style>
</head>
<body>
<%@ page import="java.io.*,java.sql.*,java.util.Date" %>
<%@ page import = "java.io.*,java.util.*" %>
<%@ page import = "javax.servlet.*,java.text.*" %>
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

<br>

 <p><a style="color:#6666ff;" href="home.jsp"><b><h1><--Back</h1></b></a></p>

<%@ page import="org.json.JSONArray,org.json.JSONException" %>
<%@ page import="org.json.JSONObject,org.json.JSONException" %>
<%	try {
	
	//---------DB CONNECTION AND FETCH
	
	Connection cn=Dbconnect.getCon();
	String tab=null;
	String value=request.getParameter("value");
	int id=Integer.parseInt(request.getParameter("fid"));
	
	//---------VARIABLES
	
	ResultSet rs=null;
	String tday;
    String hour;
    String ap;
    String ttday="";
    String nt="";
    String vcamp="";
    String vsub="";
    String vsec="";
    String vyr="";
    int newtime;
    int currenttime=0;
    Date dateNow = new Date();
    String[] times = { "7:00 AM - 8:00AM", "8:00AM - 9:00AM", "9:00AM - 10:00AM",
 		     "10:00AM - 11:00AM", "11:00AM - 12:00AM", "12:00AM -1:00PM", "1:00PM-2:00PM",
 		     "2:00PM - 3:00PM", "3:00PM - 4:00PM", "4:00PM - 5:00PM", "5:00PM - 6:00PM"};
	String sql;

  //-----------------TIME------
  SimpleDateFormat day = new SimpleDateFormat("E");  //day fetch
  tday = day.format(dateNow);
  SimpleDateFormat hr = new SimpleDateFormat("hh");  //hour fetch
  SimpleDateFormat aop = new SimpleDateFormat("a");  //AM or PM fetch
  hour = hr.format(dateNow);
  ap= aop.format(dateNow);
  

  if(tday.equals("Sun"))
	  ttday="";
  else if(tday.equals("Mon"))
	  ttday="mon";
  else if(tday.equals("Tue"))
	  ttday="tues";
  else if(tday.equals("Wed"))
	  ttday="wed";
  else if(tday.equals("Thu"))
	  ttday="thur";
  else if(tday.equals("Fri"))
	  ttday="fri";
  else if(tday.equals("Sat"))
	  ttday="sat";
  else
	  ttday="sat";
  
  
	
	ttday="mon";
	//-------------------------- TODAY SCHEDULE
	if((value.substring(0,3)).equals("tod"))
	{
		sql="Select "+ttday+" from faculty where id=?";
		PreparedStatement ps=cn.prepareStatement(sql);
		ps.setInt(1,id);
		rs=ps.executeQuery();
		String arr = null;
		String em="";
		while (rs.next())
		{
		    em += rs.getString(ttday);
		}
		JSONArray art=new JSONArray(em);
		JSONObject artobj= art.getJSONObject(0);
	    
		//int a[];
	%> <div id="wrapper">
	<h1>Schedule</h1>
	<table id="keywords" cellspacing="0" cellpadding="0">
		<thead>
    				<th><b>Time </b></th>
    				<th><b>Room No </b></th>
    				<th><b>Subject </b></th>
    				<th><b>Section </b></th>
    				<th><b>Year </b></th>
    			</thead> 
    	<%
        
		for(int i=1;i<=11;i++)
        {
            String values = artobj.optString("sub"+i);
            if(!values.equals("free"))
            {
            	vsub = artobj.optString("sub"+i);
            	vsec = artobj.optString("sec"+i);
            	vcamp = artobj.optString("camp"+i);
            	vyr = artobj.optString("yr"+i);
            	nt = times[i-1]; 
           %>
           	<tr>
    				<td><%=nt%></td>
    				<td><%=vcamp%></td>
    				<td><%=vsub%></td>
    				<td><%=vsec%></td>
    				<td><%=vyr%></td>
    			</tr> 
    	<%}}%></table><%
        }
	
	//----------------------------- CURRENT SCHEDULE
	
	else if((value.substring(0,3)).equals("cur"))
	{
		
		sql="Select "+ttday+" from faculty where id=?";
		PreparedStatement ps=cn.prepareStatement(sql);
		ps.setInt(1,id);
		rs=ps.executeQuery();
		String arr = null;
		String em="";
		while (rs.next())
		{
		    em += rs.getString(ttday);
		}
		JSONArray art=new JSONArray(em);
		JSONObject artobj= art.getJSONObject(0);
	    
		//int a[];
		
		//------------CURRENT TIME CONVERSION AND CALCULATIONS
		// hour = hours, ap = am or pm
		int hri= Integer.parseInt(hour);
			if(((hri>=0) && (hri<=6) && (ap.equals("AM"))) || ((hri>=6) && (hri<=12) && (ap.equals("PM")))) 
			{
				currenttime=0;
				
				%>
				<center><p><h1>No classes in this time</h1></p></center>
				
				
			<%}
			else if((hri>=7) && (ap.equals("AM")) )
			{
				%><div id="wrapper">
				<h1>Schedule</h1>
				<table id="keywords" cellspacing="0" cellpadding="0">
				<thead>
		    				<th><b>Room No </b></th>
		    				<th><b>Subject </b></th>
		    				<th><b>Section </b></th>
		    				<th><b>Year </b></th>
		    			</thead> 
		    	<%
				
				currenttime=hri-6;
				String values = artobj.optString("sub"+currenttime);
				vsub = artobj.optString("sub"+currenttime);
		    	vsec = artobj.optString("sec"+currenttime);
		    	vcamp = artobj.optString("camp"+currenttime);
		    	vyr = artobj.optString("yr"+currenttime);
			%>
		    	<tr>
		    		<td><%=vcamp%></td>
		    		<td><%=vsub%></td>
		    		<td><%=vsec%></td>
		    		<td><%=vyr%></td>
		    	</tr> 
		    	</table>
		    	
			<%}
			
			else if( (hri<6) && (ap.equals("PM")) )
			{
				%><div id="wrapper">
				<h1>Schedule</h1>
				<table id="keywords" cellspacing="0" cellpadding="0">
				<thead>
		    				<th><b>Room No </b></th>
		    				<th><b>Subject </b></th>
		    				<th><b>Section </b></th>
		    				<th><b>Year </b></th>
		    			</thead> 
		    	<%
				currenttime=hri+6;
				String values = artobj.optString("sub"+currenttime);
				vsub = artobj.optString("sub"+currenttime);
		    	vsec = artobj.optString("sec"+currenttime);
		    	vcamp = artobj.optString("camp"+currenttime);
		    	vyr = artobj.optString("yr"+currenttime);
			%>
		    	<tr>
		    		<td><%=vcamp%></td>
		    		<td><%=vsub%></td>
		    		<td><%=vsec%></td>
		    		<td><%=vyr%></td>
		    	</tr> 
		    	</table>
		    	
			<%}
	}
		
	
	//----------------WEEK SCHEDULE
	
	/* else if((value.substring(0,3)).equals("wek"))
	{
		sql="Select mon,tues,wed,thur,fri,sat from faculty where id=?";
		PreparedStatement ps=cn.prepareStatement(sql);
		ps.setInt(1, id);
		rs=ps.executeQuery();
		String arr = null;
		String mon="";
		String tues="";
		String wed="";
		String thur="";
		String fri="";
		String sat="";
		while (rs.next())
		{
		    mon += rs.getString(1);
		    tues += rs.getString(2);
		    wed += rs.getString(3);
		    thur += rs.getString(4);
		    fri += rs.getString(5);
		    sat += rs.getString(6);
		}
		JSONArray artmon=new JSONArray(mon);
		JSONObject artobjmon= artmon.getJSONObject(0);
		
		JSONArray arttues=new JSONArray(tues);
		JSONObject artobjtues= arttues.getJSONObject(0);
		
		JSONArray artwed=new JSONArray(wed);
		JSONObject artobjwed= artwed.getJSONObject(0);
		
		JSONArray artthur=new JSONArray(thur);
		JSONObject artobjthur= artthur.getJSONObject(0);
		
		JSONArray artfri=new JSONArray(fri);
		JSONObject artobjfri= artfri.getJSONObject(0);
		
		JSONArray artsat=new JSONArray(sat);
		JSONObject artobjsat= artsat.getJSONObject(0);
	    
		//int a[];
		
	%> <div id="wrapper">
	<h1>Schedule</h1>
	<table id="keywords" cellspacing="0" cellpadding="0">
		<thead>
    				<th><b>Time </b></th>
    				<th><b>Room No </b></th>
    				<th><b>Subject </b></th>
    				<th><b>Section </b></th>
    				<th><b>Year </b></th>
    			</thead> 
    	<%
        
		for(int i=1;i<=11;i++)
        {
            String values = artobj.optString("sub"+i);
            if(!values.equals("free"))
            {
            	vsub = artobj.optString("sub"+i);
            	vsec = artobj.optString("sec"+i);
            	vcamp = artobj.optString("camp"+i);
            	vyr = artobj.optString("yr"+i);
            	nt = times[i-1]; 
           %>
           	<tr>
    				<td><%=nt%></td>
    				<td><%=vcamp%></td>
    				<td><%=vsub%></td>
    				<td><%=vsec%></td>
    				<td><%=vyr%></td>
    			</tr> 
    	<%}}%></table><%
	}*/
	   	
} catch(Exception e){
	e.printStackTrace();
}%>




</body>
</html>