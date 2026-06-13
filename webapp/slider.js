document.addEventListener("DOMContentLoaded", function () {

    const slides = document.querySelectorAll(".slide");
    const prevBtn = document.querySelector(".prev-btn");
    const nextBtn = document.querySelector(".next-btn");

    let currentSlide = 0;
    let autoSlide;

    function showSlide(index) {
        slides.forEach(s => s.classList.remove("active"));
        slides[index].classList.add("active");
    }

    function nextSlide() {
        currentSlide = (currentSlide + 1) % slides.length;
        showSlide(currentSlide);
    }

    function prevSlide() {
        currentSlide = (currentSlide - 1 + slides.length) % slides.length;
        showSlide(currentSlide);
    }

    function startAuto() {
        autoSlide = setInterval(nextSlide, 4000);
    }

    function resetAuto() {
        clearInterval(autoSlide);
        startAuto();
    }

    nextBtn.addEventListener("click", e => {
        e.preventDefault();
        nextSlide();
        resetAuto();
    });

    prevBtn.addEventListener("click", e => {
        e.preventDefault();
        prevSlide();
        resetAuto();
    });

    showSlide(0);
    startAuto();
});