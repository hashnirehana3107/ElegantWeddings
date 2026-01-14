document.addEventListener("DOMContentLoaded", () => {
    const images = document.querySelectorAll(".gallery img");
    const lightbox = document.getElementById("lightbox");
    const lightboxImg = document.getElementById("lightbox-img");
    const closeBtn = document.querySelector(".close");

    images.forEach(img => {
        img.addEventListener("click", function() {
            document.getElementById("lightbox").style.display = "flex";
            document.getElementById("lightbox-img").src = this.src;
        });
    });

    function closeLightbox() {
        document.getElementById("lightbox").style.display = "none";
    }

    document.querySelector(".close").addEventListener("click", closeLightbox);
});