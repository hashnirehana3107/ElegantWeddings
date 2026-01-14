document.addEventListener("DOMContentLoaded", () => {
    const bookButtons = document.querySelectorAll(".book-now");

    bookButtons.forEach(button => {
        button.addEventListener("click", () => {
            alert("Booking feature coming soon!");
        });
    });
});