<%-- 
    Document   : client
    Created on : Apr 24, 2021, 7:27:09 PM
    Author     : user
--%>

<%@page import="model.dbcon"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%@include file="sessions.jsp" %>
<!DOCTYPE html>
<html>
    <head><title>Students</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <!-- Bootstrap-->
	<link rel = "Stylesheet" type="text/css" href="css/ bootstrap.min.css">
	<!-- Site Icons -->
        <link rel="shortcut icon" href="images/logo.png" type="image/x-icon">
       <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

	<!-- Custom-Files -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<link href="css/font-awesome.min.css" rel="stylesheet">
	<!-- /Custom-Files -->

	<!-- Fonts -->
	<link href="//fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	 rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
    
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
   
    </head>
<body>
    
    <header id="home">
		<div class="container">
		<div class="header d-lg-flex justify-content-between align-items-center py-sm-3 py-2 px-sm-2 px-1">
	<!-- logo -->
			<div id="logo">
				<h1><a href="index.html"><img src="images/logo.png" ></a></h1>
			</div>
	<!-- /logo -->
	<!-- navi -->
			<div class="nav_w3ls ml-lg-5">
				<nav>
					<label for="drop" class="toggle">Menu</label>
					<input type="checkbox" id="drop" />
					<ul class="menu">
						<li><a href="index.html">Home</a></li>
                                                <li><a href="MyAdmin.html">Administration</a></li>
						<li class="ml-xl-5 ml-lg-2 mt-lg-0 mt-sm-4 mt-3">
						    <a href="login.html" class="reqe-button text-uppercase">Login</a>
						</li>
					</ul>
				</nav>
			</div>
	<!-- /navi -->
		</div>
		</div>
	</header>

    <br>
    <div class="container">
        <div class="banner_text_wthree_pvt">
<h1>Clients</h1>
<table class="table" border="1">
<tr class="thead-light">
<th>Dairport</th>
<th>Airport</th>
<th>Start_date-time</th>
<th>End_date-time </th>
<th>Adults</th>
<th>Childrens</th>
<th>Class</th>
<th>Email</th>
<th>Update Client</th>
<th>Delete Client</th>
</tr>
<%
try{
dbcon con = new dbcon();
statement=con.Connection().createStatement();
String sql ="select * from clientdetails";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("dairport") %></td>
<td><%=resultSet.getString("airport") %></td>
<td><%=resultSet.getString("startdatetime") %></td>
<td><%=resultSet.getString("enddatetime") %></td>
<td><%=resultSet.getString("adults") %></td>
<td><%=resultSet.getString("children") %></td>
<td><%=resultSet.getString("vclass") %></td>
<td><%=resultSet.getString("email") %></td>
<td>
    <form action="updateClient.jsp">
        <input type="hidden" name="email" value="<%=resultSet.getString("email")%>">
        <input type="submit" class="btn btn-warning" value="Update">
    </form>

</td>
<td>
   <form action="deleteClient" method="POST">
        <input type="hidden" name="email" value="<%=resultSet.getString("email")%>">
        <input type="submit" class="btn btn-danger" value="Delete">
    </form>  
</td>


</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table></div></div>
<!-- footer -->
	<footer class="footer py-md-5 pt-md-3 pb-sm-5">
		<div class="container">
			<div class="row p-sm-4 px-3 py-3">
				<div class="col-lg-4 footer-top mt-md-0 mt-sm-5">
					<h2>
						<a class="navbar-brand" href="index.html">Phoenix</a>
					</h2>
					<div class="fv3-contact mt-2">
						<p>phoenix.airlines@gmail.com</p>
					</div>
					<div class="fv3-contact my-2">
						<a href="tel:+94 112345678">+94 112345678</a>
					</div>
					<div class="fv3-contact">
						<p>No: 35/3/2,
						<br>Colombo, Sri Lanka.</p>
					</div>
				</div>
				<div class="col-lg-2  col-md-6 mt-lg-0 mt-4">
					<div class="footerv2-w3ls">
						<h3 class="mb-3 w3f_title">Navigation</h3>
						<hr>
						<ul class="list-w3pvtits">
							<li>
								<a href="index.html">Home</a>
							</li>
							<li class="my-2">
								<a href="about.html">About Us</a>
							</li>
							<li class="my-2">
								<a href="experience.html">Experience</a>
							</li>
							<li>
								<a href="contact.html">Contact Us</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-lg-2  col-md-6 mt-lg-0 mt-4">
					<div class="footerv2-w3ls">
						<h3 class="mb-3 w3f_title">Links</h3>
						<hr>
						<ul class="list-w3pvtits">
							<li>
								<a href="about.html">Our Mission</a>
							</li>
							<li class="my-2">
								<a href="experience.html">Explore</a>
							</li>
							<li class="mb-2">
								<a href="feedback.html">Comments</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- /footer -->
	
	<!-- top icon -->
	<a href="#home" class="move-top text-center">
		<span class="fa fa-level-up" aria-hidden="true"></span>
	</a>
</body>
</html>
