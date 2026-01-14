// Get modal elements
const replyModal = document.getElementById('reply-modal');
const feedbackModal = document.getElementById('feedback-modal');
const monitoringModal = document.getElementById('monitoring-modal');

// Get buttons
const replyButtons = document.querySelectorAll('.reply-btn');
const openFeedbackBtn = document.getElementById('open-feedback');
const openMonitoringBtn = document.getElementById('open-monitoring');

// Get close buttons
const closeButtons = document.querySelectorAll('.close');

// Get customer info and reply elements
const customerInfo = document.getElementById('customer-info');
const replyText = document.getElementById('reply-text');
const sendReplyBtn = document.getElementById('send-reply');

// Customer data
const customers = {
    1: { name: 'Alice', inquiry: 'What is the refund policy?' },
    2: { name: 'Bob', inquiry: 'Can I reschedule my event?' },
    3: { name: 'Charlie', inquiry: 'Do you provide vegetarian catering?' }
};

// Event listeners for reply buttons
replyButtons.forEach(button => {
    button.addEventListener('click', function() {
        const customerId = this.getAttribute('data-id');
        const customer = customers[customerId];
        
        customerInfo.innerHTML = `
            <p><strong>Customer:</strong> ${customer.name}</p>
            <p><strong>Inquiry:</strong> ${customer.inquiry}</p>
        `;
        
        replyModal.style.display = 'block';
        replyText.value = '';
    });
});

// Event listener for open feedback button
openFeedbackBtn.addEventListener('click', function() {
    feedbackModal.style.display = 'block';
});

// Event listener for open monitoring button
openMonitoringBtn.addEventListener('click', function() {
    monitoringModal.style.display = 'block';
});

// Event listener for close buttons
closeButtons.forEach(button => {
    button.addEventListener('click', function() {
        const modal = this.closest('.modal');
        modal.style.display = 'none';
    });
});

// Event listener for send reply button
sendReplyBtn.addEventListener('click', function() {
    const reply = replyText.value.trim();
    
    if (reply) {
        alert('Reply sent successfully!');
        replyModal.style.display = 'none';
    } else {
        alert('Please enter a reply.');
    }
});

// Event listener for status selects
const statusSelects = document.querySelectorAll('.status-select');
statusSelects.forEach(select => {
    select.addEventListener('change', function() {
        console.log(`Status changed to: ${this.value}`);
    });
});

// Event listener for archive buttons
const archiveButtons = document.querySelectorAll('.archive-btn');
archiveButtons.forEach(button => {
    button.addEventListener('click', function() {
        const row = this.closest('tr');
        if (confirm('Are you sure you want to archive this inquiry?')) {
            row.style.display = 'none';
        }
    });
});

// Close modal when clicking outside
window.addEventListener('click', function(event) {
    if (event.target === replyModal) {
        replyModal.style.display = 'none';
    }
    if (event.target === feedbackModal) {
        feedbackModal.style.display = 'none';
    }
    if (event.target === monitoringModal) {
        monitoringModal.style.display = 'none';
    }
});