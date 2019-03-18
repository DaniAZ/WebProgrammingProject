package util;


import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;
import model.Item;
import model.Product;

import java.sql.*;
import java.util.ArrayList;


public class ItemUtil {

    public static Item  setItem(Item item){
        try

        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping?characterEncoding=latin1&useConfigs=maxPerformance&autoReconnect=true&ssl=false", "root", "root");
            Statement stmt = con.createStatement();
            // the mysql insert statement
            String query = " insert into item (productName, productPrice,quantity,descriptionItem,category,productPic)"
                    + " values (?,?,?,?,?,?)";
            // create the mysql insert preparedstatement
            PreparedStatement preparedStmt = con.prepareStatement(query);
            preparedStmt.setString (1, item.getProductName());
            preparedStmt.setDouble (2, item.getProductPrice());
            preparedStmt.setInt (3, item.getQuantity());
            preparedStmt.setString (4, item.getDescription());
            preparedStmt.setString (5, item.getCategory());
            preparedStmt.setBytes(6, item.getProductPic());
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
        return item;
    }

    public static String  getItem(){
        ArrayList<Item> items = new ArrayList<Item>();
        ArrayList<String> image = new ArrayList<String>();
            String test=null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping?characterEncoding=latin1&useConfigs=maxPerformance&autoReconnect=true&ssl=false", "root", "root");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select * from product where item_id=14");
            while(rs.next()){
//                Item item=new Item();
//                item.setId(rs.getInt(1));
//                item.setProductName(rs.getString(2));
//                item.setProductPrice(rs.getDouble(3));
//                item.setQuantity(rs.getInt(4));
//                item.setDescription(rs.getString(5));
//                 item.setProductPic(rs.getBytes(6));
//                 items.add(item);
                try {
                    byte[] encodeBase64 = Base64.encode(rs.getBytes(6)).getBytes();
                    String base64Encoded = new String(encodeBase64, "UTF-8");
                   // image.add(base64Encoded);
                    test=base64Encoded;
                   // System.out.println(base64Encoded);
                }
                catch (Exception e){
                    System.out.println(e.getMessage());
                }

            }
        }
        catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return test;
    }
}
