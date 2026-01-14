package Servlet;

import Model.Booking;
import Model.User;
import Services.BookingService;
import Services.UserService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "adminDashboardServlet", value = "/adminDashboard")
public class adminDashboardServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("adminDashboard.jsp");

        HttpSession session = request.getSession();

        if (session.getAttribute("user") == null) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Please login to access the dashboard.");
            response.sendRedirect("login");
            return;
        }

        User user = (User) session.getAttribute("user");

        BookingService bookingService = new BookingService();
        ArrayList<Booking> bookings = bookingService.getBookingsByCustomerId(user.getUserId());

        UserService userService = new UserService();
        ArrayList<User> customers = userService.getAllUsersByRole(1);
        ArrayList<User> eventManagers = userService.getAllUsersByRole(3);
        ArrayList<User> customerSupports = userService.getAllUsersByRole(4);

        request.setAttribute("customers", customers);
        request.setAttribute("eventManagers", eventManagers);
        request.setAttribute("customerSupports", customerSupports);
        request.setAttribute("user", user);
        dispatcher.forward(request, response);
    }
}
