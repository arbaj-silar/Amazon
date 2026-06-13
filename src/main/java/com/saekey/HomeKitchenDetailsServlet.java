package com.saekey;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.sql.*;

@WebServlet("/HomeKitchenDetails")
public class HomeKitchenDetailsServlet extends HttpServlet {

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

        HomeKitchen product = null;

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
                "SELECT * FROM HomeKitchen WHERE HK_id=?";

            PreparedStatement ps =
                conn.prepareStatement(sql);

            ps.setInt(1, id);

            ResultSet rs =
                ps.executeQuery();

            if(rs.next()) {

                product = new HomeKitchen();

                product.setHkId(
                    rs.getInt("HK_id")
                );

                product.setHkName(
                    rs.getString("HK_name")
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
            "homekitchendetails.jsp"
        ).forward(request, response);
    }
}