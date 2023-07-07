package com.example.demo.dao;

import com.example.demo.model.Users;
import com.example.demo.util.HibernateUtil;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.ArrayList;
import java.util.List;

public class UserDao implements DAOInterface<Users>{
    @Override
    public List<Users> selectAll() {
        List<Users> usersList = new ArrayList<>();
        Session session = null;
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            if (sessionFactory != null) {
                session = sessionFactory.openSession();
                Transaction transaction = session.beginTransaction();
                usersList = session.createQuery("FROM Users", Users.class).list();
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
        return usersList;
    }

    public Users selectByEmailAndPassword(Users user) {
        Session session = null;
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            session = sessionFactory.openSession();
            String hql = "FROM Users WHERE email = :email AND password = :password";
            Query<Users> query = session.createQuery(hql, Users.class);
            query.setParameter("email", user.getEmail());
            query.setParameter("password", user.getPassword());
            return query.uniqueResult();
        } catch (HibernateException e) {
            if (session != null) {
                session.getTransaction().rollback();
            }
            e.printStackTrace();
        } finally {
            if (session != null) {
                session.close();
            }
        }
        return null;
    }


    @Override
    public Users selectById(String id) {
        Users result = null;
        Session session = null;
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            if (sessionFactory != null) {
                session = sessionFactory.openSession();
                Transaction transaction = session.beginTransaction();
                result = session.get(Users.class,id);
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
        return result;
    }

    @Override
    public boolean insert(Users users) {
        boolean success = false;
        Session session = null;
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            if (sessionFactory != null) {
                session = sessionFactory.openSession();
                Transaction transaction = session.beginTransaction();
                session.save(users);
                transaction.commit();
                success = true;
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
        return success;
    }

    @Override
    public boolean update(Users users) {
        boolean success = false;
        Session session = null;
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            if (sessionFactory != null) {
                session = sessionFactory.openSession();
                Transaction transaction = session.beginTransaction();
                session.update(users);
                transaction.commit();
                success = true;
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
        return success;
    }

    @Override
    public boolean delete(Users users) {
        boolean success = false;
        Session session = null;
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            if (sessionFactory != null) {
                session = sessionFactory.openSession();
                Transaction transaction = session.beginTransaction();
                session.delete(users);
                transaction.commit();
                success = true;
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
        return success;
    }

    public void deleteAll() {
        Session session = null;
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            if (sessionFactory != null) {
                session = sessionFactory.openSession();
                Transaction transaction = session.beginTransaction();
                Query query = session.createQuery("DELETE FROM Users");
                query.executeUpdate();
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
    }

    public boolean emailCheck(String email) {
        boolean exists = false;
        Session session = null;
        try {
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            if (sessionFactory != null) {
                session = sessionFactory.openSession();
                Query query = session.createQuery("SELECT COUNT(*) FROM Users WHERE email = :email");
                query.setParameter("email", email);
                Long count = (Long) query.uniqueResult();
                exists = (count != null && count > 0);
            }
        } catch (HibernateException e) {
            // Xử lý ngoại lệ, ví dụ: ghi log, thông báo lỗi, vv.
        } finally {
            if (session != null) {
                session.close();
            }
        }
        return exists;
    }


}

