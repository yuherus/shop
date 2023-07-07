package com.example.demo;

import com.example.demo.dao.CategoryDao;
import com.example.demo.dao.ParentCategoryDao;
import com.example.demo.dao.ProductDao;
import com.example.demo.dao.UserDao;
import com.example.demo.model.Category;
import com.example.demo.model.ParentCategory;
import com.example.demo.model.Product;
import com.example.demo.model.Users;
import com.example.demo.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import java.sql.Date;
import java.util.List;

public class Test {
    public static void main(String[] args) {
        ProductDao productDao = new ProductDao();
        Product product = new Product();
        product = productDao.selectById("2");
        System.out.println(product.getProductName());
    }
}

