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
import java.util.ArrayList;

@WebServlet(name = "EventManageDashboardServlet", value = "/eventManager")
public class EventManageDashboardServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("organizerDashboard.jsp");

        HttpSession session = request.getSession();

        if (session.getAttribute("user") == null) {
            response.sendRedirect("login");
            return;
        }

        EventsService eventsService = new EventsService();
        ArrayList<Event> events = eventsService.getAllEvents();

        BookingService bookingService = new BookingService();
        ArrayList<Booking> bookings = bookingService.getAllBookings();

        request.setAttribute("bookings", bookings);
        request.setAttribute("events", events);
        dispatcher.forward(request, response);
    }
}
