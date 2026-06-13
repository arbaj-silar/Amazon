package com.saekey;

import java.sql.*;

import java.util.ArrayList;
import java.util.List;

import com.saekey.GiftCard;

public class GiftCardDAO {

    private String jdbcURL =
    		"jdbc:sqlserver://localhost:1433;" +
    	            "databaseName=ProductDB;" +
    	            "encrypt=false;" +
    	            "trustServerCertificate=true";
    
    private String jdbcUsername = "arbajuser";
    private String jdbcPassword = "abc@12345";

    public List<GiftCard> getAllGiftCards() {

        List<GiftCard> cards = new ArrayList<>();

        try {

            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            Connection conn =
                    DriverManager.getConnection(
                            jdbcURL,
                            jdbcUsername,
                            jdbcPassword);

            String sql = "SELECT * FROM AmazonGiftCards";

            PreparedStatement ps = conn.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                GiftCard card = new GiftCard();

                card.setGiftCardId(rs.getInt("GiftCardId"));
                card.setGiftCardName(rs.getString("GiftCardName"));
                card.setBrand(rs.getString("Brand"));
                card.setImageUrl(rs.getString("ImageUrl"));
                card.setOriginalAmount(rs.getDouble("OriginalAmount"));
                card.setRating(rs.getDouble("Rating"));
                card.setReviewCount(rs.getInt("ReviewCount"));
                card.setCurrencyCode(rs.getString("CurrencyCode"));
                card.setOccasion(rs.getString("Occasion"));

                cards.add(card);
            }

            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return cards;
    }
}