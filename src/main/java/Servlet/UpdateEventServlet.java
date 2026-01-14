package Servlet;

import Model.Event;
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

@WebServlet(name = "UpdateEventServlet", value = "/updateEvent")
public class UpdateEventServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("updateEvent.jsp");

        HttpSession session = request.getSession();

        if (request.getParameter("eventId") == null || request.getParameter("eventId").isEmpty()) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Event ID is required.");
            response.sendRedirect("eventManager");
            return;
        }

        EventsService eventsService = new EventsService();
        Event event = new Event();

        event = eventsService.getEvent(Integer.parseInt(request.getParameter("eventId")));

        if (event == null) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Event not found.");
            response.sendRedirect("eventManager");
            return;
        }

        request.setAttribute("event", event);
        dispatcher.forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        HttpSession session = request.getSession();

        if (request.getParameter("eventId") == null) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Event ID is required.");
            response.sendRedirect("eventManager");
            return;
        }

        int eventID = Integer.parseInt(request.getParameter("eventId"));
        String eventName = request.getParameter("eventName");
        String eventDetails = request.getParameter("eventDetails");
        Date eventDate = Date.valueOf(request.getParameter("date"));
        String category = request.getParameter("category");

        if (eventName == null || eventDetails == null || eventDate == null || category == null
                || eventName.isEmpty() || eventDetails.isEmpty() || category.isEmpty()) {

            session.setAttribute("status", "failed");
            session.setAttribute("validation", "All fields are required.");

            response.sendRedirect("updateEvent?eventId=" + eventID);
            return;
        }

        if (eventName.length() > 45) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Event name should be less than 45 characters.");
            response.sendRedirect("updateEvent?eventId=" + eventID);
            return;
        }

        if (eventDate.before(Date.valueOf(LocalDate.now()))) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Event date should be in the future.");
            response.sendRedirect("updateEvent?eventId=" + eventID);
            return;
        }

        EventsService eventsService = new EventsService();
        Event event = new Event();

        event.setEventId(eventID);
        event.setEventName(eventName);
        event.setEventDetails(eventDetails);
        event.setDate(eventDate);
        event.setCategory(category);

        boolean isCreated = eventsService.updateEvent(event);

        if (isCreated) {
            session.setAttribute("status", "success");
            session.setAttribute("validation", "Event updated successfully.");
        } else {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Failed to update event.");
        }

        response.sendRedirect("updateEvent?eventId=" + eventID);
    }


}