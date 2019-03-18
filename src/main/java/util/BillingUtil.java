package util;

import model.Address;

import java.sql.*;
import java.util.ArrayList;

public class BillingUtil {


    public BillingUtil() {
    }

     public static void setBilling(Address address) {
        try

        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping?characterEncoding=latin1&useConfigs=maxPerformance&autoReconnect=true&ssl=false", "root", "root");
            Statement stmt = con.createStatement();

                // the mysql insert statement
                String query = " insert into billing (firstName,lastName,address,city,country,phoneNumber)"
                        + " values (?,?,?,?,?,?)";
                // create the mysql insert preparedstatement
                PreparedStatement preparedStmt = con.prepareStatement(query);
                preparedStmt.setString(1, address.getFirstName());
                preparedStmt.setString(2, address.getLastName());
                preparedStmt.setString(3, address.getAddress());
                preparedStmt.setString(4, address.getCity());
                preparedStmt.setString(5, address.getCountry());
                preparedStmt.setInt(6, address.getPhoneNumber());
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


}
