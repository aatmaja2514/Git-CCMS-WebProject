<!-- <script
    src="https://code.jquery.com/jquery-3.3.1.js"
    integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
    crossorigin="anonymous">
</script>
<script> 
$(function(){
  $("#nav").load("assets/include/nav.jsp"); 
});
</script>  -->
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>CCMS</title>
  
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <link href="assets/styles.css" rel="stylesheet">
  <script src="assets/slideshow.js"></script>
  
</head>

<body>
  <header id="header" class="d-flex align-items-center">
    <div class="container d-flex align-items-center justify-content-between">

      <!-- <a href="index.jsp" class="logo mr-auto"><img src="assets/img/logo.png" alt=""></a> -->
      <!-- Uncomment below if you prefer to use a text logo -->
      <h1 class="logo mr-auto"><a href="index.jsp">SPORTIFY</a></h1>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="#centertext">Home</a></li>
          <li><a class="nav-link scrollto" href="#about">About</a></li>
          <li><a class="nav-link scrollto" href="clubs.jsp">Clubs</a></li>
          <li><a class="nav-link scrollto" href="#shop">Shop</a></li>
          <li><a class="nav-link scrollto" href="#team">Our Staff</a></li>
          <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
          <!-- <li><a class="nav-link scrollto" href="#admin">Admin</a></li> -->

          <!-- <li class="nav-link scrollto"><a href="#"><span>Log In as</span> <i class="bi bi-chevron-down"></i></a> -->
           <ul>
              <li class="nav-link scrollto dropdown"><a href="#"><span>Log In as</span> <i class="bi bi-chevron-down"></i></a>
                <ul>
                  <li><a href="#">Coach</a></li>
                  <li><a href="#">Member</a></li>
                  <li><a href="#">Team Member</a></li>
                  <li><a href="admin_login.jsp">Administrator</a></li>
                </ul>
              </li>
              
           </ul>
          

        </ul>        
      </nav>
    </div>  
  </header>

  
  <section id="centertext">
    <!-- <canvas class="webgl"></canvas> -->
    <div class="centertext-container">
      <div data-aos="fade-in">
        <div class="centertext-logo">
          <!-- <img class="" src="assets/img/logo.png" alt="Imperial"> -->
        </div>

        <h1>Cricket Academy</h1>
        <h2>
          <img src="assets/images/open_quotes.png" height="40" width="30" style="padding-bottom: 20px;">
          Champions are made not born
          <img src="assets/images/close_quotes.png" height="40" width="30" style="padding-bottom: 20px;">
        </h2>
        <div class="actions">
          <a href="login.jsp" class="btn-login">Log In</a>
          <a href="clubs.jsp" class="btn-register">Join club</a>
        </div>
      </div>
    </div>
  </section>
  
  <main id="main">

    
    <section id="about">
      <div class="container" data-aos="fade-up">
        <div class="row">
          <div class="col-md-12">
            <h3 class="section-title">About Us</h3>
            <div class="section-title-divider"></div>
          </div>
        </div>
      </div>
      <div class="container about-container" data-aos="fade-up" data-aos-delay="200">
        <div class="row">

          <div class="col-lg-6 about-img"><br>
            <img src="assets/img/about-img.jpg" alt="logoimg">
          </div>

          <div class="col-md-6 about-content"><br>
            <h2 class="about-title">Thank you for visiting sportify.com.</h2>
            <p class="about-text">
              We have come a long way from our modest and measured beginnings on the back of a commitment to quality that has never been compromised and a focus that has never wavered. SCA (Sportify Cricket Academt) has always strived to deliver only the best for our esteemed members and it is that vow that has led to the clubs prosperity. SCA is one of the finest cricket academy in every aspect spanning across the facilities provided by us including practice session management, challenging other clubs and more.
            </p>
            <p class="about-text">
              Here at the SCA, our mission is to help cricketers and their respective clubs to manage themselves. We here provide excellent coaching facilities with well qualified staff, well curated pitch with qualified pitch curators and groundstaffs. Aside from that, the club has pushed forward with a surfeit of new initiatives including physiotherapist and medical staff for fitness and health maintenance of club members. Our sole endeavour is to ensure that you have a fantastic experience whilst learning the sport.
            </p>
            
          </div>
        </div>
      </div>
    </section>

   
    <section id="services">
      <div class="container">
        <div class="row" data-aos="fade-up">
          <div class="col-md-12">
            <h3 class="section-title">Our Services</h3>
            <div class="section-title-divider"></div>
            <p class="section-description">Services offered by Sportify</p>
          </div>
        </div>

        <div class="row" data-aos="fade-up" data-aos-delay="200">
          <div class="col-lg-4 col-md-6 service-item">
            <div class="service-icon"><i class="bi bi-briefcase"></i></div>
            <h4 class="service-title"><a href="">Service1</a></h4>
            <p class="service-description">abc</p>
          </div>
          <div class="col-lg-4 col-md-6 service-item">
            <div class="service-icon"><i class="bi bi-card-checklist"></i></div>
            <h4 class="service-title"><a href="">Service2</a></h4>
            <p class="service-description">abc</p>
          </div>
          <div class="col-lg-4 col-md-6 service-item">
            <div class="service-icon"><i class="bi bi-bar-chart"></i></div>
            <h4 class="service-title"><a href="">service3</a></h4>
            <p class="service-description">abc</p>
          </div>
          <div class="col-lg-4 col-md-6 service-item">
            <div class="service-icon"><i class="bi bi-binoculars"></i></div>
            <h4 class="service-title"><a href="">Service4</a></h4>
            <p class="service-description">dfet4t</p>
          </div>
          <div class="col-lg-4 col-md-6 service-item">
            <div class="service-icon"><i class="bi bi-brightness-high"></i></div>
            <h4 class="service-title"><a href="">service5</a></h4>
            <p class="service-description">ggre</p>
          </div>
          <div class="col-lg-4 col-md-6 service-item">
            <div class="service-icon"><i class="bi bi-calendar4-week"></i></div>
            <h4 class="service-title"><a href="">servi6</a></h4>
            <p class="service-description">tgrhfdgb</p>
          </div>
        </div>
      </div>
    </section><!-- End Services Section -->

    <!-- ======= Subscrbe Section ======= -->
    <section id="subscribe">
      <div class="container" data-aos="fade-up">
        <div class="row">
          <div class="col-md-8">
            <h3 class="subscribe-title">Recruitment Available</h3>
            <p class="subscribe-text">Lorem ipsum dolor sit, amet consectetur adipisicing </p>
          </div>
          <div class="col-md-4 subscribe-btn-container">
            <a class="subscribe-btn" href="#">Apply Now</a>
          </div>
        </div>
      </div>
    </section><!-- End Subscrbe Section -->

    
    <section id="contact">
      <div class="container" data-aos="fade-up">
        <div class="row">
          <div class="col-md-12">
            <h3 class="section-title">Contact Us</h3>
            <div class="section-title-divider"></div>
            <p class="section-description">Feel free to contact us.</p>
          </div>
        </div>

        <div class="row justify-content-center">
          <div class="col-lg-3 col-md-8">
            <div class="info">
              <div>
                <i class="bi bi-person"></i>
                <p>Kiran D'souza</p>
              </div>

              <div>
                <i class="bi bi-envelope"></i>
                <p>kiran@gmail.com</p>
              </div>

              <!-- <div>
                <i class="bi bi-phone"></i>
                <p>+91 98765*****</p>
              </div> -->

            </div>
          </div>

          <div class="col-lg-5 col-md-8">
            <div class="form">
              <form action="#" method="post" role="form" class="contact-form">
                <div class="form-group">
                  <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required>
                </div>
                <div class="form-group mt-3">
                  <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required>
                </div>
                <div class="form-group mt-3">
                  <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" required>
                </div>
                <div class="form-group mt-3">
                  <textarea class="form-control" name="message" rows="5" placeholder="Message" required></textarea>
                </div>
                <div class="my-3">
                  <div class="error-message"></div>
                  <div class="sent-message">Your message has been sent. Thank you!</div>
                </div>
                <div class="text-center"><button type="submit">Send </button></div>
              </form>
            </div>
          </div>

        </div>
      </div>
    </section>

  </main>

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
  </footer><!-- End Footer -->


  <!-- Vendor JS Files -->
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/typed.js/typed.min.js"></script>
  <script src="assets/vendor/contact-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/scripts.js"></script>

</body>

</html>