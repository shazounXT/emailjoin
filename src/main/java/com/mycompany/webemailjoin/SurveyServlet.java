package com.mycompany.webemailjoin;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;


@WebServlet(name="SurveyServlet", urlPatterns={"/submit"})
public class SurveyServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String firstName = req.getParameter("firstName");
        String lastName  = req.getParameter("lastName");
        String email     = req.getParameter("email");
        String dob       = req.getParameter("dob");
        String how       = req.getParameter("how");
        boolean likeBoth = "yes".equals(req.getParameter("likeBoth"));
        boolean emailOnly= "yes".equals(req.getParameter("emailOnly"));
        String contact   = req.getParameter("contact");

        if (firstName==null || firstName.isBlank()
            || lastName==null || lastName.isBlank()
            || email==null || email.isBlank()) {
            req.setAttribute("error", "Please fill in First Name, Last Name, and Email.");
            RequestDispatcher rd = req.getRequestDispatcher("/index.jsp");
            rd.forward(req, resp);
            return;
        }

        req.setAttribute("firstName", firstName);
        req.setAttribute("lastName",  lastName);
        req.setAttribute("email",     email);
        req.setAttribute("dob",       dob);
        req.setAttribute("how",       how);
        req.setAttribute("likeBoth",  likeBoth);
        req.setAttribute("emailOnly", emailOnly);
        req.setAttribute("contact",   contact);

        req.getRequestDispatcher("/thanks.jsp").forward(req, resp);
    }
}
