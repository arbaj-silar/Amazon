package com.saekey;

import com.saekey.ShowDAO;
import com.saekey.Show;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.List;

@WebServlet("/primevideo")
public class PrimeVideoServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        ShowDAO dao = new ShowDAO();

        List<Show> shows = dao.getAllShows();

        request.setAttribute("shows", shows);

        RequestDispatcher rd =
                request.getRequestDispatcher("primevideo.jsp");

        rd.forward(request, response);
    }
}