package com.saekey;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/productDetails")
public class ProductDetailsServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        String asin = request.getParameter("asin");

        Product product = null;

        try (
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM Products WHERE ASIN = ?")
        ) {

            System.out.println("ASIN = " + asin);

            ps.setString(1, asin);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                System.out.println("Product found");

                product = new Product();

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

                System.out.println("Product Name = " +
                                   product.getProductName());

            } else {

                System.out.println("No product found for ASIN = " + asin);
            }

            rs.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        request.setAttribute("product", product);

        request.getRequestDispatcher("productDetails.jsp")
               .forward(request, response);
    }
}