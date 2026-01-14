package Servlet;

import Model.Booking;
import Services.BookingService;

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

@WebServlet(name = "UpdateBookingStatusServlet", value = "/updateBookingStatus")
public class UpdateBookingStatusServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        HttpSession session = request.getSession();

        if (request.getParameter("bookingId") == null) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Booking ID is required.");

            response.sendRedirect("eventManager");
            return;
        }

        if (request.getParameter("status") == null) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Status is required.");

            response.sendRedirect("eventManager");
            return;
        }

        int status = Integer.parseInt(request.getParameter("status"));
        int bookingID = Integer.parseInt(request.getParameter("bookingId"));
        BookingService bookingService = new BookingService();

        boolean isUpdated = bookingService.updateStatus(bookingID, status);

        if (isUpdated) {
            session.setAttribute("status", "success");
            session.setAttribute("validation", "Booking Staus Updated successfully.");
        } else {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Failed to update booking status.");
        }

        response.sendRedirect("eventManager");
        return;
    }

}