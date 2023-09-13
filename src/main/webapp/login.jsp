<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="assets/css/login.css">

</head>
<body>
	
	<form action="login" method="post">
	    <h1>Login Page</h1>
	     
		<lable for="email">Email:</lable>
        <input type="email" id="email" placeholder="Enter your email"  required autofocus>
        <br><br>
        <lable for="password">Password</lable>
        <input type="password" id="password" placeholder="Enter your password"   pattern="[A-Za-z]{1,10}"  required autofocus>
        <br><br>
	
		<button type="login">Login</button>
	</form>

</body>