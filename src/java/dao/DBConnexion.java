package dao ;
import java.sql.*;

public class DBConnexion {
    private static Connection con=null;
 
    private DBConnexion() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost/wshop","root","");
        }
        catch(ClassNotFoundException e) {
            e.printStackTrace();
        }
        catch(SQLException e1) {
            e1.printStackTrace();
        }
    }
    public static Connection getInstance() {
        if(con==null)
            new DBConnexion();
        return con;
    }
}