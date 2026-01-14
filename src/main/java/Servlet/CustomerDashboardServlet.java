package Servlet;

import Model.Booking;
import Model.User;
import Services.BookingService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "CustomerDashboardServlet", value = "/customerDashboard")
public class CustomerDashboardServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("customerDashboard.jsp");

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

        request.setAttribute("bookings", bookings);
        request.setAttribute("user", user);
        dispatcher.forward(request, response);
    }
}
