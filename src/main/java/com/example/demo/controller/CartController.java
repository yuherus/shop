package com.example.demo.controller;

import com.example.demo.dao.CategoryDao;
import com.example.demo.dao.ParentCategoryDao;
import com.example.demo.model.Category;
import com.example.demo.model.ParentCategory;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/cart") //
public class CartController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ParentCategoryDao parentCategoryDao = new ParentCategoryDao();
        List<ParentCategory> listParentCategory = parentCategoryDao.selectAll();
        req.setAttribute("listParentCategory", listParentCategory);
        CategoryDao categoryDao = new CategoryDao();
        List<Category> listCategory = categoryDao.selectAll();
        req.setAttribute("listCategory", listCategory);
        RequestDispatcher dispatcher = req.getRequestDispatcher("/cart.jsp");
        dispatcher.forward(req, resp);
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}

