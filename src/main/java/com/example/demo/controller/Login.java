package com.example.demo.controller;

import com.example.demo.dao.CategoryDao;
import com.example.demo.dao.ParentCategoryDao;
import com.example.demo.dao.UserDao;
import com.example.demo.model.Category;
import com.example.demo.model.ParentCategory;
import com.example.demo.model.Users;

import java.io.*;
import java.util.List;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = "/login")
public class Login extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String email = request.getParameter("InputEmail");
        String password = request.getParameter("InputPassword");
        request.setAttribute("InputEmail", email);

        ParentCategoryDao parentCategoryDao = new ParentCategoryDao();
        List<ParentCategory> listParentCategory = parentCategoryDao.selectAll();
        request.setAttribute("listParentCategory", listParentCategory);
        CategoryDao categoryDao = new CategoryDao();
        List<Category> listCategory = categoryDao.selectAll();
        request.setAttribute("listCategory", listCategory);

        Users user = new Users();
        user.setEmail(email);
        user.setPassword(password);

        UserDao userDAO = new UserDao();
        Users user1 = userDAO.selectByEmailAndPassword(user);
        String url = "";
        if(user1!=null) {
            HttpSession session = request.getSession();
            session.setAttribute("user1", user1);
            url = "/index";
        }else {
            request.setAttribute("baoLoi", "Xin lỗi, nội dung bạn nhập không khớp với hồ sơ của chúng tôi. Kiểm tra lỗi chính tả và thử lại.");
            url = "/login";
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);
    }

}
