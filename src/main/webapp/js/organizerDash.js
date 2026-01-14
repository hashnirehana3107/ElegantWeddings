document.addEventListener('DOMContentLoaded', function() {

    // Sidebar navigation functionality
    document.getElementById('dashboard-home').addEventListener('click', function(e) {
        e.preventDefault();
        alert('Navigating to Dashboard Home');
    });

    document.getElementById('create-event').addEventListener('click', function(e) {
        e.preventDefault();
        // Scroll to event creation form
        document.querySelector('.form-section').scrollIntoView({ behavior: 'smooth' });
    });

    document.getElementById('manage-bookings').addEventListener('click', function(e) {
        e.preventDefault();
        alert('Navigating to Manage Bookings');
    });

    document.getElementById('customer-reviews').addEventListener('click', function(e) {
        e.preventDefault();
        alert('Navigating to Customer Reviews');
    });

    document.getElementById('reports-side').addEventListener('click', function(e) {
        e.preventDefault();
        alert('Navigating to Reports');
    });

    // Top navigation functionality
    document.getElementById('my-events-link').addEventListener('click', function(e) {
        e.preventDefault();
        // Scroll to events table
        document.querySelector('.table-section').scrollIntoView({ behavior: 'smooth' });
    });

    document.getElementById('bookings-link').addEventListener('click', function(e) {
        e.preventDefault();
        alert('Navigating to Bookings');
    });

    document.getElementById('messages-link').addEventListener('click', function(e) {
        e.preventDefault();
        alert('Navigating to Client Messages');
    });

    document.getElementById('reports-link').addEventListener('click', function(e) {
        e.preventDefault();
        alert('Navigating to Reports');
    });
});