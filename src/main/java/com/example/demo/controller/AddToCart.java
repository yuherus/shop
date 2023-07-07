package com.example.demo.controller;

import com.example.demo.dao.CategoryDao;
import com.example.demo.dao.ParentCategoryDao;
import com.example.demo.dao.ProductDao;
import com.example.demo.model.CartItem;
import com.example.demo.model.Category;
import com.example.demo.model.ParentCategory;
import com.example.demo.model.Product;

import java.io.*;
import java.util.ArrayList;
import java.util.List;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns="/add-to-cart")
public class AddToCart extends HttpServlet {

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
        String productId = req.getParameter("pid");
        Product product = productDao.selectById(productId);
        HttpSession session = req.getSession();
        Object obj = session.getAttribute("cart");
        if (obj == null) {
            CartItem cartItem = new CartItem();
            cartItem.setProduct(product);
            cartItem.setQuantity(1);
            List<CartItem> list = new ArrayList<CartItem>();
            list.add(cartItem);
            session.setAttribute("cart", list);
        } else {
            List<CartItem> list = (List<CartItem>) obj;
            boolean check = false;
            for (CartItem cartItem : list) {
                if (cartItem.getProduct().getProductId().equals(Long.parseLong(productId))) {
                    cartItem.setQuantity(cartItem.getQuantity() + 1);
                    check = true;
                    break;
                }
            }
            if (check == false) {
                CartItem cartItem = new CartItem();
                cartItem.setProduct(product);
                cartItem.setQuantity(1);
                list.add(cartItem);
            }
            session.setAttribute("cart", list);
        }

        resp.sendRedirect(req.getContextPath() + "/cart");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
