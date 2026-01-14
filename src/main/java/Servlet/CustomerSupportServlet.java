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

@WebServlet(name = "CustomerSupportServlet", value = "/customerSupport")
public class CustomerSupportServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("customerSupport.jsp");

        HttpSession session = request.getSession();

        if (session.getAttribute("user") == null) {
            session.setAttribute("status", "failed");
            session.setAttribute("validation", "Please login to access the dashboard.");
            response.sendRedirect("login");
            return;
        }

        User user = (User) session.getAttribute("user");

        MessageService messageService = new MessageService();
        ArrayList<Message> messages = messageService.getAllMessages();

        request.setAttribute("messages", messages);
        request.setAttribute("user", user);
        dispatcher.forward(request, response);
    }

}
