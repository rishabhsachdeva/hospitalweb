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
   border-top: 1px solid #96d1f8;
   background: #65a9d7;
   background: -webkit-gradient(linear, left top, left bottom, from(#3e779d), to(#65a9d7));
   background: -webkit-linear-gradient(top, #3e779d, #65a9d7);
   background: -moz-linear-gradient(top, #3e779d, #65a9d7);
   background: -ms-linear-gradient(top, #3e779d, #65a9d7);
   background: -o-linear-gradient(top, #3e779d, #65a9d7);
   padding: 5.5px 11px;
   -webkit-border-radius: 17px;
   -moz-border-radius: 17px;
   border-radius: 17px;
   -webkit-box-shadow: rgba(0,0,0,1) 0 1px 0;
   -moz-box-shadow: rgba(0,0,0,1) 0 1px 0;
   box-shadow: rgba(0,0,0,1) 0 1px 0;
   text-shadow: rgba(0,0,0,.4) 0 1px 0;
   color: #e60000;
   font-size: 12px;
   font-family: 'Lucida Grande', Helvetica, Arial, Sans-Serif;
   text-decoration: none;
   vertical-align: middle;
   }
.button:hover {
   border-top-color: #28597a;
   background: #28597a;
   color: #02cccc;
   }
.button:active {
   border-top-color: #32435e;
   background: #32435e;
   }


#i2
{
position:absolute;
top:100px;
left:30px;
}
#i3
{
position:absolute;
top:100px;
right:100px;
}
</style>
<body background="http://www.aadhunikschool.in/wp-content/uploads/Grey-website-background.jpg">	
	<form action="q">
<center><font color="red" size="10">SIGNUP</font></center>
<br>
<br>
<center><font color="red" size="5">NAME</font></center>
<br>
<br>
<center><input type="text" name="name"></center>
<br>
<br>
<center><font color="red" size="5">PASS</font></center>
<br>
<br>
<center><input type="text" name="pass"></center>
<br>
<br>
<center><font color="red" size="5">EMAIL-ID</font></center>
<br>
<br>
<center><input type="text"  name="email"></center>
<br>
<br>
<center><font color="red" size="5">BLOOD-GROUP</font></center>
<br>
<br>
<center><input type="text" name="blood"></center>
<br>
<br>
<center><button type="submit" class="button" name="submit">SUBMIT</center>
</form>
<div id="i2">
<img src="http://maratonadiravenna.com/wp/wp-content/uploads/2014/01/Welcome-1a.jpg" height="100" width="230" >
</div>

<div id="i3">
<img src="http://maratonadiravenna.com/wp/wp-content/uploads/2014/01/Welcome-1a.jpg" height="100" width="230" >
</div>

<a href="login.jsp"><font color="red">GO BACK TO LOGIN PAGE</a>


</body>
</html>