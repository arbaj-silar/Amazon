package com.saekey;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/todayDeals")
public class TodayDealsServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

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

        ArrayList<Product> products = new ArrayList<>();

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            Connection con = DriverManager.getConnection(URL, USER, PASSWORD);

            String sql = "SELECT TOP 1000 * FROM Products ORDER BY CreatedDate DESC";

            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Product product = new Product();

                product.setAsin(rs.getString("ASIN"));
                product.setProductName(rs.getString("ProductName"));
                product.setBrand(rs.getString("Brand"));
                product.setCategory(rs.getString("Category"));
                product.setDescription(rs.getString("Description"));
                product.setListPrice(rs.getDouble("ListPrice"));
                product.setSalePrice(rs.getDouble("SalePrice"));
                product.setCurrencyCode(rs.getString("CurrencyCode"));
                product.setStockQty(rs.getInt("StockQty"));
                product.setRating(rs.getDouble("Rating"));
                product.setReviewCount(rs.getInt("ReviewCount"));
                product.setImageURL(rs.getString("ImageURL"));
                product.setPrimeEligible(rs.getBoolean("IsPrimeEligible"));

                products.add(product);
            }

            rs.close();
            ps.close();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        request.setAttribute("products", products);

        request.getRequestDispatcher("todayDeals.jsp")
               .forward(request, response);
    }

}