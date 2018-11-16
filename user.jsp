<!DOCTYPE html>
<html>
<head>

	<title></title>
	<style type="text/css">
		.box {
    		width: 500px;
    		margin: 200px 0;
		}

		.shape1{
    		position: relative;
    		height: 150px;
    		width: 150px;
    		background-color: #0074d9;
    		border-radius: 80px;
    		float: left;
    		margin-right: -50px;
			}
		.shape2 {
    		position: relative;
    		height: 150px;
    		width: 150px;
    		background-color: #0074d9;
    		border-radius: 80px;
    		margin-top: -30px;
    		float: left;
		}
		.shape3 {
    		position: relative;
    		height: 150px;
    		width: 150px;
    		background-color: #0074d9;
    		border-radius: 80px;
    		margin-top: -30px;
    		float: left;
    		margin-left: -31px;
		}
		.shape4 {
    		position: relative;
    		height: 150px;
    		width: 150px;
    		background-color: #0074d9;
    		border-radius: 80px;
    		margin-top: -25px;
    		float: left;
    		margin-left: -32px;
		}
		.shape5 {
    		position: relative;
    		height: 150px;
    		width: 150px;
    		background-color: #0074d9;
    		border-radius: 80px;
    		float: left;
    		margin-right: -48px;
    		margin-left: -32px;
    		margin-top: -30px;
		}
		.shape6 {
    		position: relative;
    		height: 150px;
    		width: 150px;
    		background-color: #0074d9;
    		border-radius: 80px;
    		float: left;
    		margin-right: -20px;
    		margin-top: -35px;
		}
		.shape7 {
    		position: relative;
    		height: 150px;
    		width: 150px;
    		background-color: #0074d9;
    		border-radius: 80px;
    		float: left;
    		margin-right: -20px;
    		margin-top: -57px;
		}
		.float {
    		position: absolute;
    		z-index: 2;
		}

		.form {
    		margin-left: 145px;
		}



		.header-font {
  font-family: "Josefin Slab","Helvetica Neue",Helvetica,Arial,sans-serif;
  color: #fd1506;
}
.fa-facebook{
    color:#3b5998;
}
.fa-linkedin{
    color:#0077B5;
}
.fa-twitter{
    color:#4099FF;
}
.fa-google{
    color:#d34836;
}
.bg-primary {
 background-color: #000 !important;
}

.bg-circle
{
  display: inline-block;
  width: 60px;
  height: 60px;
  padding: 14px 4px;
  color: #ececec;
  text-align: center;
  border-radius: 50%;
}

.bg-circle-outline
{
  width: 50px;
  height: 50px;
  color:smoke;
  padding: 8px 2px;
  border: 2px solid;
  border-color: smoke;
  border-radius: 50%;
}


.bg-circle a, a:hover, .media a:focus
{
  text-decoration: none !important;
  outline: none;
  color: #ececec;
}
.bg-circle-outline a, a:hover, .media a:focus
{
  text-decoration: none !important;
  outline: none;
  color: #ececec;
}
.footer {
	background: #EDEFF1;
	height: auto;
	padding-bottom: 30px;
	position: relative;
	width: 100%;
	border-bottom: 1px solid #CCCCCC;
	border-top: 1px solid #DDDDDD;
}
.footer p {
	margin: 0;
}
.footer img {
	max-width: 100%;
}
.footer h3 {
	border-bottom: 1px solid #BAC1C8;
	color: #54697E;
	font-size: 18px;
	font-weight: 600;
	line-height: 27px;
	padding: 40px 0 10px;
	text-transform: uppercase;
}
.footer ul {
	font-size: 13px;
	list-style-type: none;
	margin-left: 0;
	padding-left: 0;
	margin-top: 15px;
	color: #7F8C8D;
}
.footer ul li a {
	padding: 0 0 5px 0;
	display: block;
}
.footer a {
	color: #78828D
}
	</style>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body background="800px_COLOURBOX3491011.jpg">

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">CodeHub</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  
    
  </div>
</nav>

<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
<div class="container">
        <div id="login-row" class="row justify-content-center align-items-center">
            <div id="login-column" class="col-md-6">
                <div class="box">
                    <div class="shape1"></div>
                    <div class="shape2"></div>
                    <div class="shape3"></div>
                    <div class="shape4"></div>
                    <div class="shape5"></div>
                    <div class="shape6"></div>
                    <div class="shape7"></div>
                    <div class="float">
                    	<div class="form">
                    		<div class="form-group">
