package DB;

import Models.Items;
import Models.Users;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DBConnection {
  private static Connection connection;
  static {
    try{
      Class.forName("com.mysql.cj.jdbc.Driver");
      connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/bitlab_shop",
          "root","");
    }catch (Exception e){
      e.printStackTrace();
    }
  }
  public static ArrayList<Items> getItems(){
    ArrayList<Items> items=new ArrayList<>();
        try{
          PreparedStatement statement= connection.prepareStatement(
              "SELECT *FROM items");
          ResultSet resultSet= statement.executeQuery();
          while(resultSet.next()){
        Items item=new Items();
            item.setId(resultSet.getLong("id"));
            item.setName(resultSet.getString("name"));
            item.setDescription(resultSet.getString("description"));
            item.setPrice(resultSet.getDouble("price"));

            items.add(item);
          }
          statement.close();
        }catch (Exception e){
          e.printStackTrace();
        }
        return items;
  }
  public static Users getUsers(String email){
   Users users=null;
    try{
    PreparedStatement statement=connection.prepareStatement(""+
        "SELECT * from users WHERE email=?");
    statement.setString(1,email);
    ResultSet resultSet=statement.executeQuery();
    if(resultSet.next()){
       users=new Users();
       users.setId((long) resultSet.getInt("id"));
      users.setEmail(resultSet.getString("email"));
      users.setPassword(resultSet.getString("password"));
      users.setFullName(resultSet.getString("full_name"));
    }
    statement.close();
    }catch(Exception e){
      e.printStackTrace();
    }
    return users;
  }
}
