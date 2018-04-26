<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New registration</title>

<style type="text/css">

.middle_container1 {
    padding:20px;
    margin: 1px;
}

.tx {
    align: center;
}

textarea:focus, input:focus{
    outline: none;
} 
*:focus {
    outline: none;
}
</style>
</head>
<body bgcolor="#F2F3F4">
<%@ page import="java.io.*,java.util.*,database.*" %>
<%@ page import="org.json.JSONArray,org.json.JSONException" %>
<div class="container">
	
	<h1><center><u>REGISTRATION FORM</u></center></h1><center>
<form name="f1" action="formConnect" onSubmit="return validation()" method="post">
<b>
<table width=800px height=70px bgcolor="#C39BD3" border=2px style="font-size:20; font-weight:bold;">
	<tr>
		<th width=200px>Name</th>
		<td width=500px><center><input type="text" size=30 name="name" id="name" width=100% required/></center></td>
		<th width=200px>ID</th>
		<td width=100px><input type="number" size=30 name="id1" id="id1" required/></td>
	</tr>
</table>
	<center><b><h2>Enter the schedule</h2></b></center>
	
	<p><i>**If the Subject field is empty no other values for that particular period of the day will be accepted.</i>
	
	
	
<table  bgcolor="#C39BD3" border=2px style="font-size:20; font-weight:bold;">
	<tr>
		<th width=10px></th>
		<th>7:00 - 8:00</th>
		<th>8:00 - 9:00</th>
		<th>9:00 - 10:00</th>
		<th>10:00 - 11:00</th>
		<th>11:00 - 12:00</th>
		<th>12:00 - 1:00</th>
		<th>1:00 - 2:00</th>
		<th>2:00 - 3:00</th>
		<th>3:00 - 4:00</th>
		<th>4:00 - 5:00</th>
		<th>5:00 - 6:00</th>
	</tr>
	<tr style="background-color:#AED6F1">
		<th>MONDAY</th>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="m1" id="m1">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="my1" id="my1" >
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ms1" id="ms1" >
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="mc1" id="mc1" >
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="m2" id="m2"> 
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="my2" id="my2"> 
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ms2" id="ms2"> 
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="mc2" id="mc2"> 
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="m3" id="m3"> 
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="my3" id="my3"> 
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ms3" id="ms3"> 
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="mc3" id="mc3"> 
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="m4" id="m4"> 
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="my4" id="my4"> 
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ms4" id="ms4"> 
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="mc4" id="mc4"> 
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="m5" id="m5">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="my5" id="my5">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ms5" id="ms5">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="mc5" id="mc5">
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="m6" id="m6">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="my6" id="my6">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ms6" id="ms6">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="mc6" id="mc6">
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="m7" id="m7">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="my7" id="my7">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ms7" id="ms7">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="mc7" id="mc7">
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="m8" id="m8">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="my8" id="my8">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ms8" id="ms8">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="mc8" id="mc8">
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="m9" id="m9">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="my9" id="my9">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ms9" id="ms9">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="mc9" id="mc9">
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="m10" id="m10">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="my10" id="my10">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ms10" id="ms10">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="mc10" id="mc10">
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="m11" id="m11">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="my11" id="my11">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ms11" id="ms11">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="mc11" id="mc11">
		    </div>
		</td>
	</tr>
	<tr style="background-color:#EBF5FB">
		<th>TUESDAY</th>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="tu1" id="tu1">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="tuy1" id="tuy1" >
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="tus1" id="tus1" >
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="tuc1" id="tuc1" >
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="tu2" id="tu2"> 
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="tuy2" id="tuy2"> 
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="tus2" id="tus2"> 
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="tuc2" id="tuc2"> 
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="tu3" id="tu3"> 
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="tuy3" id="tuy3"> 
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="tus3" id="tus3"> 
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="tuc3" id="tuc3"> 
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="tu4" id="tu4"> 
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="tuy4" id="tuy4"> 
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="tus4" id="tus4"> 
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="tuc4" id="tuc4"> 
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="tu5" id="tu5">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="tuy5" id="tuy5">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="tus5" id="tus5">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="tuc5" id="tuc5">
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="tu6" id="tu6">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="tuy6" id="tuy6">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="tus6" id="tus6">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="tuc6" id="tuc6">
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="tu7" id="tu7">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="tuy7" id="tuy7">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="tus7" id="tus7">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="tuc7" id="tuc7">
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="tu8" id="tu8">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="tuy8" id="tuy8">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="tus8" id="tus8">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="tuc8" id="tuc8">
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="tu9" id="tu9">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="tuy9" id="tuy9">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="tus9" id="tus9">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="tuc9" id="tuc9">
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="tu10" id="tu10">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="tuy10" id="tuy10">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="tus10" id="tus10">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="tuc10" id="tuc10">
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="tu11" id="tu11">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="tuy11" id="tuy11">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="tus11" id="tus11">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="tuc11" id="tuc11">
		    </div>
		</td>
	</tr>
	<tr style="background-color:#AED6F1">
		<th>WEDNESDAY</th>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="w1" id="w1">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="wy1" id="wy1" >
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ws1" id="ws1" >
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="wc1" id="wc1" >
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="w2" id="w2"> 
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="wy2" id="wy2"> 
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ws2" id="ws2"> 
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="wc2" id="wc2"> 
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="w3" id="w3"> 
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="wy3" id="wy3"> 
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ws3" id="ws3"> 
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="wc3" id="wc3"> 
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="w4" id="w4"> 
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="wy4" id="wy4"> 
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ws4" id="ws4"> 
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="wc4" id="wc4"> 
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="w5" id="w5">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="wy5" id="wy5">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ws5" id="ws5">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="wc5" id="wc5">
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="w6" id="w6">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="wy6" id="wy6">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ws6" id="ws6">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="wc6" id="wc6">
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="w7" id="w7">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="wy7" id="wy7">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ws7" id="ws7">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="wc7" id="wc7">
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="w8" id="w8">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="wy8" id="wy8">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ws8" id="ws8">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="wc8" id="wc8">
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="w9" id="w9">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="wy9" id="wy9">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ws9" id="ws9">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="wc9" id="wc9">
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="w10" id="w10">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="wy10" id="wy10">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ws10" id="ws10">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="wc10" id="wc10">
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="w11" id="w11">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="wy11" id="wy11">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ws11" id="ws11">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="wc11" id="wc11">
		    </div>
		</td>
	</tr>
	<tr style="background-color:#EBF5FB">
		<th>THURSDAY</th>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="th1" id="th1">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="thy1" id="thy1" >
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ths1" id="ths1" >
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="thc1" id="thc1" >
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="th2" id="th2"> 
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="thy2" id="thy2"> 
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ths2" id="ths2"> 
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="thc2" id="thc2"> 
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="th3" id="th3"> 
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="thy3" id="thy3"> 
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ths3" id="ths3"> 
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="thc3" id="thc3"> 
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="th4" id="th4"> 
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="thy4" id="thy4"> 
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ths4" id="ths4"> 
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="thc4" id="thc4"> 
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="th5" id="th5">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="thy5" id="thy5">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ths5" id="ths5">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="thc5" id="thc5">
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="th6" id="th6">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="thy6" id="thy6">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ths6" id="ths6">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="thc6" id="thc6">
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="th7" id="th7">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="thy7" id="thy7">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ths7" id="ths7">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="thc7" id="thc7">
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="th8" id="th8">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="thy8" id="thy8">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ths8" id="ths8">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="thc8" id="thc8">
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="th9" id="th9">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="thy9" id="thy9">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ths9" id="ths9">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="thc9" id="thc9">
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="th10" id="th10">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="thy10" id="thy10">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ths10" id="ths10">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="thc10" id="thc10">
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="th11" id="th11">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="thy11" id="thy11">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ths11" id="ths11">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="thc11" id="thc11">
		    </div>
		</td>
	</tr>
	<tr style="background-color:#AED6F1">
		<th>FRIDAY</th>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="f1" id="f1">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="fy1" id="fy1" >
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="fs1" id="fs1" >
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="fc1" id="fc1" >
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="f2" id="f2"> 
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="fy2" id="fy2"> 
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="fs2" id="fs2"> 
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="fc2" id="fc2"> 
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="f3" id="f3"> 
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="fy3" id="fy3"> 
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="fs3" id="fs3"> 
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="fc3" id="fc3"> 
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="f4" id="f4"> 
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="fy4" id="fy4"> 
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="fs4" id="fs4"> 
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="fc4" id="fc4"> 
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="f5" id="f5">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="fy5" id="fy5">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="fs5" id="fs5">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="fc5" id="fc5">
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="f6" id="f6">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="fy6" id="fy6">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="fs6" id="fs6">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="fc6" id="fc6">
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="f7" id="f7">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="fy7" id="fy7">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="fs7" id="fs7">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="fc7" id="fc7">
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="f8" id="f8">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="fy8" id="fy8">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="fs8" id="fs8">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="fc8" id="fc8">
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="f9" id="f9">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="fy9" id="fy9">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="fs9" id="fs9">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="fc9" id="fc9">
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="f10" id="f10">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="fy10" id="fy10">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="fs10" id="fs10">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="fc10" id="fc10">
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="f11" id="f11">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="fy11" id="fy11">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="fs11" id="fs11">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="fc11" id="fc11">
		    </div>
		</td>
	</tr>
	<tr style="background-color:#EBF5FB">
		<th>SATURDAY</th>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="s1" id="s1">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="sy1" id="sy1" >
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ss1" id="ss1" >
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="sc1" id="sc1" >
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="s2" id="s2"> 
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="sy2" id="sy2"> 
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ss2" id="ss2"> 
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="sc2" id="sc2"> 
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="s3" id="s3"> 
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="sy3" id="sy3"> 
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ss3" id="ss3"> 
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="sc3" id="sc3"> 
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="s4" id="s4"> 
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="sy4" id="sy4"> 
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ss4" id="ss4"> 
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="sc4" id="sc4"> 
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="s5" id="s5">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="sy5" id="sy5">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ss5" id="ss5">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="sc5" id="sc5">
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="s6" id="s6">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="sy6" id="sy6">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ss6" id="ss6">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="sc6" id="sc6">
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="s7" id="s7">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="sy7" id="sy7">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ss7" id="ss7">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="sc7" id="sc7">
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="s8" id="s8">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="sy8" id="sy8">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ss8" id="ss8">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="sc8" id="sc8">
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="s9" id="s9">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="sy9" id="sy9">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ss9" id="ss9">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="sc9" id="sc9">
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="s10" id="s10">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="sy10" id="sy10">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ss10" id="ss10">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="sc10" id="sc10">
		    </div>
		</td>
		<td>
			<div class="middle_container1">
				        	<input class="tx" type="TEXT" placeholder="Subject" size = 20 name="s11" id="s11">
				        	<input class="tx" type="TEXT" placeholder="Year" size = 20 name="sy11" id="sy11">
				            <input class="tx" type="TEXT" placeholder="Section" size = 20 name="ss11" id="ss11">
				        	<input class="tx" type="TEXT"  placeholder="Campus" size = 20 name="sc11" id="sc11">
		    </div>
		</td>
		
	</tr>
	</table>
	<br><br>
<center><input type="submit" size=30 value="Confirm and Register">
		<input type="reset" size=30 value="reset"></center>
	

</form>
</center>	
</body>
</html>