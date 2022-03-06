<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
	<meta charset="utf-8">
<body>
<%
String username=request.getParameter("username");
String password=request.getParameter("password");
String email=request.getParameter("email");
String confirmpassword=request.getParameter("confirmpassword");



try{  
	  //Class.forName("com.mysql.jdbc.Driver"); 
	  String dbDriver = "com.mysql.jdbc.Driver";
      String dbURL = "jdbc:mysql://localhost:3306/";
      // Database name to access
      String dbName = "quizwebsite";
      String dbUsername = "root";
      String dbPassword = "naveen@22$";

      Class.forName(dbDriver);
      Connection con = DriverManager.getConnection(dbURL + dbName,
                                                   dbUsername, 
                                                   dbPassword);
	  	
	   
Statement st=con.createStatement();
st.executeUpdate("insert into register(serialnumber,username,password,email)values(null,'"+username+"','"+password+"','"+email+"')");


}
catch(Exception e){ System.out.println(e);}  
%>
<div class="text-center" >
<div class="text-center"><i style="color:green " class="fas fa-check-circle fa-9x" ></i></div>
<br>
<div class="text-center" style="font-size:30px;font-weight:bold;">REGISTERED  SUCCESSFULLY</div>
<br>
<div class="text-center">
<button type="button" class="btn btn-primary btn-lg"><a style="text-decoration:none;color:white;" href="index.html" >Home</a></button>

</div>
</div>
</body>
</html>