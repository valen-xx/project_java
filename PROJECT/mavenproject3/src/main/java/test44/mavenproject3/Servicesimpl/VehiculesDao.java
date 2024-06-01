/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package test44.mavenproject3.Servicesimpl;

import test44.mavenproject3.Model.Vehicules;
import test44.mavenproject3.Services.InterVehicules;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author valen
 */
public class VehiculesDao implements InterVehicules<Vehicules> {

    private SessionFactory sessionfactory = null;
    private Session session = null;

    @Override
    public int save(Vehicules s) throws HibernateException {
        int n = 0;
        try {
            sessionfactory = test44.mavenproject3.Dbutils.dbutils.getSessionFactory();
            session = sessionfactory.openSession();
            session.getTransaction().begin();
            session.persist(s);
            session.getTransaction().commit();
            session.close();
            n = 1;
        } catch (HibernateException ex) {
            n = 0;
        }
        return n;
    }

    @Override
    public int update(Vehicules s) throws HibernateException {
        int n = 0;
        try {
            sessionfactory = test44.mavenproject3.Dbutils.dbutils.getSessionFactory();
            session = sessionfactory.openSession();
            session.getTransaction().begin();
            session.merge(s);
            session.getTransaction().commit();
            session.close();
            n = 1;
        } catch (HibernateException ex) {

        }
        return n;
    }

    @Override
    public int delete(String id) throws HibernateException {
        int n = 0;
        try {
            sessionfactory = test44.mavenproject3.Dbutils.dbutils.getSessionFactory();
            session = sessionfactory.openSession();
            session.getTransaction().begin();
            Vehicules vehicules = session.get(Vehicules.class, id);
            if (vehicules != null) {
                session.remove(vehicules);
                n = 1;
            }
            session.getTransaction().commit();
            session.close();
            
        } catch (HibernateException ex) {
            n = 0;
        }
        return n;
    }

    @Override
    public Vehicules get(String id) throws HibernateException {
        Vehicules vh = null;
        try {
            sessionfactory = test44.mavenproject3.Dbutils.dbutils.getSessionFactory();
            session = sessionfactory.openSession();
            session.getTransaction().begin();
            if (id != null) {
                vh = session.get(Vehicules.class, id);
            }
            session.getTransaction().commit();
            session.close();
        } catch (HibernateException ex) {

        }
        return vh;
    }

    @Override
    public List<Vehicules> getAll() throws HibernateException {
        List<Vehicules> liste = null;
        System.out.println("hello");
        try {
            
            sessionfactory = test44.mavenproject3.Dbutils.dbutils.getSessionFactory();
            session = sessionfactory.openSession();
            session.getTransaction().begin();
            liste = session.createQuery("from Vehicules", Vehicules.class).list();
            session.getTransaction().commit();
            session.close();
        } catch (HibernateException ex) {
            System.out.println(ex);
        }
        return liste;
    }
}
