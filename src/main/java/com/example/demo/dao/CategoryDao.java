package com.example.demo.dao;

import com.example.demo.model.Category;
import com.example.demo.model.ParentCategory;
import com.example.demo.model.Users;
import com.example.demo.util.HibernateUtil;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import java.util.ArrayList;
import java.util.List;

public class CategoryDao implements DAOInterface<Category>{

    @Override
    public List<Category> selectAll() {
        List<Category> categories = new ArrayList<>();
        Session session = null;
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            if (sessionFactory != null) {
                session = sessionFactory.openSession();
                Transaction transaction = session.beginTransaction();
                categories = session.createQuery("FROM Category ", Category.class).list();
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
        return categories;
    }

    public List<Category> selectByParentName(String parentName){
        List<Category> categories = new ArrayList<>();
        Session session = null;
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            if (sessionFactory != null) {
                session = sessionFactory.openSession();
                Transaction transaction = session.beginTransaction();
                String hql = "FROM Category cate JOIN ParentCategory pacate ON cate.parentCategory.parentCategoryId = pacate.parentCategoryId WHERE pacate.parentCategoryName = :parentName";
                categories = session.createQuery(hql, Category.class).setParameter("parentName",parentName).list();
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
        return categories;
    }
    @Override
    public Category selectById(String id) {
        return null;
    }

    @Override
    public boolean insert(Category Category) {
        return false;
    }

    @Override
    public boolean update(Category Category) {
        return false;
    }

    @Override
    public boolean delete(Category Category) {
        return false;
    }
}
