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

@WebServlet(name = "CreateEventServlet", value = "/createEvent")
public class CreateEventServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("createEvent.jsp");

        HttpSession session = request.getSession();

        dispatcher.forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        HttpSession session = request.getSession();

        String eventName = request.getParameter("eventName");
        String eventDetails = request.getParameter("eventDetails");
        Date eventDate = Date.valueOf(request.getParameter("date"));
        String category = request.getParameter("category");

        if (eventName == null || eventDetails == null || eventDate == null || category == null
        || eventName.isEmpty() || eventDetails.isEmpty() || category.isEmpty()) {

            session.setAttribute("status", "failed");
            session.setAttribute("validation", "All fields are required.");

            response.sendRedirect("createEvent");
            return;
        }

        if (eventName.length()>45){
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Event name should be less than 45 characters.");
            response.sendRedirect("createEvent");
            return;
        }

        if (eventDate.before(Date.valueOf(LocalDate.now()))) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Event date should be in the future.");
            response.sendRedirect("createEvent");
            return;
        }

        EventsService eventsService = new EventsService();
        Event event = new Event();

        event.setEventName(eventName);
        event.setEventDetails(eventDetails);
        event.setDate(eventDate);
        event.setCategory(category);

        boolean isCreated = eventsService.createEvent(event);

        if (isCreated) {
            session.setAttribute("status", "success");
            session.setAttribute("validation", "Event created successfully.");
        } else {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Failed to create event.");

            response.sendRedirect("createEvent");
        }

        response.sendRedirect("eventManager");
    }


}