<h3 style="padding-top: 50px;color: white">You are not logged in<br/></h3>
<a href="index.jsp" style="color: white"><u>Please Login</u></a>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

<%} else {
%>
<div class="container">
        <div id="login-row" class="row justify-content-center align-items-center">
            <div id="login-column" class="col-md-6">
                <div class="box">
                    <div class="shape1"></div>
                    <div class="shape2"></div>
                    <div class="shape3"></div>
                    <div class="shape4"></div>
                    <div class="shape5"></div>
                    <div class="shape6"></div>
                    <div class="shape7"></div>
                    <div class="float">
                    	<div class="form">
                    		<div class="form-group">
<h3 style="color: white;padding-top: 50px;">Welcome <%=session.getAttribute("userid")%></h3>
<a href='logout.jsp' style="color: white"><u>Log out</u></a>
<%
    }
%>

</div>
</div>
</div>
</div>
</div>
</div>
</div>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String id = request.getParameter("t_id");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "ncp";
String userId = "root";
String password = "kuttupappy";


try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<div class="container">
        <div id="login-row" class="row justify-content-center align-items-center">
            <div id="login-column" class="col-md-6">
                <div class="box">
                    <div class="shape1"></div>
                    <div class="shape2"></div>
                    <div class="shape3"></div>
                    <div class="shape4"></div>
                    <div class="shape5"></div>
                    <div class="shape6"></div>
                    <div class="shape7"></div>
                    <div class="float">
                    	<div class="form">
                    		<div class="form-group">


<br/>
<h2 style="color: white">Test Availabe Ids</h2>
<br/>
<center>
<p style="color: white;">
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT t_id FROM test";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

<%=resultSet.getString("t_id") %>
<br/>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</p>
</center>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

<br/>


<div class="container">
        <div id="login-row" class="row justify-content-center align-items-center">
            <div id="login-column" class="col-md-6">
                <div class="box">
                    <div class="shape1"></div>
                    <div class="shape2"></div>
                    <div class="shape3"></div>
                    <div class="shape4"></div>
                    <div class="shape5"></div>
                    <div class="shape6"></div>
                    <div class="shape7"></div>
                    <div class="float">
 
 <center>                   	

<form class="form-group" method="post" action="exam.jsp" style="padding-left: 150px;padding-top: 50px;">
	<div class="form-group">
    	<label for="username" class="text-white">Test Id</label><br>
	<input type="text" name="test_id" class="form-control">
	</div>
	<div class="form-group">
		<input class="btn btn-info btn-md" type="submit" value="Submit">
	</div>
</form>
</center>
</div>
</div>
</div>
</div>
</div>

<footer>
     <div class="container-fluid bg-primary py-3">
    <div class="container">
      <div class="row">
        <div class="col-md-7">
            <div class="row py-0">
          <div class="col-sm-1 hidden-md-down">
              <a class="bg-circle bg-info" href="#">
                <i class="fa fa-2x fa-fw fa-address-card" aria-hidden="true "></i>
              </a>
            </div>
            <div class="col-sm-11 text-white">
                <div><h4>Contact</h4>
                    <p><span class="header-font">M</span>y<span class="header-font">w</span>website.com</p>
                </div>
            </div>
            </div>
        </div>
        <div class="col-md-5">
          <div class="d-inline-block">
            <div class="bg-circle-outline d-inline-block" style="background-color:#3b5998">
              <a href="https://www.facebook.com/"><i class="fa fa-2x fa-fw fa-facebook text-white"></i>
		</a>
            </div>
            <div class="bg-circle-outline d-inline-block" style="background-color:#4099FF">
              <a href="https://twitter.com/">
                <i class="fa fa-2x fa-fw fa-twitter text-white"></i></a>
            </div>

            <div class="bg-circle-outline d-inline-block" style="background-color:#0077B5">
              <a href="https://www.linkedin.com/company/">
                <i class="fa fa-2x fa-fw fa-linkedin text-white"></i></a>
            </div>
            <div class="bg-circle-outline d-inline-block" style="background-color:#d34836">
              <a href="https://www.google.com/">
                <i class="fa fa-2x fa-fw fa-google text-white"></i></a>
            </div>
          </div>
        </div>
      </div>
    </div>
    </div>
</footer>
    <!--/.footer-->
    <!--/.footer-bottom--> 

</body>
</html>

