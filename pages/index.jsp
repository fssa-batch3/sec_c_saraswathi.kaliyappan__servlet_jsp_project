<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>User Registration/Login</title>
  <link rel="stylesheet" href="../assets/css/style.css">
</head>

<body>
  <div class="full-page">
    <div class="navbar">
    <div>
        <a href="website.html">Sk Water</a>
    </div>
    <nav>
        <ul id="MenuItems">
            <li><a href="#">Login</a></li>
            <li><a href="#">Register</a></li>

            <li><button class="loginbtn" onclick="document.getElementById('login-form').style.display='block'" style="width: auto;">Login</button></li>
        </ul>
    </nav>   
    </div>
    <div class="login-form" class="login-page">
        <div class="form-box">
            <div class="button-box">
                <div id="btn"></div>
                <button type="button" onclick="login()" class="toggle-btn">Login
                </button>
                <button type="button" onclick="register()" class="toggle-btn">Registr</button>    
            </div>

            <form id="register" class="input-group-register">
                <input type="text" class="input-field" placeholder="First Name" required>
                <input type="text" class="input-field" placeholder="Last Name" required>
                <input type="email" class="input-field" placeholder="Email Id" required>
                <input type="password" class="input-field" placeholder="Enter password" required>
                <input type="checkbox" class="check-box"><span>I agree to the terms and conditions</span>
                <button type="submit" class="submit-btn">Registr</button>
            </form>           
        </div>
    </div>
  </div> 
    
</body>
</html>