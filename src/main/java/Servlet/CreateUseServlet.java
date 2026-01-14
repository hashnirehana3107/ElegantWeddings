package Servlet;

import Model.User;
import Services.UserService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "CreateUseServlet", value = "/createUser")
public class CreateUseServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("adminCreateUser.jsp");

        HttpSession session = request.getSession();

        if (session.getAttribute("user") == null) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Please login to access the dashboard.");
            response.sendRedirect("login");
            return;
        }

        dispatcher.forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();

        RequestDispatcher dispatcher = request.getRequestDispatcher("adminCreateUser.jsp");

        String name = request.getParameter("name");
        String role = request.getParameter("userRole");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String mobile = request.getParameter("mobile");

        if (role == null || role.isEmpty()) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Please select a user role.");
            dispatcher.forward(request, response);
            return;
        }

        if (name.length() > 45) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Name must be between 1 and 45 characters.");
            dispatcher.forward(request, response);
            return;
        }

        if (!email.matches("^[\\w-.]+@([\\w-]+\\.)+[\\w-]{2,4}$") || email.length() > 100) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Invalid email format.");
            dispatcher.forward(request, response);
            return;
        }

        if (password.isEmpty() || password.length() > 45) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Password must be less than 45 characters.");

            dispatcher.forward(request, response);
            return;
        }

        if (!password.equals(confirmPassword)) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Password and Confirm Password do not match.");
            dispatcher.forward(request, response);
            return;
        }

        if (mobile.isEmpty() || mobile.length() > 10) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Mobile number must be 10 digits.");
            dispatcher.forward(request, response);
            return;
        }

        UserService userService = new UserService();
        if (userService.validateEmail(email)) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Email already exists.");
            dispatcher.forward(request, response);
            return;
        }

        User user = new User();
        user.setName(name);
        user.setEmail(email);
        user.setPassword(password);
        user.setMobile(mobile);
        user.setRole(Integer.parseInt(role)); // Assuming role 1 is for regular users

        boolean isRegistered = userService.createUser(user);

        if (isRegistered) {
            session.setAttribute("status", "success");
            session.setAttribute("validation", "User Creation successful.");

            response.sendRedirect("adminDashboard");
        } else {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "User Creation failed. Please try again.");
            dispatcher.forward(request, response);
        }

    }


}