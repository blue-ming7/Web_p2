<?php

include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){

   header('location:login.php');

}

?>



<!DOCTYPE html>

<html lang="en">

<head>

   <meta charset="UTF-8">

   <meta http-equiv="X-UA-Compatible" content="IE=edge">

   <meta name="viewport" content="width=device-width, initial-scale=1.0">

   <title>About </title>

   <!-- font awesome cdn link  -->

   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom css file link  -->

   <link rel="stylesheet" href="st.css">

</head>

<body>  

<?php include 'header.php'; ?>

<div class="heading">

   <h3>About us</h3>

   <p> <a href="home.php">Home</a> / about </p>

</div>

<section class="about">

   <div class="flex">

      <div class="image">

         <img src="images/about-img.jpg" alt="">

      </div>


      <div class="content">

         <h3>why choose us?</h3>

         <p>Provide updates on new books frequently.</p>

         <p>Easy to use.</p>

         <a href="contact.php" class="btn">Contact us</a>

      </div>

   </div>

</section>

<section class="reviews">

   <h1 class="title">Reviews</h1>

   <div class="box-container">

    <div class="box">

         <img src="images/1.jpeg" alt="pic1">

         <p>This is where I found my new favorite book! Excellent choice and well-structured. </p>

         <div class="stars">

            <i class="fas fa-star"></i>

            <i class="fas fa-star"></i>

            <i class="fas fa-star"></i>

            <i class="fas fa-star"></i>

            <i class="fas fa-star-half-alt"></i>

         </div>

         <h3>Sarah</h3>

      </div>

      <div class="box">

         <img src="images/2.jpg" alt="pic2">

         <p>A fantastic bookshop that has plenty to offer everyone. I purchased every book I need.</p>

         <div class="stars">

            <i class="fas fa-star"></i>

            <i class="fas fa-star"></i>

            <i class="fas fa-star"></i>

            <i class="fas fa-star"></i>

            <i class="fas fa-star-half-alt"></i>

         </div>

         <h3>Anna</h3>

      </div>



      <div class="box">

         <img src="images/3.avif" alt="pic3">

         <p> Great selection of books and a welcoming environment. I could stay here for hours</p>

         <div class="stars">

            <i class="fas fa-star"></i>

            <i class="fas fa-star"></i>

            <i class="fas fa-star"></i>

            <i class="fas fa-star"></i>

            <i class="fas fa-star-half-alt"></i>

         </div>

         <h3>Jessica</h3>

      </div>



      <div class="box">

         <img src="images/4.jpeg" alt="pic4">

         <p>It's always fun to look around. found a ton of hidden treasures. </p>

         <div class="stars">

            <i class="fas fa-star"></i>

            <i class="fas fa-star"></i>

            <i class="fas fa-star"></i>

            <i class="fas fa-star"></i>

            <i class="fas fa-star-half-alt"></i>

         </div>

         <h3>David</h3>

      </div>



      <div class="box">

         <img src="images/5.jpeg" alt="pic5">

         <p>Amazing assortment of modern and old writers. I heartily suggest!</p>

         <div class="stars">

            <i class="fas fa-star"></i>

            <i class="fas fa-star"></i>

            <i class="fas fa-star"></i>

            <i class="fas fa-star"></i>

            <i class="fas fa-star-half-alt"></i>

         </div>

         <h3>Michael </h3>

      </div>



      <div class="box">

         <img src="images/6.webp" alt="pic6">

         <p>This is the ideal location to discover your next adventure inside the pages. I will most certainly return</p>

         <div class="stars">

            <i class="fas fa-star"></i>

            <i class="fas fa-star"></i>

            <i class="fas fa-star"></i>

            <i class="fas fa-star"></i>

            <i class="fas fa-star-half-alt"></i>

         </div>

         <h3> Thomas </h3>

      </div>



   </div>



</section>



<section class="authors">



   <h1 class="title"> authors</h1>



   <div class="box-container">



      <div class="box">

         <img src="images\a1.jpeg" alt="authors1">

         <div class="share">

            <a href="#" class="fab fa-facebook-f"></a>

            <a href="#" class="fab fa-twitter"></a>

            <a href="#" class="fab fa-instagram"></a>

            <a href="#" class="fab fa-linkedin"></a>

         </div>

         <h3>Mary Westmacott</h3>

      </div>



      <div class="box">

         <img src="images/a2.webp" alt="author2">

         <div class="share">

            <a href="#" class="fab fa-facebook-f"></a>

            <a href="#" class="fab fa-twitter"></a>

            <a href="#" class="fab fa-instagram"></a>

            <a href="#" class="fab fa-linkedin"></a>

         </div>

         <h3>Rick Riordan</h3>

      </div>



      <div class="box">

         <img src="images/a3.jpeg" alt="author3">

         <div class="share">

            <a href="#" class="fab fa-facebook-f"></a>

            <a href="#" class="fab fa-twitter"></a>

            <a href="#" class="fab fa-instagram"></a>

            <a href="#" class="fab fa-linkedin"></a>

         </div>

         <h3>Lewis Carroll </h3>

      </div>



      <div class="box">

         <img src="images/a4.webp" alt="author4">

         <div class="share">

            <a href="#" class="fab fa-facebook-f"></a>

            <a href="#" class="fab fa-twitter"></a>

            <a href="#" class="fab fa-instagram"></a>

            <a href="#" class="fab fa-linkedin"></a>

         </div>

         <h3>Khaled Hosseini </h3>

      </div>



      <div class="box">

         <img src="images/a5.jpg" alt="author5">

         <div class="share">

            <a href="#" class="fab fa-facebook-f"></a>

            <a href="#" class="fab fa-twitter"></a>

            <a href="#" class="fab fa-instagram"></a>

            <a href="#" class="fab fa-linkedin"></a>

         </div>

         <h3>Gus Lee </h3>

      </div>



      <div class="box">

         <img src="images/a6.webp" alt="author6">

         <div class="share">

            <a href="#" class="fab fa-facebook-f"></a>

            <a href="#" class="fab fa-twitter"></a>

            <a href="#" class="fab fa-instagram"></a>

            <a href="#" class="fab fa-linkedin"></a>

         </div>

         <h3>Rachel Kushner </h3>

      </div>

   </div>

</section>


<?php include 'footer.php'; ?>

<!-- custom js file link  -->

<script src="js/script.js"></script>

</body>

</html>