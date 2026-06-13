package com.saekey;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/ShopFashion")
public class ShopFashionServlet extends HttpServlet {

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

        List<ShopFashion> products = new ArrayList<>();

        try {

            Class.forName(
                "com.microsoft.sqlserver.jdbc.SQLServerDriver"
            );

            Connection conn =
                DriverManager.getConnection(
                    URL, USER, PASSWORD
                );

            String sql = """
                    SELECT *
                    FROM ShopFashion
                    ORDER BY SF_id
                    """;

            PreparedStatement ps =
                    conn.prepareStatement(sql);

            ResultSet rs =
                    ps.executeQuery();

            while(rs.next()) {

                ShopFashion p =
                        new ShopFashion();

                p.setSfId(rs.getInt("SF_id"));
                p.setSfName(rs.getString("SF_name"));
                p.setBrand(rs.getString("Brand"));
                p.setRating(rs.getDouble("Rating"));
                p.setReviewCount(
                        rs.getInt("ReviewCount"));
                p.setPrice(rs.getDouble("Price"));
                p.setType(rs.getString("Type"));
                p.setCurrencyCode(
                        rs.getString("CurrencyCode"));
                p.setImageURL(
                        rs.getString("ImageURL"));

                products.add(p);
            }

            conn.close();

        } catch(Exception e) {
            e.printStackTrace();
        }

        request.setAttribute(
                "products", products);

        request.getRequestDispatcher(
                "shopfashion.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        doGet(request, response);
    }
}