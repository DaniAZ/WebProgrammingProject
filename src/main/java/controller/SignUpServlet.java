package controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import model.Product;
import model.ShoppingCart;
import model.User;
import util.UserUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.ObjectMapper;

@WebServlet(value = "/signup")
public class SignUpServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    // private ProductDAO dao;
    ObjectMapper mapper = new ObjectMapper();

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fullname=request.getParameter("fullname");
        String email=request.getParameter("email");
        String username=request.getParameter("username");
        String password=request.getParameter("password");

        if(UserUtil.setUsers(new User(fullname,email,username,password))) {
            request.getSession().setAttribute("Welcome", "Welcome  " + fullname);
            response.sendRedirect("/login");
        }
        else{
            request.getSession().setAttribute("Warning", "Username or email exist please try again");
            response.sendRedirect("/signup.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        if(request.getParameter("username")!=null) {
            PrintWriter out = response.getWriter();
                String username = request.getParameter("username");
                Boolean isUser= UserUtil.isExist(new User(username));

            try {
                 out.println(isUser);
            } finally {
                out.close();
            }
            }
            else if(request.getParameter("email")!=null) {
            PrintWriter out = response.getWriter();
            String email =request.getParameter("email") ;
            Boolean isEmailUser = UserUtil.isEmailExist(email);
            try {
                out.println(isEmailUser);
                      } finally {
                out.close();
            }
        }


    }
}
