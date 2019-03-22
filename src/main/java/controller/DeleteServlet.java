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

@WebServlet(value = "/delete")
public class DeleteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    ObjectMapper mapper = new ObjectMapper();

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection con = (Connection) getServletContext().getAttribute("DBConnection");
              String productnumber=request.getParameter("productnumber");
            Product product = mapper.readValue(productnumber, Product.class);
              ShoppingCart.deleteProduct(con,product);
        PrintWriter out =response.getWriter();

        try{
            out.print(mapper.writeValueAsString(product));
        }catch (JsonGenerationException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
