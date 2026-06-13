package com.saekey;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/Cooking")
public class CookingServlet extends HttpServlet {

    private static final String URL =
        "jdbc:sqlserver://localhost:1433;"
      + "databaseName=ProductDB;"
      + "encrypt=false;"
      + "trustServerCertificate=true";

    private static final String USER = "arbajuser";
    private static final String PASSWORD = "abc@12345";

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        List<Cooking> cookingList = new ArrayList<>();

        try {

            Class.forName(
                "com.microsoft.sqlserver.jdbc.SQLServerDriver"
            );

            Connection conn =
                DriverManager.getConnection(
                    URL,
                    USER,
                    PASSWORD
                );

            String sql = """
                SELECT *
                FROM Cooking
                ORDER BY C_id
                """;

            PreparedStatement ps =
                conn.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while(rs.next()) {

                Cooking c = new Cooking();

                c.setcId(rs.getInt("C_id"));
                c.setcName(rs.getString("C_name"));
                c.setBrand(rs.getString("Brand"));
                c.setImageURL(rs.getString("ImageURL"));
                c.setRating(rs.getDouble("Rating"));
                c.setReviewCount(rs.getInt("ReviewCount"));
                c.setPrice(rs.getDouble("Price"));
                c.setCurrencyCode(
                    rs.getString("CurrencyCode")
                );

                cookingList.add(c);
            }

            conn.close();

        } catch(Exception e) {
            e.printStackTrace();
        }

        request.setAttribute(
            "products",
            cookingList
        );

        request.getRequestDispatcher("cooking.jsp")
               .forward(request, response);
    }
}