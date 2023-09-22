<!DOCTYPE html>
<head> 
    <meta charset="utf-8*">
    <meta http-equiv="X-UA-compatable" concept="IF-edge*">
    <meta name="viewport" contant="wid =1.0">
      <title>login </title>  
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <link rel="stylesheet" href="../assets/css/login.css">    
</head>

<body>  
    
  <form action="./home.jsp" id="loginform"> 

    <h1 class="h3 mb-3 fw-normal">Log in</h1> 

      
      <input type="email" id="email" placeholder="email"  required autofocus><br><br>
      <input type="password" id="password" placeholder="password" required  autofocus ><br><br>
      
    <button type="submit"> Log in</button>
  </form> 
  <!--  
  <script> 


     const cheakin =document.getElementById("loginform");
     

     cheakin.onsubmit =function(e){
        e.preventDefult();

              
 
 
      const email=ducument.getElementById("email").value;

      const password=ducument.getElementById("password").value;

      const storagedata=JSON.parse(localStorage.getItem("user_list"));



      let success;
      for(i=0; i<storagedata.length; i++){
        if((storagedata[i].email === email) && (storagedata[i].password === password)){
          success=true;
          break;
        }
      }
      if(success){
        alert("login successful");
        window.location.href="../pages../home.jsp";
      }
      else{
        alert("login fail");
      }
      }

    

</script>
-->

</body>
