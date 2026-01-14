package Servlet;

import Model.Booking;
import Model.Event;
import Model.User;
import Services.BookingService;
import Services.EventsService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;

@WebServlet(name = "CreateBookingServlet", value = "/createBooking")
public class CreateBookingServlet extends HttpServlet {


    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        HttpSession session = request.getSession();

        User user = (User) session.getAttribute("user");

        int userId = user.getUserId();
        String eventName = request.getParameter("eventName");
        String eventDetails = request.getParameter("eventDetails");
        Date eventDate = Date.valueOf(request.getParameter("date"));
        String category = request.getParameter("category");

        if (eventName == null || eventDetails == null || eventDate == null || category == null
                || eventName.isEmpty() || eventDetails.isEmpty() || category.isEmpty()
                || eventDate.toString().isEmpty() || userId <= 0) {

            session.setAttribute("status", "failed");
            session.setAttribute("validation", "All fields are required.");

            response.sendRedirect("customerDashboard");
            return;
        }

        if (eventName.length() > 45) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Event name should be less than 45 characters.");
            response.sendRedirect("customerDashboard");
            return;
        }

        if (eventDate.before(Date.valueOf(LocalDate.now()))) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Event date should be in the future.");
            response.sendRedirect("customerDashboard");
            return;
        }

        BookingService bookingService = new BookingService();
        Booking booking = new Booking();

        booking.setCustomerId(userId);
        booking.setEventName(eventName);
        booking.setEventDetails(eventDetails);
        booking.setDate(eventDate);
        booking.setCategory(category);
        booking.setStatus(0);

        boolean isCreated = bookingService.createBooking(booking);

        if (isCreated) {
            session.setAttribute("status", "success");
            session.setAttribute("validation", "Event created successfully.");
        } else {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Failed to create event.");
        }

        response.sendRedirect("customerDashboard");

    }


}