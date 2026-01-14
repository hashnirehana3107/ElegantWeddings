// Modal functionality
function showDetails(eventName, date, status) {
    document.getElementById('modal-title').textContent = eventName;
    document.getElementById('modal-date').textContent = `Date: ${date}`;
    document.getElementById('modal-status').textContent = `Status: ${status}`;
    
    document.getElementById('modal-overlay').style.display = 'block';
    document.getElementById('booking-details-modal').style.display = 'block';
}

function closeModal() {
    document.getElementById('modal-overlay').style.display = 'none';
    document.getElementById('booking-details-modal').style.display = 'none';
}

// Close modal when clicking outside
document.getElementById('modal-overlay').addEventListener('click', closeModal);

// Form handling
document.querySelectorAll('form').forEach(form => {
    form.addEventListener('submit', function(e) {
        e.preventDefault();
        // Add form submission logic here
        alert('Form submitted successfully!');
    });
});

// Search functionality
const searchInput = document.querySelector('.search-container input');
searchInput.addEventListener('input', function(e) {
    const searchTerm = e.target.value.toLowerCase();
    // Add search logic here
    console.log('Searching for:', searchTerm);
});

// Logout button
document.getElementById('logout-button').addEventListener('click', function() {
    // Add logout logic here
    alert('Logging out...');
    // Redirect to login page
    // window.location.href = 'login.html';
});

// Payment Methods Form Functionality
const paymentForm = document.querySelector('.payment-form form');
const cancelBtn = document.querySelector('.cancel-btn');
const updateBtn = document.querySelector('.update-btn');
const deleteBtn = document.querySelector('.delete-btn');
const addPaymentBtn = document.querySelector('.add-payment-btn');

// Toggle payment form visibility
addPaymentBtn.addEventListener('click', () => {
    paymentForm.style.display = 'block';
    clearForm();
});

// Cancel button
cancelBtn?.addEventListener('click', (e) => {
    e.preventDefault();
    clearForm();
    paymentForm.style.display = 'none';
});

// Update button
updateBtn?.addEventListener('click', (e) => {
    e.preventDefault();
    const cardNumber = document.getElementById('card-number').value;
    if (!cardNumber) {
        alert('Please select a card to update');
        return;
    }
    // Add your update logic here
    alert('Card details updated successfully!');
});

// Delete button
deleteBtn?.addEventListener('click', (e) => {
    e.preventDefault();
    const cardNumber = document.getElementById('card-number').value;
    if (!cardNumber) {
        alert('Please select a card to delete');
        return;
    }
    if (confirm('Are you sure you want to delete this card?')) {
        clearForm();
        alert('Card deleted successfully!');
    }
});

function clearForm() {
    document.getElementById('card-number').value = '';
    document.getElementById('expiry').value = '';
    document.getElementById('cvv').value = '';
}

// Payment Methods CRUD Operations
let cards = JSON.parse(localStorage.getItem('paymentCards')) || [];

function displaySavedCards() {
    const savedCardsDiv = document.getElementById('savedCards');
    savedCardsDiv.innerHTML = '';

    cards.forEach(card => {
        const cardElement = document.createElement('div');
        cardElement.className = 'saved-card';
        cardElement.innerHTML = `
            <div class="card-info">
                <p class="card-number">**** **** **** ${card.cardNumber.slice(-4)}</p>
                <p class="card-holder">${card.cardHolder}</p>
                <p class="expiry">Expires: ${card.expiry}</p>
            </div>
            <div class="card-actions">
                <button onclick="editCard('${card.id}')" class="edit-btn">
                    <i class="fas fa-edit"></i>
                </button>
                <button onclick="deleteCard('${card.id}')" class="delete-btn">
                    <i class="fas fa-trash"></i>
                </button>
            </div>
        `;
        savedCardsDiv.appendChild(cardElement);
    });
}

function showAddPaymentForm() {
    document.getElementById('formTitle').textContent = 'Add New Payment Method';
    document.getElementById('cardForm').reset();
    document.getElementById('cardId').value = '';
    document.getElementById('submitBtn').textContent = 'Save Card';
    document.getElementById('paymentForm').style.display = 'block';
    document.getElementById('updateBtn').style.display = 'none';
    document.getElementById('deleteBtn').style.display = 'none';
}

function hidePaymentForm() {
    document.getElementById('paymentForm').style.display = 'none';
    document.getElementById('cardForm').reset();
}

function handlePaymentSubmit(event) {
    event.preventDefault();
    
    const cardId = document.getElementById('cardId').value;
    const newCard = {
        id: cardId || Date.now().toString(),
        cardHolder: document.getElementById('cardHolder').value,
        cardNumber: document.getElementById('card-number').value,
        expiry: document.getElementById('expiry').value,
        cvv: document.getElementById('cvv').value
    };

    if (cardId) {
        // Update existing card
        const index = cards.findIndex(card => card.id === cardId);
        cards[index] = newCard;
    } else {
        // Create new card
        cards.push(newCard);
    }

    localStorage.setItem('paymentCards', JSON.stringify(cards));
    hidePaymentForm();
    displaySavedCards();
    showToast(cardId ? 'Card updated successfully!' : 'Card added successfully!');
}

