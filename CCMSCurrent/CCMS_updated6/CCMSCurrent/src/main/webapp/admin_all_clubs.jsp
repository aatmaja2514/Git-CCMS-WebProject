<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>

 <%
 
 String url = "jdbc:mysql://localhost:3306/ccms";
 String user = "root";
 String pwd = "271879";

 Class.forName("com.mysql.cj.jdbc.Driver");
 
%>
 
 
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
 <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
 
</head>

<body>
    <header id="coach-header" class="d-flex align-items-center">
     
          <h1 class="logo"><a href="index.html">SPORTIFY</a></h1>
          
    </header> 
    <div class="wrapper">
       <div class="sidebar">
            <div class="clublogo">
                <img src="assets/images/logo1-removebg.png" alt="" >
                <h4>club name</h4>
            </div>
            
            <ul>
                <li ><a href=""><i class="bi bi-clipboard-data"></i>Dashboard</a></li>
                <li><a href="admin_notifications.jsp"><i class="bi bi-bell-fill"></i>Notifications</a></li>
                <li><a href=""><i class="all_amembers.jsp"></i>All Members</a></li>
                <li class="active"><a href="admin_all_clubs.jsp"><i class="bi bi-filter-square-fill"></i>All Clubs</a></li>
                <li><a href=""><i class="bi bi-person-circle"></i>Edit Profile</a></li>
                <li><a href="logout.jsp" ><i class="bi bi-box-arrow-left"></i>Logout</a></li>
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
            <button class="add-btn">Add Club</button>
            <!-- admin-search-bar -->
      
            <div class="club-contents" data-aos = "fade-up" data-aos-delay ="200">
              <div class="new-club"> <!--box-->
                <img src="assets\images\GameSwingers.png" alt="">
                <div class = "image_overlay"> <!--boxcontent-->
                  <div class="overlay_content"> <!--content-->
                    <ul class="social">
                        <a href=""> <h3 class="List"><i class="bi bi-eye-fill" ></i> View Club</h3></a>
                      
                            <a href=""> <h3 class="List"><i class="bi bi-trash-fill"></i> Delete Club</h3></a>
                     
                    </ul>
                    </div>
  
                  </div>
                 
              </div>
              
              <div class="new-club"> <!--box-->
                <img src="assets\images\SuperNovas.png" alt="">
                <div class = "image_overlay"> <!--boxcontent-->
                <div class="overlay_content"> <!--content-->
                  <ul class="social">
                      <a href=""> <h3 class="List"><i class="bi bi-eye-fill" ></i> View Club</h3></a>
                        <!-- <a href=""> <h3 class="List"><i class="bi bi-eye-fill" ></i></i> View Coaches</h3></a> -->
                          <a href=""> <h3 class="List"><i class="bi bi-trash-fill"></i> Delete Club</h3></a>
                   
                  </ul>
                  </div>

                </div>
              </div>
              <div class="new-club">
                <img src="assets\images\SpartanStrikers.png" alt="">
                <div class = "image_overlay"> <!--boxcontent-->
                  <div class="overlay_content"> <!--content-->
                    <ul class="social">
                        <a href=""> <h3 class="List"><i class="bi bi-eye-fill" ></i> View Club</h3></a>
                          <!-- <a href=""> <h3 class="List"><i class="bi bi-eye-fill" ></i></i> View Coaches</h3></a> -->
                            <a href=""> <h3 class="List"><i class="bi bi-trash-fill"></i> Delete Club</h3></a>
                     
                    </ul>
                    </div>
  
                  </div>
                
              </div>
              <div class="new-club">
                <img src="assets\images\ThunderWolves.png" alt="">
                <div class = "image_overlay"> <!--boxcontent-->
                  <div class="overlay_content"> <!--content-->
                    <ul class="social">
                        <a href=""> <h3 class="List"><i class="bi bi-eye-fill" ></i> View Club</h3></a>
                          <!-- <a href=""> <h3 class="List"><i class="bi bi-eye-fill" ></i></i> View Coaches</h3></a> -->
                            <a href=""> <h3 class="List"><i class="bi bi-trash-fill"></i> Delete Club</h3></a>
                     
                    </ul>
                    </div>
  
                  </div>
                
              </div>
              <div class="new-club">
                <img src="assets\images\ThunderWolves.png" alt="">
                <div class = "image_overlay"> <!--boxcontent-->
                  <div class="overlay_content"> <!--content-->
                    <ul class="social">
                        <a href=""> <h3 class="List"><i class="bi bi-eye-fill" ></i> View Club</h3></a>
                          <!-- <a href=""> <h3 class="List"><i class="bi bi-eye-fill" ></i></i> View Coaches</h3></a> -->
                            <a href=""> <h3 class="List"><i class="bi bi-trash-fill"></i> Delete Club</h3></a>
                     
                    </ul>
                    </div>
  
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