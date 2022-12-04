<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>
<style>
.userbox{
	box-sizing: border-box;

	position: absolute;
	width: 400.2px;
	height: 50.96px;
	left: 540.33px;
	top: 332.54px;

	border: 2px solid #000000;
	border-radius: 31px;
	font-weight: 500;
	font-size: 30px;
}
.userpassbox{
	box-sizing: border-box;

	position: absolute;
	width: 400.2px;
	height: 50.96px;
	left: 540.33px;
	top: 432.54px;

	border: 2px solid #000000;
	border-radius: 31px;
	font-weight: 500;
	font-size: 30px;
}
.userloginbox{
	box-sizing: border-box;

	position: absolute;
	width: 200.2px;
	height: 55.96px;
	left: 650.33px;
	top: 532.54px;

	border: 2px solid #517D3D;
	border-radius: 26px;
	font-weight: 500;
	font-size: 30px;
}
</style>
<body style="background-image:url(images/Group15.svg); background-repeat: no-repeat;">


<div class ="Loginpage">

<form method="post" action = "checkuserlogin">


<div ><input class="userbox" type = "text" placeholder="Username" name = "uname" required></div>

<input class="userpassbox" type = "password" placeholder="Password" name = "upwd" required>

<input class="userloginbox" type = "submit" value = "Login" class = "button">


</form>

</div>

<c:out value ="${msg}"/> 
</body>
</html>