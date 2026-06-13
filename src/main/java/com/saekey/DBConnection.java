package com.saekey;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

        private static final String URL =
        		"jdbc:sqlserver://localhost:1433;" +
        	            "databaseName=ProductDB;" +
        	            "encrypt=false;" +
        	            "trustServerCertificate=true";

        private static final String USER = "arbajuser";

        private static final String PASSWORD = "abc@12345";

        public static Connection getConnection() {

            Connection con = null;

            try {

                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

                con = DriverManager.getConnection(URL, USER, PASSWORD);

            } catch (Exception e) {
                e.printStackTrace();
            }

            return con;
        }
        

 
}