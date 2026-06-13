package com.saekey;

import java.io.IOException;
import java.sql.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/PurchaseGiftCardServlet")
public class PurchaseGiftCardServlet extends HttpServlet {

    private String jdbcURL =
    		"jdbc:sqlserver://localhost:1433;" +
    	            "databaseName=ProductDB;" +
    	            "encrypt=false;" +
    	            "trustServerCertificate=true";
    
    private String jdbcUsername = "arbajuser";
    private String jdbcPassword = "abc@12345";

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        try {

            int giftCardId =
                Integer.parseInt(
                    request.getParameter("giftCardId"));

            String recipientName =
                request.getParameter("recipientName");

            String recipientEmail =
                request.getParameter("recipientEmail");

            double customerAmount =
                Double.parseDouble(
                    request.getParameter("customerAmount"));

            Class.forName(
                "com.microsoft.sqlserver.jdbc.SQLServerDriver");

            Connection conn =
                DriverManager.getConnection(
                    jdbcURL,
                    jdbcUsername,
                    jdbcPassword);

            String sql =
                "INSERT INTO GiftCardOrders " +
                "(GiftCardId,RecipientName,RecipientEmail,CustomerAmount) " +
                "VALUES(?,?,?,?)";

            PreparedStatement ps =
                conn.prepareStatement(sql);

            ps.setInt(1, giftCardId);
            ps.setString(2, recipientName);
            ps.setString(3, recipientEmail);
            ps.setDouble(4, customerAmount);

            ps.executeUpdate();

            conn.close();

            response.sendRedirect("giftcard-success.jsp");

        } catch(Exception e) {
            e.printStackTrace();
        }
    }
}