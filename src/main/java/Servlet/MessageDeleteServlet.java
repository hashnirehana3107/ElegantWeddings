package Servlet;


import Model.Message;
import Model.User;
import Services.MessageService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "MessageDeleteServlet", value = "/deleteMessage")
public class MessageDeleteServlet extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        HttpSession session = request.getSession();

        if (session.getAttribute("user") == null) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Please login to access the contact Us.");
            response.sendRedirect("login");
            return;
        }

        if (request.getParameter("messageId") == null || request.getParameter("messageId").isEmpty()) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Please select a message to delete.");
            response.sendRedirect("customerSupport");
            return;
        }

        int messageId = Integer.parseInt(request.getParameter("messageId"));

        MessageService service = new MessageService();

        boolean status = service.deleteMessage(messageId);

        if (status) {
            session.setAttribute("status", "success");
            session.setAttribute("validation", "Message deleted successfully.");
        } else {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Failed to delete message.");
        }

        response.sendRedirect("customerSupport");
        return;
    }

}
