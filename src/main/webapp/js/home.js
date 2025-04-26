// home.js

const slideImages = [
  "images/m1.jpeg",
  "images/m2.jpeg",
  "images/m3.jpeg"
];

let currentSlide = 0;
const slideImageElement = document.getElementById("slideImage");

function showNextSlide() {
  currentSlide++;
  if (currentSlide >= slideImages.length) {
    currentSlide = 0;
  }
  slideImageElement.src = slideImages[currentSlide];
}

// Change slide every 3 seconds
setInterval(showNextSlide, 3000);
