package com.example.demo.controller;

import com.example.demo.dao.CategoryDao;
import com.example.demo.dao.ParentCategoryDao;
import com.example.demo.dao.ProductDao;
import com.example.demo.model.Category;
import com.example.demo.model.ParentCategory;
import com.example.demo.model.Product;

import java.io.*;
import java.util.List;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns="/product")
public class ProductController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        ParentCategoryDao parentCategoryDao = new ParentCategoryDao();
        List<ParentCategory> listParentCategory = parentCategoryDao.selectAll();
        req.setAttribute("listParentCategory", listParentCategory);
        CategoryDao categoryDao = new CategoryDao();
        List<Category> listCategory = categoryDao.selectAll();
        req.setAttribute("listCategory", listCategory);
        ProductDao productDao = new ProductDao();
        List<Product> productList = productDao.selectAll();
        req.setAttribute("productList", productList);
        RequestDispatcher dispatcher = req.getRequestDispatcher("/product.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
