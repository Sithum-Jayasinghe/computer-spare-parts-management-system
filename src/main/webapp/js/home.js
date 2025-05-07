window.addEventListener('load', function () {
     const elements = document.querySelectorAll('.slide-up');

     elements.forEach((el, index) => {
       // Initial style
       el.style.opacity = '0';
       el.style.transform = 'translateY(50px)';
       el.style.transition = 'all 0.8s ease-out';

       // Add 'show' effect with delay
       setTimeout(() => {
         el.style.opacity = '1';
         el.style.transform = 'translateY(0)';
       }, index * 300); // stagger delay
     });
   });