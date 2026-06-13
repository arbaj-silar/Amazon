package com.saekey;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.sql.*;

@WebServlet("/CookingDetails")
public class CookingDetailsServlet extends HttpServlet {

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

        Cooking product = null;

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
                    URL,
                    USER,
                    PASSWORD
                );

            String sql =
                "SELECT * FROM Cooking WHERE C_id = ?";

            PreparedStatement ps =
                conn.prepareStatement(sql);

            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            if(rs.next()) {

                product = new Cooking();

                product.setcId(
                    rs.getInt("C_id")
                );

                product.setcName(
                    rs.getString("C_name")
                );

                product.setBrand(
                    rs.getString("Brand")
                );

                product.setImageURL(
                    rs.getString("ImageURL")
                );

                product.setRating(
                    rs.getDouble("Rating")
                );

                product.setReviewCount(
                    rs.getInt("ReviewCount")
                );

                product.setPrice(
                    rs.getDouble("Price")
                );

                product.setCurrencyCode(
                    rs.getString("CurrencyCode")
                );
            }

            rs.close();
            ps.close();
            conn.close();

        } catch(Exception e) {
            e.printStackTrace();
        }

        request.setAttribute(
            "product",
            product
        );

        request.getRequestDispatcher(
            "cookingdetails.jsp"
        ).forward(
            request,
            response
        );
    }
}