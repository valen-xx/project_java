
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import test44.mavenproject3.Model.Vehicules;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author valen
 */
public class Test {
    public static void main(String args[]){
        Vehicules vh = null;
        try {
            SessionFactory sessionfactory = test44.mavenproject3.Dbutils.dbutils.getSessionFactory();
            Session session = sessionfactory.openSession();
            session.getTransaction().begin();
            
                List liste = session.createQuery("from Vehicules", Vehicules.class).list();
            
            session.getTransaction().commit();
            System.out.println("Bonjour"+liste);
            session.close();
        } catch (HibernateException ex) {

        }
        
    }
    
}
