<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup</title>
</head>
<body>
    <h1>Signup</h1>
       
       <form action="saveuser" method="post">
		FirstName: <input type="text" name="firstName"  /><br><br> 
		LastName: <input type = "text" name="lastName"  /><br><br>
		
		Email: <input type="text" name="email"/><br><br> 
		Password: <input type="password" name="password"/><br><br> 
		Confirm Password: <input type="password" name="confirmPassword"/><br><br>
		Gender: <br><br>
		<input type="radio" id="male" name="gender" value="male">
        <label for="male">Male</label><br>
        <input type="radio" id="female" name="gender" value="female">
        <label for="female">Female</label><br>
        <input type="radio" id="other" name="gender" value="other">
        <label for="other">Other</label><br><br>
        
        Contact no.: <input type="tel" id="contact" name="contact" placeholder="Enter your contact number" pattern="[0-9]{10}" ><br><br>
	
		<input type="submit" value="Signup"/>
	
	   </form>
    <br><br>
   
   <a href="login">Login</a>
</body>
</html>

