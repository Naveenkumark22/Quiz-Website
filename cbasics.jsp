<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.util.*"%>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "quizwebsite";
String userid = "root";
String password = "naveen@22$";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
int count=0;
String ans="";
 String paramName="";
 String paramValue[];
Enumeration paramNames=request.getParameterNames();
try{
	connection = DriverManager.getConnection(connectionUrl+database, userid, password);
	statement=connection.createStatement();
	rs=statement.executeQuery("select answer from cbasics");
	while(rs.next()&&paramNames.hasMoreElements()){
		String un=rs.getString(1);
		paramName=(String)paramNames.nextElement();
		paramValue=request.getParameterValues(paramName);
		for(int i=0;i<paramValue.length;i++)
		{
			ans=paramValue[i];
		}
		
		if(un.equals(ans))
		{
			count++;
		}
	}
	
}catch (Exception e) {
	e.printStackTrace();
	}
//out.println(count);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
	<meta charset="utf-8">

<meta charset="ISO-8859-1">
<title>C Basics</title>
</head>
<body>

<br>
<br><br><br>


<div class="text-center container">

<div class="text-center" ><b style="font-size:40px;">YOUR SCORE</b> </div>
<br>
<div class="text-center"><b style="font-size:30px;"><% out.println(count+"%"); %></b></div>
</div>
</body>
</html>