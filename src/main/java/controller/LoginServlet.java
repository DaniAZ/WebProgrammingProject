package controller;

import model.User;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;




@WebServlet(value = "/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public static long getSerialVersionUID() {
        return serialVersionUID;
    }
    String userCookie;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
               getSerialVersionUID();
        Connection con = (Connection) getServletContext().getAttribute("DBConnection");
                String uname=(String)request.getParameter("username");
                String upass=(String)request.getParameter("password");

        try {
              Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select username,password from users where username='"+uname+"' and password='"+upass+"'");
               if(rs.next()) {
                 request.getSession().setAttribute("name",request.getParameter("username"));
                 request.removeAttribute("Message");
                userCookie=(String) request.getSession().getAttribute("name");
                //adding a cookie
                if("on".equals(request.getParameter("remember")))
                {
                    Cookie userNameCookie = new Cookie("user", (String) request.getSession().getAttribute("name"));
                    //setting a cookie for month
                    userNameCookie.setMaxAge(2629746);
                    userNameCookie.setPath("/");
                    response.addCookie(userNameCookie);
                }
                else
                {
                    Cookie userNameCookie = new Cookie("user", null);
                    //setting a cookie for month
                    userNameCookie.setMaxAge(0);
                    userNameCookie.setPath("/");
                    response.addCookie(userNameCookie);
                }

                //   request.getRequestDispatcher("WEB-INF/jsp/checkout.jsp").forward(request,response);
                request.getRequestDispatcher("index.jsp").forward(request,response);
                //  response.sendRedirect("WEB-INF/jsp/welcome.jsp");



            }else {
                request.getSession().setAttribute("Message","please enter user name or password");
                response.sendRedirect("index.jsp");
            }



        }
          catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        if(request.getCookies()!=null) {
                 for (Cookie cookie : request.getCookies()) {
                         if (cookie.getValue().equals(userCookie)) {
                          request.getSession().setAttribute("userName",userCookie);
                     }
                 }
             }
             request.getRequestDispatcher("index.jsp").forward(request,response);
        //response.sendRedirect("index.jsp");
    }
}
