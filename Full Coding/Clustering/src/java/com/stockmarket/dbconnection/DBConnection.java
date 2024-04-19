/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.stockmarket.dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/**
 *
 * @author Purushot
 */
public class DBConnection {
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost:3306/clustering";
    String username = "root";
    String password = "password";
    Connection conn = null;
    Statement stmt = null;
    public Statement getStatement(){
    try{
        Class.forName ("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(DB_URL,username,password);
        stmt = conn.createStatement();
        
    
    }catch(Exception e){
        System.out.println(e);
        e.printStackTrace();
    }
        return stmt;
    }
    
    
   
    
    
}
