package util;

import model.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserUtil {

    public static boolean setUsers(User user){

        try

        {

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping?characterEncoding=latin1&useConfigs=maxPerformance&autoReconnect=true&ssl=false", "root", "root");
            PreparedStatement st = con.prepareStatement("select * from users where username=? or email=?");
            st.setString(1,user.getUsername());
            st.setString(2,user.getEmail());
            ResultSet rs=st.executeQuery();
            if(!rs.next()){
                  // the mysql insert statement
              System.out.println(user.getUsername()+","+user.getFullname()+","+user.getEmail()+","+user.getPassword());
                String query = " insert into users (fullname,email,username,password)"
                        + " values (?,?,?,?)";
                // create the mysql insert preparedstatement
                PreparedStatement preparedStmt = con.prepareStatement(query);
                preparedStmt.setString (1, user.getFullname());
                preparedStmt.setString (2, user.getEmail());
                preparedStmt.setString (3, user.getUsername());
                preparedStmt.setString (4, user.getPassword());
                preparedStmt.execute();
                return true;
            }

            con.close();
        }
        catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return false;
    }
    public static Boolean isExist(User user){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping?characterEncoding=latin1&useConfigs=maxPerformance&autoReconnect=true&ssl=false", "root", "root");
            PreparedStatement st = con.prepareStatement("select * from users where username=?");
            st.setString(1, user.getUsername());
            ResultSet rs = st.executeQuery();
            if(!rs.next()){
                 return false;
            }
        }
        catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
          return true;
    }
    public static Boolean isEmailExist(String email){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping?characterEncoding=latin1&useConfigs=maxPerformance&autoReconnect=true&ssl=false", "root", "root");
            PreparedStatement st = con.prepareStatement("select * from users where email=?");
            st.setString(1, email);
            ResultSet rs = st.executeQuery();
            if(!rs.next()){
                 return false;
            }
        }
        catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return true;
    }
}
