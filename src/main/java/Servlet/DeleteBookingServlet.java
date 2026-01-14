package Servlet;

import Services.BookingService;
import Services.EventsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "DeleteBookingServlet", value = "/deleteBooking")
public class DeleteBookingServlet extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        HttpSession session = request.getSession();

        if (request.getParameter("bookingId") == null) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Booking ID is required.");
            response.sendRedirect("events");
            return;
        }

        BookingService bookingService = new BookingService();

        int bookingId = Integer.parseInt(request.getParameter("bookingId"));

        if (bookingService.deleteBooking(bookingId)) {
            session.setAttribute("status", "success");
            session.setAttribute("validation", "Booking deleted successfully.");
        } else {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Failed to delete booking.");
        }

        response.sendRedirect("customerDashboard");
    }


}