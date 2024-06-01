/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package test44.mavenproject3.Servicesimpl;


import test44.mavenproject3.Model.Alertes;
import test44.mavenproject3.Services.InterVehicules;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author valen
 */
public class AlerteDao implements InterVehicules<Alertes> {
    SessionFactory sessionfactory = null;
    Session session = null;
    

    @Override
    public int save(Alertes s) throws HibernateException {
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
    public int update(Alertes s) throws HibernateException {
        int n = 0; 
        try{
            sessionfactory = test44.mavenproject3.Dbutils.dbutils.getSessionFactory();
            session = sessionfactory.openSession();
            session.getTransaction().begin();
            session.merge(s);
            session.getTransaction();
            session.close();
            n = 1;
        }catch(HibernateException ex){
            n = 0;
        }
        return n;
    }

    @Override
    public int delete(String id) throws HibernateException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Alertes get(String id) throws HibernateException {
        Alertes al = null;
        try{
            sessionfactory = test44.mavenproject3.Dbutils.dbutils.getSessionFactory();
            session = sessionfactory.openSession();
            session.getTransaction().begin();
            if(id != null){
                al = session.get(Alertes.class, id);
            }
            session.getTransaction().commit();
            session.close();   
        }catch(HibernateException ex){
            
        }
        return al;
    }

    @Override
    public List<Alertes> getAll() throws HibernateException {
        List<Alertes> liste = null;
        try{
            sessionfactory = test44.mavenproject3.Dbutils.dbutils.getSessionFactory();
            session = sessionfactory.openSession();
            session.getTransaction().begin();
            liste = session.createQuery("from Alertes", Alertes.class).list();
            session.getTransaction().commit();
            session.close();
            
        }catch(HibernateException ex){
            
        }
        return liste;
    }
    
}
