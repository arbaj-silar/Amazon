package com.saekey;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.sql.*;

@WebServlet("/ShopFashionDetails")
public class ShopFashionDetailsServlet extends HttpServlet {

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

        ShopFashion product = null;

        try {

            int id =
                Integer.parseInt(
                    request.getParameter("id")
                );

            Class.forName(
                "com.microsoft.sqlserver.jdbc.SQLServerDriver"
            );

            Connection conn =
                DriverManager.getConnection(
                    URL, USER, PASSWORD
                );

            String sql =
                "SELECT * FROM ShopFashion WHERE SF_id=?";

            PreparedStatement ps =
                conn.prepareStatement(sql);

            ps.setInt(1, id);

            ResultSet rs =
                ps.executeQuery();

            if(rs.next()) {

                product = new ShopFashion();

                product.setSfId(rs.getInt("SF_id"));
                product.setSfName(rs.getString("SF_name"));
                product.setBrand(rs.getString("Brand"));
                product.setRating(rs.getDouble("Rating"));
                product.setReviewCount(
                    rs.getInt("ReviewCount")
                );
                product.setPrice(rs.getDouble("Price"));
                product.setType(rs.getString("Type"));
                product.setCurrencyCode(
                    rs.getString("CurrencyCode")
                );
                product.setImageURL(
                    rs.getString("ImageURL")
                );
            }

            rs.close();
            ps.close();
            conn.close();

        } catch(Exception e) {
            e.printStackTrace();
        }

        request.setAttribute(
            "product", product
        );

        request.getRequestDispatcher(
            "shopfashiondetails.jsp"
        ).forward(request, response);
    }
}