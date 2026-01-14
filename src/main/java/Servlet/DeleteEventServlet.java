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
import java.util.ArrayList;

@WebServlet(name = "DeleteEventServlet", value = "/deleteEvent")
public class DeleteEventServlet extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        HttpSession session = request.getSession();

        if (request.getParameter("eventId") == null) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Event ID is required.");
            response.sendRedirect("events");
            return;
        }

        EventsService eventsService = new EventsService();

        boolean isDeleted = eventsService.deleteEvent(Integer.parseInt(request.getParameter("eventId")));

        if (isDeleted) {
            session.setAttribute("status", "success");
            session.setAttribute("validation", "Event deleted successfully.");
        } else {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Failed to delete event.");
        }

        response.sendRedirect("eventManager");
    }


}