<!DOCTYPE html>
<html lang="en">  
    <head>
      <!-- <title>Document</title>
      <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" rel="stylesheet" >
      <link rel="stylesheet" href="../assets/css/chek out.css"> -->

        <title>bisleri</title>
        <link rel="stylesheet" href="../assets/css/check out.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
          integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
      
    </head>
    <body>

      <section>
        <nav>
          <div class="logo">
            <h1>sk wate<span>r</span></h1> 
          </div>
          <ul>
            <li><a href="../pages/home.html">Home</a></li>
            <div class="dropdown"> 
              <button class="dropbn">Products</button>
              <div class="dropdown-link"> 
                <a href="../pages/bisleri.html"><type="bisleri">bisleri</a>
                <a href="../pages/kinley.html">Kinlay</a>
                <a href="../pages/aquafina.html"><type="aquafina">aquafina</type></a>
              </div>
            <li><a href="../pages/about.html">About</a></li>
          </ul>
    
          <div class="icons">
            <i class="fa-solid fa-magnifying-glass"></i>
             <a href="../pages/profile.html"> <i class="fa-solid fa-user"></i></a>
            <!-- <i class="fa-solid fa-cart-shopping"></i> -->
          </div>
        </nav>
    
        
      </section>

        <!-- <header> 
                <i class="fa-solid fa-magnifying-glass"></i>  
                <input type="name" placeholder="search" id="name">
            <div class="navbar">
                      <a href="../pages/home.html">Home</a>
                <div class="dropdown"> 
                      <button class="dropbn">products</button>
                   <div class="dropdown-link"> 
                        <a href="#">Bisleri</a>
                        <a href="#">Kinlay</a>
                        <a href="#">aquafina</a>
                   </div>
                </div>
                       <a href="#">About</a> 
            </div>
              <div class="user">
                  <i class="fa-regular fa-circle-user"></i> 
              </div>
        </header>  -->


        <div class="left">
          <div class="left1">
            <img src="../assets/images/bisleri/download (1).jpg">
          </div>
          <div class="right1">
            <p>Bisleri Mineral Water, 10 L Can</p>
            <h3>Rs 110</h3>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star-sharp-half-stroke"></i>
          </div>
      
         </div> 
<div class="container">
  <form id="cheakoutform">
    <lable for="name">Name:</lable>
    <input type="text" id="name" required>

     <lable for="email">Email:</lable>
    <input type="email" id="email" required>

    <lable for="address">Address:</lable>
    <input type="text" id="name" required>

    <lable for="city">City:</lable>
    <input type="text" id="city" required>

    <lable for="phone number">Phone number:</lable>
    <input type="number" id="number" required>

   
    <div class="payment">
      <h5>payment method</h5>
   <label>
  <input type="radio" name="option" value="option1">
  Cash on Delivery
  </label>
  <label>
  <input type="radio" name="option" value="option2">
  UPI
</label>


    </div>
    <button type="submit"> check out</button>
    </div>
    

   


  </form>
</div>

    

      <footer>  
            <div class="ca">
              <div class="cs">
                 <p>Contacts</p>
                 <p><i class="fa-solid fa-location-dot"></i>21 revolution street,chennai</p>
                 <p><i class="fa-solid fa-phone"></i>+91 12345 67890</p>
                 <p><i class="fa-solid fa-envelope"></i>Support@company.com</p>
               </div>
             <div class="ac"> 
               <p>About the company<br><br>
                Nowadays people strugled a lot to drink pure water.so, I give to use a purified water in a door delivary.</p>
              </div>
          </div>
          </footer>  

<script>
  document.getElementById("checkoutForm").addEventListener("submit", function(event) {
  event.preventDefault(); // Prevent form submission
  
  
  var name = document.getElementById("name").value;
  var email = document.getElementById("email").value;
  var address = document.getElementById("address").value;
  var city = document.getElementById("city").value;
  var phonenumber = document.getElementById("phone number").value;
  
  // Perform validation
  if (!name || !email || !address || !city || !phonenumber) {
    alert("Please fill in all fields.");
    return;
  }
  
  // Perform further processing (e.g., sending data to a server)
  alert("Order placed successfully!");
  
  // Reset form
  document.getElementById("checkoutForm").reset();
});
</script>
    </body>
</html>