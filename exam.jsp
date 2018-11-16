<!DOCTYPE html>
<html>
<head>
	<title></title>
	<style type="text/css">
		.login-popup-heading>h4 {
    		color: #258b47;
    		font-size: 18px;
    		line-height: 30px;
		}
		.new_reg_popup, .new_login_popup {
    		border-radius: 2px;
    		min-height: 332px;
    		width: 500px;
    		margin: 0px auto;
		}
		.login-popup-btn {
   			 background: #258b47;
    		border: none;
    		border-radius: 25px;
    		color: #fff;
    		display: block;
    		font-size: 18px;
    		height: 38px;
    		line-height: 28px;
    		margin: 20px auto 5px;
    		width: 150px;
    		-webkit-transition: all 700ms ease;
    		-moz-transition: all 700ms ease;
    		-ms-transition: all 700ms ease;
    		-o-transition: all 700ms ease;
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
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" >
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">CodeHub</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  
    
  </div>
</nav>

<%@ page import ="java.sql.*" %>
<br/>
<%
	String test_id=request.getParameter("test_id");
	Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ncp","root", "kuttupappy");
    Statement st = con.createStatement();

    

	session.setAttribute("test_id",test_id);

%>
<div class="login-popup-wrap new_login_popup"> 
                        <div class="login-popup-heading text-center">
                            <h3 style="color: green"><i class="fa fa-pencil" aria-hidden="true"></i> Test </h3>                        
                        </div>

<center>
	<br>
	<br>
<form id="loginMember" role="form" method="post" action="result.jsp">
	<%
		ResultSet qs1;
    	qs1 = st.executeQuery("select qs1 from test where t_id='" + test_id + "'");
    

    	while (qs1.next()) {
    		out.println(qs1.getString("qs1"));
		}
	%>
	
	<br/><input type="text" name="ans1"><br/><br/>

	<%
	ResultSet qs2;
    qs2 = st.executeQuery("select qs2 from test where t_id='" + test_id + "'");
    

    while (qs2.next()) {
    	out.println(qs2.getString("qs2"));
	}

	%>

	<br/><br/><input type="text" name="ans2"><br/><br/>

	<%
	ResultSet qs3;
    qs3 = st.executeQuery("select qs3 from test where t_id='" + test_id + "'");
    

    while (qs3.next()) {
    	out.println(qs3.getString("qs3"));
	}

	%>

	<br/><br/><input type="text" name="ans3"><br/><br/>


	<%
	ResultSet qs4;
    qs4 = st.executeQuery("select qs4 from test where t_id='" + test_id + "'");
    

    while (qs4.next()) {
    	out.println(qs4.getString("qs4"));
	}

	%>

	<br/><br/><input type="text" name="ans4"><br/><br/>


	<%
	ResultSet qs5;
    qs5 = st.executeQuery("select qs5 from test where t_id='" + test_id + "'");
    

    while (qs5.next()) {
    	out.println(qs5.getString("qs5"));
	}

	%>

	<br/><br/><input type="text" name="ans5"><br/><br/>

	<br/>
	<input type="submit" value="Submit">


</form>

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
</body>
</html>