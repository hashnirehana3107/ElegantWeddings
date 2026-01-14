<div id="top-bar">
    <span>Sign Up to receive a discount today</span>

    <%
        if (session.getAttribute("user") == null) {
    %>
    <span id="login-link"><a href="register">SIGN UP </a></span>
    <span id="login-link"><a href="login">SIGN IN </a></span>
    <%
    } else {
    %>
    <span id="login-link"><a href="logout">LOG OUT </a></span>
    <span id="login-link"><a href="customerDashboard">MY ACCOUNT </a></span>
    <%
        }
    %>

    <span><a href="FAQ.jsp">FAQs</a></span>
</div>