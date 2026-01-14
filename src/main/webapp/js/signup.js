/// Wait for the DOM to load
document.addEventListener("DOMContentLoaded", () => {
    const submitBtn = document.querySelector(".submit-btn");
    const usernameInput = document.getElementById("username");
    const passwordInput = document.getElementById("password");
  
    submitBtn.addEventListener("click", (event) => {
      event.preventDefault(); // Prevent form submission
  
      const username = usernameInput.value.trim();
      const password = passwordInput.value.trim();
  
      // Simple validation
      if (username === "" || password === "") {
        alert("Please fill in both username and password.");
        return;
      }
  
      // Demo: Show a welcome message
      alert(`Welcome, ${username}! You have successfully signed in.`);
  
      // You can add API calls or form submission logic here
      // Example: Send data to a server or localStorage
      console.log(`Username: ${username}`);
      console.log(`Password: ${password}`);
    });
  
    // OPTIONAL: Toggle password visibility
    passwordInput.addEventListener("focus", () => {
      passwordInput.type = "password";
    });
  });
  