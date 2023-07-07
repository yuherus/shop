package com.example.demo.controller;

import com.example.demo.dao.UserDao;
import com.example.demo.model.Users;

import java.io.*;
import java.sql.Date;
import java.util.Random;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/confirm")
public class SignUp extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("InputEmail");
        String password = request.getParameter("InputPassword");
        String genderOption = request.getParameter("inlineRadioOptions");
        String bod = request.getParameter("InputBod");
        String acceptEmail = request.getParameter("acceptEmail");
        request.setAttribute("InputEmail", email);

        String url = "";

        String baoLoi = "";
        UserDao userDAO = new UserDao();

        if(userDAO.emailCheck(email)) {
            baoLoi +="Email đã tồn tại, vui lòng chọn tên đăng nhập khác.<br/>";
        }
        request.setAttribute("baoLoi", baoLoi);
        if(baoLoi.length()>0) {
            url = "/signup.jsp";
        } else {
            Random rd = new Random();
            Users user = new Users();
            user.setEmail(email);
            user.setPassword(password);
            if (genderOption == "option1") {user.setSex(true);}
            if (genderOption == "option2") {user.setSex(false);}
            user.setBirthDate(Date.valueOf(bod));
            userDAO.insert(user);
            url = "/confirm.jsp";
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }


}

