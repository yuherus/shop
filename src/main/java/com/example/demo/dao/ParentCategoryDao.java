package com.example.demo.dao;

import com.example.demo.model.ParentCategory;
import com.example.demo.model.Users;
import com.example.demo.util.HibernateUtil;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import java.util.ArrayList;
import java.util.List;

public class ParentCategoryDao implements DAOInterface<ParentCategory>{

    @Override
    public List<ParentCategory> selectAll() {
        List<ParentCategory> parentCategories = new ArrayList<>();
        Session session = null;
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            if (sessionFactory != null) {
                session = sessionFactory.openSession();
                Transaction transaction = session.beginTransaction();
                parentCategories = session.createQuery("FROM ParentCategory ", ParentCategory.class).list();
                transaction.commit();
            }
        } catch (HibernateException e) {
            if (session != null) {
                session.getTransaction().rollback();
            }
            // Xử lý ngoại lệ, ví dụ: ghi log, thông báo lỗi, vv.
        } finally {
            if (session != null) {
                session.close();
            }
        }
        return parentCategories;
    }

    @Override
    public ParentCategory selectById(String id) {
        return null;
    }

    @Override
    public boolean insert(ParentCategory parentCategory) {
        return false;
    }

    @Override
    public boolean update(ParentCategory parentCategory) {
        return false;
    }

    @Override
    public boolean delete(ParentCategory parentCategory) {
        return false;
    }
}
