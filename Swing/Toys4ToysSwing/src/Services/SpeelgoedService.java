/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import BO.HibernateUtil;
import BO.Speelgoed;
import java.util.ArrayList;

import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Véronique
 */
public class SpeelgoedService {
    
    public static Speelgoed SpeelgoedUpdate(int id,Speelgoed speelgoed)
    {
        Session s = HibernateUtil.getSessionFactory().openSession();
        speelgoed.setId(id);
        s.beginTransaction();
        s.merge(speelgoed);
        s.getTransaction().commit();
        
        return speelgoed;
    }
    
    public static Speelgoed SpeelgoedAdd(Speelgoed sp)
    {
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.saveOrUpdate(sp);
        s.getTransaction().commit();
        
        return sp;
    }
    public static  ArrayList<SpeelgoedService> AlleSpeelgoedOphalen()
    {
        Session s = HibernateUtil.getSessionFactory().openSession();
       Query q = s.createQuery("from Speelgoed");
       return (ArrayList<SpeelgoedService>)q.list();
    }
    
    
    public static  ArrayList<SpeelgoedService> ZoekSpeelgoed(String zoekTerm)
    {
       Session s = HibernateUtil.getSessionFactory().openSession();
       Query q = s.createQuery("from Speelgoed where Omschrijving like '%" + zoekTerm + "%' OR Titel like '%" + zoekTerm + "%'");
       return (ArrayList<SpeelgoedService>)q.list();
    }
    
    public static ArrayList<SpeelgoedService> SelecteerSpeelgoed(int id)
    {
        Session s = HibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("from Speelgoed where id ='" +id+ "'");
        return (ArrayList<SpeelgoedService>)q.list();
    }
    
    public static void SpeelgoedDelete(int id)
    {
        Session session = 
              HibernateUtil.getSessionFactory().openSession();
         Query q = session.createQuery("from Speelgoed where id ='" +id+ "'");
         Speelgoed sp =  (Speelgoed)q.uniqueResult();
         session.beginTransaction();
         session.delete(sp);
         session.getTransaction().commit();
    }
    
}
