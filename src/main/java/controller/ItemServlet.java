package controller;

import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.awt.*;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.ObjectMapper;
import model.Item;
import model.Product;
import model.ShoppingCart;
import util.ItemUtil;

import static util.ItemUtil.getItem;
import static util.ItemUtil.setItem;

@WebServlet(value = "/itemForm")
public class ItemServlet extends HttpServlet {
    private String getFileName(final Part part) {
        final String partHeader = part.getHeader("content-disposition");

        for (String content : part.getHeader("content-disposition").split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(
                        content.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return null;
    }
    private static final long serialVersionUID = 1L;

    ObjectMapper mapper = new ObjectMapper();

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productName=request.getParameter("productName");
        Double productPrice=Double.parseDouble(request.getParameter("productPrice"));
        System.out.println(productPrice);
        int quantity=Integer.parseInt(request.getParameter("quantity"));
        System.out.println(quantity);
        String Description=request.getParameter("Desc");
        String category=request.getParameter("category");
        String filepath=request.getParameter("image_upload");
        byte[] productPic = filepath.getBytes();
        Item item= new Item(productName,productPrice,quantity,Description,productPic,category);
         Item iteminsert= ItemUtil.setItem(item);
        PrintWriter out =response.getWriter();
          try{
            out.print(mapper.writeValueAsString(iteminsert));
        }catch (JsonGenerationException e) {
            e.printStackTrace();
        }
        ///////////////////////////////////////////////////////////////////

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/jsp/productForm.jsp").forward(request,response);
    }
}