function editCard(cardId) {
    const card = cards.find(card => card.id === cardId);
    if (card) {
        document.getElementById('formTitle').textContent = 'Edit Payment Method';
        document.getElementById('cardId').value = card.id;
        document.getElementById('cardHolder').value = card.cardHolder;
        document.getElementById('card-number').value = card.cardNumber;
        document.getElementById('expiry').value = card.expiry;
        document.getElementById('cvv').value = card.cvv;
        document.getElementById('submitBtn').textContent = 'Update Card';
        document.getElementById('paymentForm').style.display = 'block';
        document.getElementById('updateBtn').style.display = 'block';
        document.getElementById('deleteBtn').style.display = 'block';
    }
}

function deleteCard(cardId) {
    if (confirm('Are you sure you want to delete this card?')) {
        cards = cards.filter(card => card.id !== cardId);
        localStorage.setItem('paymentCards', JSON.stringify(cards));
        displaySavedCards();
        showToast('Card deleted successfully!');
    }
}

function showToast(message) {
    // Create and show a toast notification
    const toast = document.createElement('div');
    toast.className = 'toast';
    toast.textContent = message;
    document.body.appendChild(toast);
    setTimeout(() => toast.remove(), 3000);
}

function updateCard() {
    const cardId = document.getElementById('cardId').value;
    if (!cardId) {
        showToast('Please select a card to update');
        return;
    }
    
    const formData = {
        cardHolder: document.getElementById('cardHolder').value,
        cardNumber: document.getElementById('card-number').value,
        expiry: document.getElementById('expiry').value,
        cvv: document.getElementById('cvv').value
    };

    // Validate form data
    if (!formData.cardHolder || !formData.cardNumber || !formData.expiry || !formData.cvv) {
        showToast('Please fill in all fields');
        return;
    }

    const index = cards.findIndex(card => card.id === cardId);
    if (index !== -1) {
        cards[index] = { ...cards[index], ...formData };
        localStorage.setItem('paymentCards', JSON.stringify(cards));
        displaySavedCards();
        hidePaymentForm();
        showToast('Card updated successfully');
    }
}

function deleteSelectedCard() {
    const cardId = document.getElementById('cardId').value;
    if (!cardId) {
        showToast('Please select a card to delete');
        return;
    }

    if (confirm('Are you sure you want to delete this card?')) {
        cards = cards.filter(card => card.id !== cardId);
        localStorage.setItem('paymentCards', JSON.stringify(cards));
        displaySavedCards();
        hidePaymentForm();
        showToast('Card deleted successfully');
    }
}

// Personal Information CRUD Operations
let personalInfo = {
    name: 'John Doe',
    email: 'johndoe@example.com',
    phone: '+1 (123) 456-7890',
    address: '123 Main St'
};

// Load initial data
document.addEventListener('DOMContentLoaded', () => {
    loadPersonalInfo();
});

function loadPersonalInfo() {
    document.getElementById('name').value = personalInfo.name;
    document.getElementById('email').value = personalInfo.email;
    document.getElementById('phone').value = personalInfo.phone;
    document.getElementById('address').value = personalInfo.address;
}

function handlePersonalInfo(event) {
    event.preventDefault();
    saveInfo();
}

function saveInfo() {
    personalInfo = {
        name: document.getElementById('name').value,
        email: document.getElementById('email').value,
        phone: document.getElementById('phone').value,
        address: document.getElementById('address').value
    };
    alert('Information saved successfully!');
}

function updateInfo() {
    if(confirm('Are you sure you want to update your information?')) {
        saveInfo();
    }
}

function deleteInfo() {
    if(confirm('Are you sure you want to delete your information?')) {
        personalInfo = {
            name: '',
            email: '',
            phone: '',
            address: ''
        };
        loadPersonalInfo();
        alert('Information deleted successfully!');
    }
}

function resetForm() {
    document.getElementById('personalInfoForm').reset();
    loadPersonalInfo();
}

// Store original values
let originalValues = {};

function enableEdit() {
    // Store current values
    const inputs = document.querySelectorAll('#personalInfoForm input');
    inputs.forEach(input => {
        originalValues[input.id] = input.value;
        input.disabled = false;
    });

    // Toggle buttons
    document.getElementById('editBtn').style.display = 'none';
    document.getElementById('cancelBtn').style.display = 'inline-block';
    document.getElementById('saveBtn').style.display = 'inline-block';
}

function cancelEdit() {
    // Restore original values and disable inputs
    const inputs = document.querySelectorAll('#personalInfoForm input');
    inputs.forEach(input => {
        input.value = originalValues[input.id];
        input.disabled = true;
    });

    // Toggle buttons back
    document.getElementById('editBtn').style.display = 'inline-block';
    document.getElementById('cancelBtn').style.display = 'none';
    document.getElementById('saveBtn').style.display = 'none';
}

// Add form submit handler
document.getElementById('personalInfoForm').addEventListener('submit', function(e) {
    e.preventDefault();
    // Here you would typically save the data to your backend
    
    // Disable inputs after saving
    const inputs = document.querySelectorAll('#personalInfoForm input');
    inputs.forEach(input => {
        input.disabled = true;
    });

    // Toggle buttons back
    document.getElementById('editBtn').style.display = 'inline-block';
    document.getElementById('cancelBtn').style.display = 'none';
    document.getElementById('saveBtn').style.display = 'none';

    alert('Changes saved successfully!');
});

// Initialize saved cards display
document.addEventListener('DOMContentLoaded', displaySavedCards);
