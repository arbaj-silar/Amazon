package com.saekey;

import java.io.IOException;
import java.sql.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/show-details")
public class ShowDetailsServlet extends HttpServlet {

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

        String idParam = request.getParameter("id");

        // 1. Validate ID parameter
        if (idParam == null || idParam.isEmpty()) {
            response.sendRedirect("primevideo");
            return;
        }

        int showId;

        try {
            showId = Integer.parseInt(idParam);
        } catch (NumberFormatException e) {
            response.sendRedirect("primevideo");
            return;
        }

        Show show = null;

        String sql = "SELECT * FROM Shows WHERE ShowID = ?";

        // 2. JDBC safely handled using try-with-resources
        try (Connection con = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, showId);

            try (ResultSet rs = ps.executeQuery()) {

                if (rs.next()) {
                    show = new Show();

                    show.setShowID(rs.getInt("ShowID"));
                    show.setTitle(rs.getString("Title"));
                    show.setDescription(rs.getString("Description"));
                    show.setImage(rs.getString("Image"));
                    show.setReleaseYear(rs.getInt("ReleaseYear"));
                    show.setAudience(rs.getString("Audience"));
                    show.setContentRating(rs.getString("ContentRating"));
                    show.setCast(rs.getString("Cast"));
                    show.setGenre(rs.getString("Genre"));
                    show.setCategory(rs.getString("Category"));
                    show.setRating(rs.getDouble("Rating"));
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        // 3. Handle not found case
        if (show == null) {
            response.sendRedirect("primevideo");
            return;
        }

        // 4. Forward to JSP
        request.setAttribute("show", show);
        request.getRequestDispatcher("/show-details.jsp")
               .forward(request, response);
    }
}