<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>CCMS</title>
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
 <link href="assets/styles.css" rel="stylesheet">
 <link href="assets/post-login.css" rel="stylesheet">
 <link href="assets/admin_all_clubs.css" rel="stylesheet">
 <script src="assets/slideshow.js"></script>
 <script type="module" src="assets/load_particles.js"></script>
 
</head>

<body>

    <header id="coach-header" class="d-flex align-items-center">
      <!-- <div class="container d-flex align-items-center justify-content-between">  -->
    
           <!--<a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt=""></a> -->
          <!-- Uncomment below if you prefer to use a text logo -->
          <h1 class="logo"><a href="index.html">SPORTIFY</a></h1>
          <!-- <img src="assets/images/logo1-removebg.png" alt="" width="130" height="100"> -->
        <!-- </div>   -->
    </header> 
    <div class="wrapper">
       <div class="sidebar">
            <div class="clublogo">
                <img src="assets/images/logo1-removebg.png" alt="" >
                <h4>club name</h4>
            </div>
            
            <ul>
                <li class="active"><a href=""><i class="bi bi-clipboard-data"></i>Dashboard</a></li>
                <li><a href=""><i class="bi bi-bell-fill"></i>Notifications</a></li>
                <li><a href=""><i class="bi bi-people-fill"></i>All Members</a></li>
                <!-- <li><a href=""><i class="bi bi-person-check-fill"></i>Team</a></li> -->
                <!-- <li><a href="challenge.html"><i class="bi bi-bullseye"></i>Challenge</a></li> -->
                <!-- <li><a href=""><i class="bi bi-clock-fill"></i>Practise Session</a></li> -->
                <li><a href=""><i class="bi bi-filter-square-fill"></i>All Clubs</a></li>
                <li><a href=""><i class="bi bi-cart-plus"></i>Manage Inventory</a></li>
                <li><a href=""><i class="bi bi-person-circle"></i>Edit Profile</a></li>
            </ul>
       </div>
        <!-- sidebar -->

        
        <div class="admin-all-clubs">
            
            <canvas class="webgl" id="admin-webgl"></canvas>
            <div class="admin-search-bar" data-aos="fade-up">
                <input type="text" placeholder="Search Clubs ...">
                <div class="search-btn">
                    <i class="bi bi-search"></i>
                </div>
                <div class="cancel-btn">
                    <i class="bi bi-x"></i>
                </div>
            </div> 
            <!-- admin-search-bar -->
      
            <div class="club-contents">

            </div>

        </div>
     <!-- admin-all-clubs -->
</div>
</div>
    </div>
    <!-- wraper -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="copyright">
            &copy; Copyright <strong>Sportify Cricket Academy</strong>. All Rights Reserved
          </div>
          <div class="credits">
            
            
          </div>
        </div>
      </div>
    </div>
  </footer> 
  <!-- End Footer -->


  <!-- Vendor JS Files -->
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/typed.js/typed.min.js"></script>
  <script src="assets/vendor/contact-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="./assets/scripts.js"></script>
</body>
</html>