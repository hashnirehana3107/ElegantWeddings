package Servlet;

import Model.Booking;
import Model.Event;
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
import java.util.ArrayList;

@WebServlet(name = "UpdateBookingServlet", value = "/updateBooking")
public class UpdateBookingServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("updateBooking.jsp");

        HttpSession session = request.getSession();

        if (request.getParameter("bookingId") == null) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Booking ID is required.");
            response.sendRedirect("customerDashboard");
            return;
        }

        int bookingID = Integer.parseInt(request.getParameter("bookingId"));
        BookingService bookingService = new BookingService();
        Booking booking = bookingService.getBooking(bookingID);

        request.setAttribute("booking", booking);
        dispatcher.forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        HttpSession session = request.getSession();

        System.out.println(request.getParameter("bookingId"));

        if (request.getParameter("bookingId") == null) {

            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Booking ID is required.");
            response.sendRedirect("customerDashboard");
            return;
        }

        int bookingId = Integer.parseInt(request.getParameter("bookingId"));
        String eventName = request.getParameter("eventName");
        String eventDetails = request.getParameter("eventDetails");
        Date eventDate = Date.valueOf(request.getParameter("date"));
        String category = request.getParameter("category");

        if (eventName == null || eventDetails == null || eventDate == null || category == null
                || eventName.isEmpty() || eventDetails.isEmpty() || category.isEmpty()) {

            session.setAttribute("status", "failed");
            session.setAttribute("validation", "All fields are required.");

            response.sendRedirect("updateBooking?eventId=" + bookingId);
            return;
        }

        if (eventName.length() > 45) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Event name should be less than 45 characters.");
            response.sendRedirect("updateBooking?bookingId=" + bookingId);
            return;
        }

        if (eventDate.before(Date.valueOf(LocalDate.now()))) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Event date should be in the future.");
            response.sendRedirect("updateBooking?bookingId=" + bookingId);
            return;
        }

        BookingService bookingService = new BookingService();
        Booking booking = new Booking();
        booking.setBookingId(bookingId);
        booking.setEventName(eventName);
        booking.setEventDetails(eventDetails);
        booking.setDate(eventDate);
        booking.setCategory(category);
        booking.setStatus(0);

        boolean isUpdated = bookingService.updateBooking(booking);

        if (isUpdated) {
            session.setAttribute("status", "success");
            session.setAttribute("validation", "Booking updated successfully.");
        } else {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Failed to update booking.");
        }

        response.sendRedirect("updateBooking?bookingId=" + bookingId);
    }


}