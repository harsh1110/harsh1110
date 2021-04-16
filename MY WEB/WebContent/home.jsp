<link
  rel="stylesheet"
  href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
  integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay"
  crossorigin="anonymous"
/>
<link
  href="https://fonts.googleapis.com/css?family=Poppins:200i,300,400&display=swap"
  rel="stylesheet"
/>
<link
  href="stylesheet.css"
  rel="stylesheet"
/>
<link
  href="https://fonts.googleapis.com/css?family=Raleway:700&display=swap"
  rel="stylesheet"
/>
<!-- START NAV -->

<nav id="navbar" class="nav">
  <ul class="nav-list">
    <li>
      <a href="#welcome-section"><i class="fas fa-home"></i>  Home</a>
    </li>
    <li>
      <a href="#projects"><i class="fas fa-briefcase"></i>  Work</a>
    </li>
    <li>
      <a href="#contact"><i class="fas fa-phone-square"></i>  Contact</a>
    </li>
    <li>
      <a href="#contact"><i class="fas fa-user-circle"></i>  Account</a>
    </li>


  </ul>
</nav>

<!-- END NAV -->

<!-- START WELCOME SECTION -->

<section id="welcome-section" class="welcome-section">
  <h1>Hey I am Harsh</h1>
  <p>a web developer</p>
</section>
<section class="heading" id="projects">
<h2><u>Some Project Made By Me</u></h2>
</section>

<!-- END WELCOME SECTION -->

<!-- START PROJECTS SECTION -->
<section class="Project-section">
<div class="img-slider">
  <div class="slide active">
    <img src="IMG/1.jpg" alt="">
    <div class="info">
      <h2>Tic-Tac-Toe Game</h2>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
    </div>
  </div>
  <div class="slide">
    <img src="IMG/2.jpg" alt="">
    <div class="info">
      <h2>GUI Calculator</h2>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
    </div>
  </div>
  <div class="slide">
    <img src="IMG/3.jpg" alt="">
    <div class="info">
      <h2>Face-Recognization System</h2>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
    </div>
  </div>
  <div class="slide">
    <img src="IMG/4.jpg" alt="">
    <div class="info">
      <h2>Number Gusseing Game</h2>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
    </div>
  </div>
  <div class="slide">
    <img src="IMG/5.jpg" alt="">
    <div class="info">
      <h2>Student Managment System</h2>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
    </div>
  </div>
  <div class="navigation">
    <div class="btn active"></div>
    <div class="btn"></div>
    <div class="btn"></div>
    <div class="btn"></div>
    <div class="btn"></div>
  </div>
</div>
</section>

<!--java script START-->
<script type="text/javascript">
  var slides = document.querySelectorAll('.slide');
  var btns = document.querySelectorAll('.btn');
  let currentSlide = 1;

  // Javascript for image slider manual navigation
  var manualNav = function(manual){
    slides.forEach((slide) => {
      slide.classList.remove('active');

      btns.forEach((btn) => {
        btn.classList.remove('active');
      });
    });

    slides[manual].classList.add('active');
    btns[manual].classList.add('active');
  }

  btns.forEach((btn, i) => {
    btn.addEventListener("click", () => {
      manualNav(i);
      currentSlide = i;
    });
  });

  // Javascript for image slider autoplay navigation
  var repeat = function(activeClass){
    let active = document.getElementsByClassName('active');
    let i = 1;

    var repeater = () => {
      setTimeout(function(){
        [...active].forEach((activeSlide) => {
          activeSlide.classList.remove('active');
        });

      slides[i].classList.add('active');
      btns[i].classList.add('active');
      i++;

      if(slides.length == i){
        i = 0;
      }
      if(i >= slides.length){
        return;
      }
      repeater();
    }, 4000);
    }
    repeater();
  }
  repeat();
  </script>

<!--java script END-->


<!-- END PROJECTS SECTION -->

<!-- START CONTACT SECTION -->

<section id="contact" class="contact-section">
  <div class="contact-section-header">
    <h2>Let's work together...</h2>
    <p>How do you take your coffee?</p>
  </div>
  <div class="contact-links">
    <a
      href="https://instagram.com/harshu__gohil__1110"
      target="_blank"
      class="btn contact-details-instagram"
      ><i class="fab fa-instagram"></i> Instagram</a
    >
    <a
      id="profile-link"
      href="https://github.com/harsh1110"
      target="_blank"
      class="btn contact-details-github"
      ><i class="fab fa-github"></i> GitHub</a
    >
    <a
      href="https://twitter.com/HarshGo82767674"
      target="_blank"
      class="btn contact-details-twitter"
      ><i class="fab fa-twitter"></i> Twitter</a
    >
    <a href="mailto:harshgohil42774@gmail.com" class="btn contact-details-mail"
      ><i class="fas fa-at"></i> Send a mail</a
    >
    <a href="tel:+917359169259" class="btn contact-details-call"
      ><i class="fas fa-mobile-alt"></i> Call me</a
    >
  </div>
</section>

<!-- END CONTACT SECTION -->

