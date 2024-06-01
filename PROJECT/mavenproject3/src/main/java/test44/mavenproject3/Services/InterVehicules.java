/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package test44.mavenproject3.Services;

import java.util.List;
import org.hibernate.HibernateException;
/**
 *
 * @author valen
 */
public interface InterVehicules<D> {

    int save(D s) throws HibernateException;

    int update(D s) throws HibernateException;

    int delete(String id) throws HibernateException;

    D get(String id) throws HibernateException;

    List<D> getAll() throws HibernateException;
}
