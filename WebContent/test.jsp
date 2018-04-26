<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="org.json.JSONArray,org.json.JSONException" %>
<%@ page import="org.json.JSONObject,org.json.JSONException" %>
<%
JSONArray arrayObj = new JSONArray();
JSONObject json = new JSONObject();
json.put("title", "TITLE_TEST");
json.put("link", "LINK_TEST");
arrayObj.put(json);

JSONObject json1 = new JSONObject();
json1.put("title", "TIfwerfg");
json1.put("link", "LINKefw");

arrayObj.put(json1);
//Prints out to HTML page
out.println(arrayObj);

String p="subha";
int i=5;
out.println("s"+i);

%>

</body>
</html>