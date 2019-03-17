package model;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;

public  class ShoppingCart {
   // private HashMap userShoppingCart;

    //private static ArrayList<Product> userShoppingCart;
     public ShoppingCart() {


    }

    public static   ArrayList<Product> getUserShoppingCart() {
        ArrayList<Product> products = new ArrayList<Product>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping?characterEncoding=latin1&useConfigs=maxPerformance&autoReconnect=true&ssl=false", "root", "root");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select * from product");
              while(rs.next()){
                  Product product=new Product();
                  product.setProductnumber(rs.getInt(1));
                  product.setProductName(rs.getString(2));
                  product.setProductPrice(rs.getString(3));
                  products.add(product);
              }


        }catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return products;
    }

    public static void  setUserShoppingCart(Product product) {
        try

        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping?characterEncoding=latin1&useConfigs=maxPerformance&autoReconnect=true&ssl=false", "root", "root");
            Statement stmt = con.createStatement();
            // the mysql insert statement
            String query = " insert into product (productName, productPrice)"
                    + " values (?, ?)";
            // create the mysql insert preparedstatement
            PreparedStatement preparedStmt = con.prepareStatement(query);
            preparedStmt.setString (1, product.getProductName());
            preparedStmt.setString (2, product.getProductPrice());
            preparedStmt.execute();

            con.close();
        }
        catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }
    public static void deleteProduct(Product product){
        try

        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping?characterEncoding=latin1&useConfigs=maxPerformance&autoReconnect=true&ssl=false", "root", "root");
            PreparedStatement st = con.prepareStatement("DELETE FROM product WHERE product_id = ?");
            st.setInt(1,product.getProductnumber());
            st.executeUpdate();

        }
        catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }



}

