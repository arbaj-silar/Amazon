package com.saekey;

import com.saekey.GiftCardDAO;
import com.saekey.GiftCard;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.List;

@WebServlet("/GiftCards")
public class GiftCardsServlet extends HttpServlet {

    protected void doGet(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        GiftCardDAO dao = new GiftCardDAO();

        List<GiftCard> giftCards = dao.getAllGiftCards();

        request.setAttribute("giftCards", giftCards);

        request.getRequestDispatcher("/giftcards.jsp")
                .forward(request, response);
    }
}