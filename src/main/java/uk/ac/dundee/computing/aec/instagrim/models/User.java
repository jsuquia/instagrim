/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package uk.ac.dundee.computing.aec.instagrim.models;

import com.datastax.driver.core.BoundStatement;
import com.datastax.driver.core.Cluster;
import com.datastax.driver.core.PreparedStatement;
import com.datastax.driver.core.ResultSet;
import com.datastax.driver.core.Row;
import com.datastax.driver.core.Session;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import uk.ac.dundee.computing.aec.instagrim.lib.AeSimpleSHA1;
import uk.ac.dundee.computing.aec.instagrim.stores.Pic;

/**
 *
 * @author Administrator
 */
public class User {
    
    Cluster cluster;
    public User(){
        
    }
    
    public boolean isRegisterValid(String username){
        Session session = cluster.connect("instagrim");
        PreparedStatement ps = session.prepare("SELECT login FROM userprofiles WHERE login =?");
        ResultSet rs = null;
        BoundStatement boundStatement = new BoundStatement(ps);
        rs = session.execute( // this is where the query is executed
                boundStatement.bind( // here you are binding the 'boundStatement'
                        username));
        //We are assuming this always works.  Also a transaction would be good here !
        if (rs.isExhausted()) {
            System.out.println("Match Found");
            return true;
        } else {
            return false;
        }
    }
    
    public boolean RegisterUser(String username, String Password, String firstname, String surname, String email){
        AeSimpleSHA1 sha1handler=  new AeSimpleSHA1();
        String EncodedPassword=null;
        try {
            EncodedPassword= sha1handler.SHA1(Password);
        }catch (UnsupportedEncodingException | NoSuchAlgorithmException et){
            System.out.println("Can't check your password");
            return false;
        }
        Session session = cluster.connect("instagrim");
        PreparedStatement ps = session.prepare("insert into userprofiles (login, password, first_name, last_name, email) Values(?,?,?,?,?)");
       
        BoundStatement boundStatement = new BoundStatement(ps);
        session.execute( // this is where the query is executed
                boundStatement.bind( // here you are binding the 'boundStatement'
                        username,EncodedPassword, firstname, surname, email));
        //We are assuming this always works.  Also a transaction would be good here !
        return true;
    }
    
    
    public boolean updateDetails(String firstname, String lastname, String email, String username){
        Session session = cluster.connect("instagrim");
        PreparedStatement ps = session.prepare("UPDATE userprofiles SET first_name=?,last_name=?, email=? WHERE login=?;");  //CQL code
        ResultSet rs = null;
        BoundStatement boundStatement = new BoundStatement(ps);
        rs = session.execute( // this is where the query is executed
                boundStatement.bind( // here you are binding the 'boundStatement'
                        firstname, lastname, email, username));
    return true;  
    }
    
    public boolean IsValidUser(String username, String Password){
        AeSimpleSHA1 sha1handler=  new AeSimpleSHA1();
        String EncodedPassword=null;
        try {
            EncodedPassword= sha1handler.SHA1(Password);
        }catch (UnsupportedEncodingException | NoSuchAlgorithmException et){
            System.out.println("Can't check your password");
            return false;
        }
        Session session = cluster.connect("instagrim");
        PreparedStatement ps = session.prepare("select password from userprofiles where login =?");  //CQL code
        ResultSet rs = null;
        BoundStatement boundStatement = new BoundStatement(ps);
        rs = session.execute( // this is where the query is executed
                boundStatement.bind( // here you are binding the 'boundStatement'
                        username));
        if (rs.isExhausted()) {
            System.out.println("No Images returned");
            return false;
        } else {
            for (Row row : rs) {
               
                String StoredPass = row.getString("password");
                if (StoredPass.compareTo(EncodedPassword) == 0)
                    return true;
            }
        }
   
    
    return false;  
    }
    
    /**
     *
     * @param username
     * @return
     */
    public String getFirstName(String username){
        
        
        Session session = cluster.connect("instagrim");
        PreparedStatement ps = session.prepare("select first_name from userprofiles where login =?");
        ResultSet rs = null;
        BoundStatement boundStatement = new BoundStatement(ps);
        rs = session.execute( // this is where the query is executed
                boundStatement.bind( // here you are binding the 'boundStatement'
                        username));
        //We are assuming this always works.  Also a transaction would be good here !
        String us = null;
        for (Row row : rs) {
                us = row.getString("first_name");

            }
        return us;
    }
    
    public String getLastName(String username){
        Session session = cluster.connect("instagrim");
        PreparedStatement ps = session.prepare("select last_name from userprofiles where login =?");
        ResultSet rs = null;
        BoundStatement boundStatement = new BoundStatement(ps);
        rs = session.execute( // this is where the query is executed
                boundStatement.bind( // here you are binding the 'boundStatement'
                        username));
        //We are assuming this always works.  Also a transaction would be good here !
        String us = null;
        for (Row row : rs) {
                us = row.getString("last_name");

            }
        return us;
    }
    
    public String getEmail(String username){
        Session session = cluster.connect("instagrim");
        PreparedStatement ps = session.prepare("select email from userprofiles where login =?");
        ResultSet rs = null;
        BoundStatement boundStatement = new BoundStatement(ps);
        rs = session.execute( // this is where the query is executed
                boundStatement.bind( // here you are binding the 'boundStatement'
                        username));
        //We are assuming this always works.  Also a transaction would be good here !
        String us = null;
        for (Row row : rs) {
                us = row.getString("email");

            }
        return us;
    }
    
       public void setCluster(Cluster cluster) {
        this.cluster = cluster;
    }

    
}
