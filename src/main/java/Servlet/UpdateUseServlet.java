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

@WebServlet(name = "UpdateUseServlet", value = "/updateUser")
public class UpdateUseServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("adminUpdateUser.jsp");

        HttpSession session = request.getSession();

        if (session.getAttribute("user") == null) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Please login to access the dashboard.");
            response.sendRedirect("login");
            return;
        }

        if (request.getParameter("updatingUserId").isEmpty() || request.getParameter("updatingUserId") == null) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Please select a user to update.");
            response.sendRedirect("adminDashboard");
            return;
        }

        int updatingUserId = Integer.parseInt(request.getParameter("updatingUserId"));

        if (updatingUserId <= 0) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Invalid user ID.");
            response.sendRedirect("adminDashboard");
            return;
        }

        User updatingUser = new User();
        UserService userService = new UserService();
        updatingUser = userService.getUserById(updatingUserId);

        request.setAttribute("updatingUser", updatingUser);
        dispatcher.forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();

        int userId = Integer.parseInt(request.getParameter("userId"));
        String name = request.getParameter("name");
        String role = request.getParameter("userRole");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String mobile = request.getParameter("mobile");

        if (role == null || role.isEmpty()) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Please select a user role.");

            response.sendRedirect("updateUser?updatingUserId=" + userId);
            return;
        }

        if (name.length() > 45) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Name must be between 1 and 45 characters.");

            response.sendRedirect("updateUser?updatingUserId=" + userId);
            return;
        }

        if (!email.matches("^[\\w-.]+@([\\w-]+\\.)+[\\w-]{2,4}$") || email.length() > 100) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Invalid email format.");

            response.sendRedirect("updateUser?updatingUserId=" + userId);
            return;
        }

        if (password.isEmpty() || password.length() > 45) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Password must be less than 45 characters.");

            response.sendRedirect("updateUser?updatingUserId=" + userId);
            return;
        }


        if (mobile.isEmpty() || mobile.length() > 10) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Mobile number must be 10 digits.");

            response.sendRedirect("updateUser?updatingUserId=" + userId);
            return;
        }

        UserService userService = new UserService();

        if (userService.validateEmail(email) && !email.equals(userService.getUserById(userId).getEmail())) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Email already exists.");

            response.sendRedirect("updateUser?updatingUserId=" + userId);
            return;
        }

        User user = new User();
        user.setUserId(userId);
        user.setName(name);
        user.setEmail(email);
        user.setPassword(password);
        user.setMobile(mobile);
        user.setRole(Integer.parseInt(role)); // Assuming role 1 is for regular users

        boolean isRegistered = userService.updateUserWithRole(user);

        if (isRegistered) {
            session.setAttribute("status", "success");
            session.setAttribute("validation", "User Creation successful.");

            response.sendRedirect("updateUser?updatingUserId=" + userId);
            return;
        } else {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "User Creation failed. Please try again.");

            response.sendRedirect("updateUser?updatingUserId=" + userId);
            return;
        }

    }


}