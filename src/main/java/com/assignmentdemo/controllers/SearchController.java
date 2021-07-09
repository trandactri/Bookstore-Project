package com.assignmentdemo.controllers;

import com.assignmentdemo.daos.ProductDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "SearchController", value = "/search")
public class SearchController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String txtSearch = request.getParameter("txtSearch");
        request.setAttribute("listP", ProductDAO.searchByName(txtSearch));
        request.setAttribute("listCC",ProductDAO.getAllCategory()); //display category list
        request.setAttribute("txtS",txtSearch); //save value for search bar
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }
}
