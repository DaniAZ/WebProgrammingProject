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
        System.out.println("insidepost");
        String fullname=request.getParameter("fullname");
        String email=request.getParameter("email");
        String username=request.getParameter("username");
        String password=request.getParameter("password");

        if(UserUtil.setUsers(new User(fullname,email,username,password))) {
            request.getSession().setAttribute("Welcome", "Welcome" + fullname);
            response.sendRedirect("/login");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           String username= request.getParameter("username");
          System.out.println(username);
         boolean isUserExist= UserUtil.isExist(new User(username));
         System.out.println(isUserExist);
        PrintWriter out = response.getWriter();

        try {

            out.println(isUserExist);
        } finally {
            out.close();
        }

    }
}
