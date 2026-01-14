document.addEventListener("DOMContentLoaded", function () {
    const carousel = document.getElementById("carousel");
    const prevButton = document.getElementById("carousel-prev");
    const nextButton = document.getElementById("carousel-next");
    let index = 0;
  
    function showSlide() {
      carousel.style.transform = `translateX(${-index * 100}vw)`;
    }
  
    function nextSlide() {
      index = (index + 1) % 3;
      showSlide();
    }
  
    function prevSlide() {
      index = (index - 1 + 3) % 3;
      showSlide();
    }
  
    nextButton.addEventListener("click", nextSlide);
    prevButton.addEventListener("click", prevSlide);
  
    setInterval(nextSlide, 3000); // Auto-slide every 3 seconds
  });
  