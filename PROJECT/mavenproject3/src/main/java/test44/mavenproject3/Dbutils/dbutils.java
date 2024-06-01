/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package test44.mavenproject3.Dbutils;

/**
 *
 * @author valen
 */

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


public class dbutils {
    
   private static SessionFactory sessionFactory;
    
   public static SessionFactory getSessionFactory(){
       Configuration config = new Configuration().configure("hibernate.cfg.xml");
       sessionFactory = config.buildSessionFactory();
       return sessionFactory; 
   }
   
   
}
