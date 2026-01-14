package Servlet;

import Model.Message;
import Services.MessageService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "MessageReplyServlet", value = "/replyMessage")
public class MessageReplyServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("messageReply.jsp");

        HttpSession session = request.getSession();

        if (session.getAttribute("user") == null || session.getAttribute("user").equals("")) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Please login to access the dashboard.");
            response.sendRedirect("login");
            return;
        }

        if (request.getParameter("messageId") == null || request.getParameter("messageId").isEmpty()) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Please select a message to reply.");
            response.sendRedirect("customerSupport");
            return;
        }

        int messageId = Integer.parseInt(request.getParameter("messageId"));

        MessageService messageService = new MessageService();
        Message message = messageService.getMessage(messageId);

        request.setAttribute("message", message);
        dispatcher.forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        HttpSession session = request.getSession();

        if (session.getAttribute("user") == null) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Please login to access the dashboard.");
            response.sendRedirect("login");
            return;
        }

        if (request.getParameter("messageId") == null || request.getParameter("messageId").isEmpty()) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Please select a message to reply.");
            response.sendRedirect("customerSupport");
            return;
        }

        int messageId = Integer.parseInt(request.getParameter("messageId"));
        String reply = request.getParameter("reply");

        if (request.getParameter("reply") == null || request.getParameter("reply").isEmpty()) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Please enter a reply.");

            response.sendRedirect("replyMessage?messageId=" + messageId);
            return;
        }

        MessageService messageService = new MessageService();
        Message message = new Message();

        message.setMessageId(messageId);
        message.setReply(reply);
        message.setStatus(1); // Assuming 1 means replied

        boolean status = messageService.updateMessage(message);

        if (status) {
            session.setAttribute("status", "success");
            session.setAttribute("validation", "Message replied successfully.");
        } else {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Failed to reply to the message.");
        }

        response.sendRedirect("replyMessage?messageId=" + messageId);
        return;
    }

}
