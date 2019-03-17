package controller;

import model.Product;
import model.ShoppingCart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value = "/checkout")
public class CheckOutServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("inside checkout");
      //  request.getSession().setAttribute("ProductList", ShoppingCart.getUserShoppingCart());
        double totals=  calculateProducts((ArrayList<Product>)request.getSession().getAttribute("products"));
        request.getSession().setAttribute("total",totals);
        request.getRequestDispatcher("/WEB-INF/jsp/checkout.jsp").forward(request,response);
    }
    public double calculateProducts(ArrayList<Product> productList){
        double total=0.0;
        for(Object product: productList ){
            Product pro=(Product)product;
            System.out.println(pro.getProductPrice().toString());
            double x=Double.parseDouble(pro.getProductPrice().toString());
            total+=x;
        }
        return total;
    }
}
