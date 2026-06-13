package com.saekey;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.saekey.Show;
import com.saekey.DBConnection;

public class ShowDAO {

    public List<Show> getAllShows() {

        List<Show> shows = new ArrayList<>();

        try {

            Connection con = DBConnection.getConnection();

            String sql = "SELECT * FROM Shows";

            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Show show = new Show();

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

                shows.add(show);
            }

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return shows;
    }
    
    public Show getShowById(int id) {
        Show show = null;

        try {
            Connection con = DBConnection.getConnection();

            String sql = "SELECT * FROM Shows WHERE ShowID = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

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

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return show;
    }
}