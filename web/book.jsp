

<html>
<head>
<script src="jquery-3.0.0.min.js" type="text/javascript"></script>
	</head> 
<script>

$(document).ready(function(){
    $("input").focus(function(){
        $(this).css("background-color", "#cccccc");
    });
    $("input").blur(function(){
        $(this).css("background-color", "#ffffff");
    });
});
</script>


<style>
.button {
	-moz-box-shadow: 0px 10px 14px -7px #276873;
	-webkit-box-shadow: 0px 10px 14px -7px #276873;
	box-shadow: 0px 10px 14px -7px #276873;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #599bb3), color-stop(1, #408c99));
	background:-moz-linear-gradient(top, #599bb3 5%, #408c99 100%);
	background:-webkit-linear-gradient(top, #599bb3 5%, #408c99 100%);
	background:-o-linear-gradient(top, #599bb3 5%, #408c99 100%);
	background:-ms-linear-gradient(top, #599bb3 5%, #408c99 100%);
	background:linear-gradient(to bottom, #599bb3 5%, #408c99 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#599bb3', endColorstr='#408c99',GradientType=0);
	background-color:#599bb3;
	-moz-border-radius:8px;
	-webkit-border-radius:8px;
	border-radius:8px;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:20px;
	font-weight:bold;
	padding:13px 32px;
	text-decoration:none;
	text-shadow:0px 1px 0px #3d768a;
}
.button:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #408c99), color-stop(1, #599bb3));
	background:-moz-linear-gradient(top, #408c99 5%, #599bb3 100%);
	background:-webkit-linear-gradient(top, #408c99 5%, #599bb3 100%);
	background:-o-linear-gradient(top, #408c99 5%, #599bb3 100%);
	background:-ms-linear-gradient(top, #408c99 5%, #599bb3 100%);
	background:linear-gradient(to bottom, #408c99 5%, #599bb3 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#408c99', endColorstr='#599bb3',GradientType=0);
	background-color:#408c99;
}
.button:active {
	position:relative;
	top:1px;
}
</style>

<body background="http://www.aadhunikschool.in/wp-content/uploads/Grey-website-background.jpg">	

<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*,java.text.*" %>
<%
Date dNow = new Date( );
   SimpleDateFormat ft =new SimpleDateFormat ("E yyyy.MM.dd 'at' hh:mm:ss a zzz");
   out.println( "<h2 align=\"center\"><font color='red'>" + ft.format(dNow) + "</h2>");
String  s1  = (String) session.getAttribute("var");   

%>

	<form action="e">
<center><font color="red" size="10">BOOK YOUR APPOINTMENT</font></center>
<br>
<br>
<center><font color="red" size="5">NAME</font></center>
<br>
<br>
<center><input type="text" name="name"></center>
<br>
<br>

<center><font color="red" size="5">AGE</font></center>
<br>
<br>
<center><input type="text"  name="age"></center>
<br>
<br>
<center><font color="red" size="5">EMAIL-ID</font></center>
<br>
<br>
<center><input type="text" name="email"></center>
<br>
<br>

<center><font color="red" size="5">TIME</font></center>
<br>
<br>
<center><input type="text" name="time"></center>
<br>
<br>
           <center> <button  type="submit" class="button" >SUBMIT</button></center>

</form>

    <br>
<br>
<br>
<br>
<br>
<center><a href="his.jsp"><font color="red">home</a></center>

</body>
</html>