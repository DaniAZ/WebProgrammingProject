package controller;


import model.User;
import util.UserUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;


@WebServlet(value = "/signup")
public class SignUpServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;


    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Connection con = (Connection) getServletContext().getAttribute("DBConnection");
        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (UserUtil.setUsers(con, new User(fullname, email, username, password))) {
            request.getSession().setAttribute("Welcome", "Welcome  " + fullname);
            response.sendRedirect("/login");
        } else {
            request.getSession().setAttribute("Warning", "Username or email exist please try again");
            response.sendRedirect("/signup.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection con = (Connection) getServletContext().getAttribute("DBConnection");
        if (request.getParameter("username") != null) {
            PrintWriter out = response.getWriter();
            String username = request.getParameter("username");
            Boolean isUser = UserUtil.isExist(con, new User(username));

            try {
                out.println(isUser);
            } finally {
                out.close();
            }
        } else if (request.getParameter("email") != null) {
            PrintWriter out = response.getWriter();
            String email = request.getParameter("email");
            Boolean isEmailUser = UserUtil.isEmailExist(con, email);
            try {
                out.println(isEmailUser);
            } finally {
                out.close();
            }
        }


    }
}
