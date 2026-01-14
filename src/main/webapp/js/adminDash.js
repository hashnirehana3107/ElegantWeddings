/// adminDash.js

// Helper: Show alert messages
function showAlert(message, type = "info") {
    const alertWrapper = document.getElementById("alert-wrapper");
    alertWrapper.textContent = message;
    alertWrapper.className = `alert ${type}`;
    alertWrapper.style.display = "block";
    setTimeout(() => {
        alertWrapper.style.display = "none";
    }, 3000);
}

// Logout
document.getElementById("logout-button").addEventListener("click", () => {
    showAlert("Logged out successfully!", "success");
    setTimeout(() => {
        window.location.href = "login.html"; // Change this to your login page
    }, 1500);
});

// Add buttons
document.getElementById("add-customer-btn").addEventListener("click", () => {
    showAlert("Add Customer form should appear.", "info");
});

document.getElementById("add-employee-btn").addEventListener("click", () => {
    showAlert("Add Employee form should appear.", "info");
});

document.getElementById("add-event-btn").addEventListener("click", () => {
    showAlert("Add Event form should appear.", "info");
});

document.getElementById("add-service-btn").addEventListener("click", () => {
    showAlert("Add Service form should appear.", "info");
});

// Edit/Delete button logic for all sections
document.querySelectorAll(".update-btn").forEach((btn) => {
    btn.addEventListener("click", () => {
        showAlert("Edit form should appear for this record.", "info");
    });
});


document.querySelectorAll(".delete-btn").forEach((btn) => {
    btn.addEventListener("click", () => {
        const confirmDelete = confirm("Are you sure you want to delete this record?");
        if (confirmDelete) {
            showAlert("Record deleted successfully.", "success");
            // You can add code to remove the row from the table here
        }
    });
});

