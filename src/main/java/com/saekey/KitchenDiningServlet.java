package com.saekey;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/KitchenDining")
public class KitchenDiningServlet extends HttpServlet {

    private static final String URL =
        "jdbc:sqlserver://localhost:1433;" +
        "databaseName=ProductDB;" +
        "encrypt=false;" +
        "trustServerCertificate=true";

    private static final String USER = "arbajuser";
    private static final String PASSWORD = "abc@12345";

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        List<KitchenDining> products = new ArrayList<>();

        try {

            Class.forName(
                "com.microsoft.sqlserver.jdbc.SQLServerDriver"
            );

            Connection conn =
                DriverManager.getConnection(
                    URL, USER, PASSWORD
                );

            String sql =
                "SELECT * FROM KitchenDining";

            PreparedStatement ps =
                conn.prepareStatement(sql);

            ResultSet rs =
                ps.executeQuery();

            while(rs.next()) {

                KitchenDining p =
                    new KitchenDining();

                p.setKdId(
                    rs.getInt("KD_id")
                );

                p.setKdName(
                    rs.getString("KD_name")
                );

                p.setBrand(
                    rs.getString("Brand")
                );

                p.setImageURL(
                    rs.getString("ImageURL")
                );

                p.setRating(
                    rs.getDouble("Rating")
                );

                p.setReviewCount(
                    rs.getInt("ReviewCount")
                );

                p.setPrice(
                    rs.getDouble("Price")
                );

                p.setCurrencyCode(
                    rs.getString("CurrencyCode")
                );

                products.add(p);
            }

            conn.close();

        } catch(Exception e) {
            e.printStackTrace();
        }

        request.setAttribute(
            "products",
            products
        );

        request.getRequestDispatcher(
            "kitchendining.jsp"
        ).forward(request,response);
    }
}