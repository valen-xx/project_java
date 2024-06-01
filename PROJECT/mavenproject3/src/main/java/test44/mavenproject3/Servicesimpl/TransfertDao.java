/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package test44.mavenproject3.Servicesimpl;
import test44.mavenproject3.Model.Transfert;
import test44.mavenproject3.Services.InterVehicules;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author valen
 */
public class TransfertDao implements InterVehicules<Transfert> {

    SessionFactory sessionfactory = null;
    Session session = null;

    @Override
    public int save(Transfert s) throws HibernateException {
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
    public int update(Transfert s) throws HibernateException {
        int n = 0;
        try{
            sessionfactory = test44.mavenproject3.Dbutils.dbutils.getSessionFactory();
            session = sessionfactory.openSession();
            session.getTransaction().begin();
            session.merge(s);
            session.getTransaction().commit();
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
    public Transfert get(String id) throws HibernateException {
        Transfert tr = null;
        try{
            sessionfactory = test44.mavenproject3.Dbutils.dbutils.getSessionFactory();
            session = sessionfactory.openSession();
            session.getTransaction().begin();
            if(id != null){
                tr = session.get(Transfert.class, id);
            }     
            session.getTransaction().commit();
            session.close();
            
        }catch(HibernateException ex){
                
                }
        return null;
    }

    @Override
    public List<Transfert> getAll() throws HibernateException {
        List<Transfert> liste = null;
        try {
            sessionfactory = test44.mavenproject3.Dbutils.dbutils.getSessionFactory();
            session = sessionfactory.openSession();
            session.getTransaction().begin();
            liste = session.createQuery("from Transfert", Transfert.class).list();
            session.getTransaction().commit();
            session.close();
        } catch (HibernateException ex) {

        }
        return liste;
    }

}
