package com.assignmentdemo.controllers;

import com.assignmentdemo.daos.ProductDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CategoryController", value = "/category")
public class CategoryController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String cateID = request.getParameter("cid"); //lay category id
        request.setAttribute("listP", ProductDAO.getProductByCID(Integer.valueOf(cateID)));
        request.setAttribute("listCC",ProductDAO.getAllCategory()); //display category list
        request.setAttribute("tag",Integer.valueOf(cateID)); //set cateID
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
