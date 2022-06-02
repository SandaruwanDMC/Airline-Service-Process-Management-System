
package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.*;

public class beanClass {
    
    private dbcon con = new dbcon();
    
    private String dairport;
    private String airport;
    private String startdatetime;
    private String enddatetime;
    private String adults;
    private String children;
    private String vclass;
    private String email;
    int state = 0;
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
    
    public dbcon getCon() {
        return con;
    }

    public void setCon(dbcon con) {
        this.con = con;
    }
    
    public String getDairport() {
        return dairport;
    }

    public void setDairport(String dairport) {
        this.dairport = dairport;
    }

   
    public String getAirport() {
        return airport;
    }

    
    public void setAirport(String airport) {
        this.airport = airport;
    }

    public String getEmail() {
        return email;
    }

    
    public void setEmail(String email) {
        this.email = email;
    }
    
    public String getStartdatetime() {
        return startdatetime;
    }

    
    public void setStartdatetime(String startdatetime) {
        this.startdatetime = startdatetime;
    }

    
    public String getEnddatetime() {
        return enddatetime;
    }

    
    public void setEnddatetime(String enddatetime) {
        this.enddatetime = enddatetime;
    }

    
    public String getAdults() {
        return adults;
    }

    
    public void setAdults(String adults) {
        this.adults = adults;
    }

    
    public String getChildren() {
        return children;
    }

    
    public void setChildren(String children) {
        this.children = children;
    }

    public String getVclass() {
        return vclass;
    }

    public void setVclass(String vclass) {
        this.vclass = vclass;
    }
    public boolean registerClient(){
        try {
            PreparedStatement ps = con.Connection().prepareStatement("insert into clientdetails(dairport, airport, startdatetime, enddatetime,adults, children, vclass,email) values(?, ?, ?, ?, ?, ?,?,?)");
            ps.setString(1, dairport);
            ps.setString(2, airport);
            ps.setString(3, startdatetime);
            ps.setString(4, enddatetime);
            ps.setString(5, adults);
            ps.setString(6, children);
            ps.setString(7, vclass);
            ps.setString(8, email);
            
            state = ps.executeUpdate();
           
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return state == 1;
    }
     public boolean updateClient(String email, String airport, String adults, String children){
  
        
        try {
            PreparedStatement ps = con.Connection().prepareStatement("UPDATE clientdetails SET airport=?, adults=?, children=?  WHERE email=?");
            
            ps.setString(1, airport);
            ps.setString(2, adults);
            ps.setString(3, children);
            ps.setString(4, email);
            
            
            state = ps.executeUpdate();
           
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return state == 1; 
        }
     
     public boolean deleteClient(String email){
  
        
        try {
            PreparedStatement ps = con.Connection().prepareStatement("DELETE FROM clientdetails WHERE email=?");
            ps.setString(1, email);
     
            
            state = ps.executeUpdate();
           
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return state == 1; 
        }
    
}
