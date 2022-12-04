<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>

<link rel="preconnect" href="https://fonts.googleapis.com"> 
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin> 
<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<head>
<meta charset="UTF-8">
<title>Donate Now</title>
</head>
<style>
h1{
	display:flex;
	flex-direction:column;
	align-items:center;
}
</style>
<body>
	
	

	
	
	<h1>Register Now</h1>
	<div class = "decoratorinform"></div>
	<form action="adduser" method="post" modelAttribute="use">
    
    <div class="decoratorinform"></div>
    <h3>Personal Details</h3>
    <p class="lable">Full Name</p>
    <input name="fullname" required ="required"/>
   

    <div class="genderandage">
        <p class="lable">Gender</p>
        <select name ="gender" required="required">
            <option value="none" selected>Gender</option>
            <option value="male">Male</option>
            <option value="female">Female</option>
            <option value="other">other</option>
        </select>
        
    </div>


    <h3>Contact & Address</h3>
    <p>please provide a phone number and address of pickup location, so our team will contact you and pickup the food once the donation is confirmed</p>
    <p class="lable">Phone Number</p>
    <input name ="phoneNumber" required="required"></input>
     <p class="lable">Email Id</p>
    <input name ="mail" required="required"></input>
    <p class="lable">Address</p>
    <input name ="address" required="required"></input>
    <p class="lable">City</p>
    <input name= "city" required="required"></input>
    
    <p class="lable">State</p>
    <input name = "state" required="required"></input>
    <br>
    <input class ="formsubmitbutton" type="submit" value="Submit" class ="button">
    
    <p class="lable">Password</p>
    <input name = "password" required="required"></input>
    <br>
    <input class ="formsubmitbutton" type="submit" value="Submit" class ="button">
    
    <p class="lable">confirm password</p>
    <input name = "confirmpassword" required="required"></input>
    <br>
    <input class ="formsubmitbutton" type="submit" value="Submit" class ="button">
</form>
</body>
</html> 