package com.saekey;

import java.io.IOException;
import java.sql.*;

import com.saekey.GiftCard;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/GiftCardDetails")
public class GiftCardDetailsServlet extends HttpServlet {

    private String jdbcURL =
    		"jdbc:sqlserver://localhost:1433;" +
    	            "databaseName=ProductDB;" +
    	            "encrypt=false;" +
    	            "trustServerCertificate=true";
    
    private String jdbcUsername = "arbajuser";
    private String jdbcPassword =  "abc@12345";

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        String idParam = request.getParameter("id");

        GiftCard card = null;

        try {

            int id = Integer.parseInt(idParam);

            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            Connection conn =
                DriverManager.getConnection(
                    jdbcURL,
                    jdbcUsername,
                    jdbcPassword);

            String sql =
                "SELECT * FROM AmazonGiftCards WHERE GiftCardId=?";

            PreparedStatement ps =
                conn.prepareStatement(sql);

            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            if(rs.next()) {

                card = new GiftCard();

                card.setGiftCardId(rs.getInt("GiftCardId"));
                card.setGiftCardName(rs.getString("GiftCardName"));
                card.setBrand(rs.getString("Brand"));
                card.setImageUrl(rs.getString("ImageUrl"));
                card.setOriginalAmount(rs.getDouble("OriginalAmount"));
                card.setRating(rs.getDouble("Rating"));
                card.setReviewCount(rs.getInt("ReviewCount"));
                card.setCurrencyCode(rs.getString("CurrencyCode"));
                card.setOccasion(rs.getString("Occasion"));
            }

            conn.close();

        } catch(Exception e) {
            e.printStackTrace();
        }

        request.setAttribute("giftCard", card);

        request.getRequestDispatcher("giftCardDetails.jsp")
               .forward(request,response);
    }
}