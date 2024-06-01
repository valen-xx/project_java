/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package test44.mavenproject3.Servicesimpl;

import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import test44.mavenproject3.Model.User;

import test44.mavenproject3.Services.InterVehicules;

/**
 *
 * @author valen
 */
public class UserDao implements InterVehicules<User>{

    private SessionFactory sessionfactory = null;
    private Session session = null;
    
    @Override
    public int save(User user) throws HibernateException {
        int n = 0;
        try {
            sessionfactory = test44.mavenproject3.Dbutils.dbutils.getSessionFactory();
            session = sessionfactory.openSession();
            session.getTransaction().begin();
            session.persist(user);
            session.getTransaction().commit();
            session.close();
            n = 1;
        } catch (HibernateException ex) {
            n = 0;
            System.out.println(ex);
        }
        return n;
    }

    

    //private SessionFactory sessionfactory = null;
    //private Session session = null;
    
    public User authenticate(String username, String password) {
        try (Session sessions = test44.mavenproject3.Dbutils.dbutils.getSessionFactory().openSession()) {
            String hql = "FROM User WHERE username = :username AND password = :password";
            List<User> userList = sessions.createQuery(hql, User.class)
                    .setParameter("username", username)
                    .setParameter("password", password)
                    .getResultList();

            if (!userList.isEmpty()) {
                return userList.get(0); // Return the authenticated user
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null; // Return null if authentication fails
    }
    public User checkLogin(String username, String password) {
        Session session = (Session) test44.mavenproject3.Dbutils.dbutils.getSessionFactory();
        Transaction transaction = null;
        User user = null;
        try {
            transaction = session.beginTransaction();
            Query query = session.createQuery("from User where username=:username and password=:password");
            query.setParameter("username", username);
            query.setParameter("password", password);
            user = (User) query.uniqueResult();
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return user;
    }

    @Override
    public int update(User s) throws HibernateException {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int delete(String id) throws HibernateException {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public User get(String id) throws HibernateException {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List<User> getAll() throws HibernateException {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
