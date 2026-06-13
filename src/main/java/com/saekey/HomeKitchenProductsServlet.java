package com.saekey;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/HomeKitchenProducts")
public class HomeKitchenProductsServlet extends HttpServlet {

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

        List<HomeKitchen> products = new ArrayList<>();

        try {

            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            Connection conn =
                    DriverManager.getConnection(URL, USER, PASSWORD);

            String sql = """
                    SELECT HK_id,
                           HK_name,
                           Brand,
                           ImageURL,
                           Rating,
                           ReviewCount,
                           Price,
                           CurrencyCode
                    FROM HomeKitchen
                    """;

            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                HomeKitchen p = new HomeKitchen();

                p.setHkId(rs.getInt("HK_id"));
                p.setHkName(rs.getString("HK_name"));
                p.setBrand(rs.getString("Brand"));
                p.setImageURL(rs.getString("ImageURL"));
                p.setRating(rs.getDouble("Rating"));
                p.setReviewCount(rs.getInt("ReviewCount"));
                p.setPrice(rs.getDouble("Price"));
                p.setCurrencyCode(rs.getString("CurrencyCode"));

                products.add(p);
            }

            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        request.setAttribute("products", products);

        request.getRequestDispatcher("homekitchen.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        doGet(request, response);
    }
}