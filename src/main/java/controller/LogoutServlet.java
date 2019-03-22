package controller;

import model.ShoppingCart;
import util.UserUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;

@WebServlet(value = "/logout")
public class LogoutServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       HttpSession session=request.getSession(false);
        Connection con = (Connection) getServletContext().getAttribute("DBConnection");
         if(!session.equals(null)) {
             ShoppingCart.deleteAllProduct(con);
             session.invalidate();
             request.getSession().setAttribute("Message", "You Logout ");
             response.sendRedirect("/login");
         }
    }
}
