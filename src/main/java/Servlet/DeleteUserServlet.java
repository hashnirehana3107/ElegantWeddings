package Servlet;

import Model.User;
import Services.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "DeleteUserServlet", value = "/deleteUser")
public class DeleteUserServlet extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();

        int userID = Integer.parseInt(request.getParameter("userID"));

        if (userID <= 0) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Invalid user ID.");
            response.sendRedirect("adminDashboard");
            return;
        }

        UserService userService = new UserService();
        boolean isDeleted = userService.deleteUserById(userID);

        if (isDeleted) {
            session.setAttribute("status", "success");
            session.setAttribute("validation", "Profile deleted successfully.");

            response.sendRedirect("adminDashboard");
            return;
        } else {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Failed to delete profile.");
        }

        response.sendRedirect("adminDashboard");
        return;

    }

}