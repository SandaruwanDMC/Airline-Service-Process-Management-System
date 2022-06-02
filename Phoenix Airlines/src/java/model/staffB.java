
package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class staffB {
    
    private String email;
    private String password;
    int state = 0;
    boolean LoginStates = false;

    dbcon con = new dbcon();
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    public boolean signUp(){
      
        
        try {
            PreparedStatement ps = con.Connection().prepareStatement("insert into staffb(email, password) values(?, ?)");
            ps.setString(1, email);
            ps.setString(2, password);
  
            
            state = ps.executeUpdate();
           
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return state == 1;
    }
    public boolean login() throws ClassNotFoundException, SQLException{
      
        
     
        String sql = "SELECT * FROM staffb WHERE email = ? and password = ?";
        PreparedStatement ps = con.Connection().prepareStatement(sql);
        ps.setString(1, email);
        ps.setString(2, password);
        ResultSet rs = ps.executeQuery();
        LoginStates = rs.next();
           
              return LoginStates;
        }  
    
}
