/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import dal.HibernateUtil;
import dal.Kleren;
import dal.Persoon;
import java.util.ArrayList;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Véronique
 */
public class KlerenService {
    
    
    public static Kleren KlerenUpdate(int id,Kleren kleren)
    {
        Session s = HibernateUtil.getSessionFactory().openSession();
        kleren.setId(id);
        s.beginTransaction();
        s.merge(kleren);
        s.getTransaction().commit();
        
        return kleren;
    }
    
    public static Kleren KlerenAdd(Kleren k)
    {
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.saveOrUpdate(k);
        s.getTransaction().commit();
        
        return k;
    }
    
    public static byte[] SelectFoto(int id)
    {
        Session s  = HibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("select k.klerenFoto from Kleren k where k.id =" +id+"");
        return (byte[])q.uniqueResult();        
    }
    
    public static  ArrayList<Kleren> AlleKlerenOphalen()
    {
        Session s = HibernateUtil.getSessionFactory().openSession();
       Query q = s.createQuery("from Kleren");
       return (ArrayList<Kleren>)q.list();
    }
    
    public static  ArrayList<Kleren> AlleAdsOphalenPerUser(int id)
    {
        Session s = HibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("from Kleren k where k.persoon.id="+id+"");
        return (ArrayList<Kleren>)q.list();
    }
    
    public static ArrayList<Kleren> ZoekKleren(String zoekTerm)
    {
        Session s  = HibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("from Kleren k where k.omschrijving like '%" + zoekTerm + "%' OR k.seizoen like '%" + zoekTerm + "%' OR k.soortKleding like '%" + zoekTerm + "%'");
       return (ArrayList<Kleren>)q.list();
    
    }
    
    public static ArrayList<Kleren> SelecteerKleren(int id)
    {
        Session s = HibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("from Kleren k where k.id ='" +id+ "'");
        return (ArrayList<Kleren>)q.list();
    }
    public static void KlerenDelete(int id)
    {
        Session session = 
              HibernateUtil.getSessionFactory().openSession();
         Query q = session.createQuery("from Kleren k where k.id ='" +id+ "'");
         Kleren k =  (Kleren)q.uniqueResult();
         session.beginTransaction();
         session.delete(k);
         session.getTransaction().commit();
    }
    
}
