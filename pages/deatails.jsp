<!DOCTYPE html>
<html lang="en">
<head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Document</title>
      <link rel="stylesheet" href="../assets/css/deatails.css">
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
  
   <!--div start--> 
   <div class="container">
    <div class="product">
      <img src="../assets/images/bisleri/images (1).jfif">
    </div>
    <div class="right1">
      <h2 class="bottle_name"></h2>
      <h4 class="rupees"></h4>
      <h3>Product Describtion</h3>
      <h5>himalayan pure Mineral Water is not just an ordinary bottle of water, Each drop of pure water is a promise of goodness that goes through a rigorous 
          10 STEP quality process and 114 Quality Tests. It’s one of the select brands that adds minerals and in fact like a true leader has been doing so right since its inception in 1969.</h5>
         

          <a href="../pages/buynow.jsp"><button id="myButton">Buy Now</button></a>

    </div>

   </div>   
          <!-- <div class="container">
            <div class="product">
               <div class="gallery">
                  <img src="../assets/images/bisleri/images (1).jfif" alt=""></a>
               </div>
               <div class="details">
                  <h1 class="bottle_name"></h1>
                  <h2 class="rupees"></h2>
                  <h3>Product Describtion</h3>
                  <h5>himalayan pure Mineral Water is not just an ordinary bottle of water, Each drop of pure water is a promise of goodness that goes through a rigorous 
                     10 STEP quality process and 114 Quality Tests. It’s one of the select brands that adds minerals and in fact like a true leader has been doing so right since its inception in 1969.</h5>
         
                     <a href="../pages/chek out.html"><input type="button" value="Buy now" class="btn"></a> 
                     <a href="../pages/chek out.html"><button>Buy Now</button></a>
               </div>
               
            </div>
          </div> -->

   <!--div end--> 
   
   <!--footer start-->
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
   <!--footer end-->

  <script>

      const url = window.location.search;
      const urlParam = new URLSearchParams(url);
      const pro_name = urlParam.get("name");
      const pro_rs = urlParam.get("rs");

    document.querySelector(".bottle_name").innerHTML = pro_name;
    document.querySelector(".rupees").innerHTML = "₹" + pro_rs;

      

   </script> 
   
  

</body>
</html>

   