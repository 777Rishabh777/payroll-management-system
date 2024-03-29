function toggleNavbar() {
    var navbar = document.getElementById('navbar');
    if (navbar.style.left === '0px') {
      navbar.style.left = '-250px'; // Hide navbar
    } else {
      navbar.style.left = '0px'; // Show navbar
    }
  }
  
  function openSlide(slideName) {
    var slides = document.querySelectorAll('.slide');
    for (var i = 0; i < slides.length; i++) {
      slides[i].classList.remove('active');
    }
    document.getElementById(slideName + '-slide').classList.add('active');
  
    var links = document.querySelectorAll('.navbar a');
    for (var i = 0; i < links.length; i++) {
      links[i].classList.remove('active');
    }
    document.querySelector('[onclick="openSlide(\'' + slideName + '\')"]').classList.add('active');
  }
  
  // Additional functions and code for further functionalities
  