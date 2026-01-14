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

@WebServlet(name = "ContactUsServlet", value = "/contactUs")
public class ContactUsServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("contactUs.jsp");

        HttpSession session = request.getSession();

        if (session.getAttribute("user") == null) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Please login to access the contact Us.");
            response.sendRedirect("login");
            return;
        }

        dispatcher.forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        HttpSession session = request.getSession();

        if (session.getAttribute("user") == null) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Please login to access the contact Us.");
            response.sendRedirect("login");
            return;
        }

        int userId = ((User) session.getAttribute("user")).getUserId();
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String mobile = request.getParameter("mobile");
        String message = request.getParameter("message");

        if (name.length() > 45) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Name must be between 1 and 45 characters.");

            response.sendRedirect("contactUs");
            return;
        }

        if (!email.matches("^[\\w-.]+@([\\w-]+\\.)+[\\w-]{2,4}$") || email.length() > 100) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Invalid email format.");

            response.sendRedirect("contactUs");
            return;
        }

        if (mobile.isEmpty() || mobile.length() > 10) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Mobile number must be 10 digits.");

            response.sendRedirect("contactUs");
            return;
        }

        if (message.isEmpty() || message.length() > 500) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Message must be between 1 and 500 characters.");

            response.sendRedirect("contactUs");
            return;
        }

        MessageService messageService = new MessageService();
        Message msg = new Message();

        msg.setCustomerId(userId);
        msg.setName(name);
        msg.setEmail(email);
        msg.setMobile(mobile);
        msg.setMessage(message);
        msg.setDate(new java.sql.Date(System.currentTimeMillis()));
        msg.setStatus(0);

        if (messageService.addMessage(msg)) {
            session.setAttribute("status", "success");
            session.setAttribute("validation", "Message sent successfully.");
        } else {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Failed to send message.");
        }

        response.sendRedirect("contactUs");

    }


}
