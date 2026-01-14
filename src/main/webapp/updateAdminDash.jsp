
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Update User</title>

  <link rel="icon" href="./Assets/IMG/favicon_io/favicon.ico" type="image/x-icon"/>
  <link rel="stylesheet" href="./css/updateAdminDash.css"/> 
  <link rel="stylesheet" href="./css/adminDash.css"/>
</head>
<body>

<!-- Static header placeholder -->
<header>
  <h2>Admin Panel</h2>
  <nav>
    <a href="adminDash.jsp">Dashboard</a>
    <a href="#">Logout</a>
  </nav>
</header>

<div id="insert-form-wrapper">
  <h1>Update User Details</h1>

  <!-- Optional static error message placeholder -->
  <div class="error-alert" style="display: none;">Email already exists for another user.</div>

  <form method="post" action="#">
    <!-- Hidden ID field -->
    <input type="hidden" name="id" value="12345" />

    <div class="input-field">
      <label for="first-name">First Name</label>
      <input type="text" name="first-name" id="first-name" value="John" required />
    </div>

    <div class="input-field">
      <label for="last-name">Last Name</label>
      <input type="text" name="last-name" id="last-name" value="Doe" required />
    </div>

    <div class="input-field">
      <label for="email">Email</label>
      <input type="email" name="email" id="email" value="john.doe@example.com" required />
    </div>

    <div class="input-field">
      <label for="address-line-1">Address Line 1</label>
      <input type="text" name="address-line-1" id="address-line-1" value="123 Main Street" />
    </div>

    <div class="input-field">
      <label for="address-line-2">Address Line 2</label>
      <input type="text" name="address-line-2" id="address-line-2" value="Apt 4B" />
    </div>

    <div class="input-field">
      <label for="city">City</label>
      <input type="text" name="city" id="city" value="Colombo" />
    </div>

    <input id="submit-btn" type="submit" value="Update User" />
  </form>
</div>


<jsp:include page="includes/alert.jsp"/>
</body>
</html>
