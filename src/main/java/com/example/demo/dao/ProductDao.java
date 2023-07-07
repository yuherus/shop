package com.example.demo.dao;

import com.example.demo.model.Product;
import com.example.demo.model.Users;
import com.example.demo.util.HibernateUtil;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import java.util.ArrayList;
import java.util.List;

public class ProductDao implements DAOInterface<Product>{

    @Override
    public List<Product> selectAll() {
        List<Product> productList = new ArrayList<>();
        Session session = null;
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            if (sessionFactory != null) {
                session = sessionFactory.openSession();
                Transaction transaction = session.beginTransaction();
                productList = session.createQuery("FROM Product ", Product.class).list();
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
        return productList;
    }

    public List<Product> selectByName(String Name){
        List<Product> productList = new ArrayList<>();
        Session session = null;
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            if (sessionFactory != null) {
                session = sessionFactory.openSession();
                Transaction transaction = session.beginTransaction();
                String hql = "FROM Product WHERE productName LIKE :Name ";
                productList = session.createQuery(hql, Product.class).setParameter("Name","%"+Name+"%").list();
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
        return productList;
    }

    public List<Product> selectByCateId(String categoryId){
        List<Product> productList = new ArrayList<>();
        Session session = null;
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            if (sessionFactory != null) {
                session = sessionFactory.openSession();
                Transaction transaction = session.beginTransaction();
                String hql = "FROM Product p WHERE p.category.categoryId = :categoryId ";
                productList = session.createQuery(hql, Product.class).setParameter("categoryId",categoryId).list();
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
        return productList;
    }

    public List<Product> selectByParentCateId(String parentCategoryId) {
        List<Product> productList = new ArrayList<>();
        Session session = null;
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            if (sessionFactory != null) {
                session = sessionFactory.openSession();
                Transaction transaction = session.beginTransaction();
                String hql = "FROM Product p WHERE p.category.parentCategory.parentCategoryId = :parentCategoryId ";
                productList = session.createQuery(hql, Product.class).setParameter("parentCategoryId", parentCategoryId).list();
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
        return productList;
    }
    public Product selectById(String id) {
        Product product = null;
        Session session = null;
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            if (sessionFactory != null) {
                session = sessionFactory.openSession();
                Transaction transaction = session.beginTransaction();
                product = session.get(Product.class,id);
                transaction.commit();
            }
        } catch (HibernateException e) {
            if (session != null) {
                session.getTransaction().rollback();
            }
        } finally {
            if (session != null) {
                session.close();
            }
        }
        return product;
    }

    @Override
    public boolean insert(Product product) {
        return false;
    }

    @Override
    public boolean update(Product product) {
        return false;
    }

    @Override
    public boolean delete(Product product) {
        return false;
    }
}
