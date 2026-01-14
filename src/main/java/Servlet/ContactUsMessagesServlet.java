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
import java.util.ArrayList;

@WebServlet(name = "ContactUsMessagesServlet", value = "/messages")
public class ContactUsMessagesServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("customerMessages.jsp");

        HttpSession session = request.getSession();

        if (session.getAttribute("user") == null) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Please login to access the contact Us.");
            response.sendRedirect("login");
            return;
        }

        User user = (User) session.getAttribute("user");

        MessageService service = new MessageService();
        ArrayList<Message> messages = service.getMessagesByCustomerId(user.getUserId());

        request.setAttribute("messages", messages);
        request.setAttribute("user", user);
        dispatcher.forward(request, response);
    }

}
