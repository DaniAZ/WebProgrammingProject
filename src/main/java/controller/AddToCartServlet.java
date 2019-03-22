package controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import model.Product;
import model.ShoppingCart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.ObjectMapper;

@WebServlet(value= "/AddToCart")
public class AddToCartServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    ObjectMapper mapper = new ObjectMapper();

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection con = (Connection) getServletContext().getAttribute("DBConnection");
           String jsonSting = request.getParameter("product");
            Product product = mapper.readValue(jsonSting, Product.class);
            ShoppingCart.setUserShoppingCart(con,product);
            product.setProductnumber(ShoppingCart.getUserShoppingCart(con).size());
          PrintWriter out =response.getWriter();

          request.getSession().setAttribute("products", ShoppingCart.getUserShoppingCart(con));

        try{
            out.print(mapper.writeValueAsString(product));
        }catch (JsonGenerationException e) {
            e.printStackTrace();
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
