/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import dal.HibernateUtil;
import dal.Kleren;
import java.util.ArrayList;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Véronique
 */
public class KlerenService {
    
    public static Kleren KlerenAdd(Kleren k)
    {
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.saveOrUpdate(k);
        s.getTransaction().commit();
        
        return k;
    }
    public static  ArrayList<KlerenService> AlleKlerenOphalen()
    {
        Session s = HibernateUtil.getSessionFactory().openSession();
       Query q = s.createQuery("from Kleren");
       return (ArrayList<KlerenService>)q.list();
    }
    
    public static ArrayList<KlerenService> ZoekKleren(String zoekTerm)
    {
        Session s  = HibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("from Kleren where Omschrijving like '%" + zoekTerm + "%' OR Seizoen like '%" + zoekTerm + "%' OR SoortKleding like '%" + zoekTerm + "%'");
       return (ArrayList<KlerenService>)q.list();
    
    }
    
    public static ArrayList<KlerenService> SelecteerKleren(int id)
    {
        Session s = HibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("from Kleren where id ='" +id+ "'");
        return (ArrayList<KlerenService>)q.list();
    }
    public static void KlerenDelete(int id)
    {
        Session session = 
              HibernateUtil.getSessionFactory().openSession();
         Query q = session.createQuery("from Kleren where id ='" +id+ "'");
         Kleren k =  (Kleren)q.uniqueResult();
         session.beginTransaction();
         session.delete(k);
         session.getTransaction().commit();
    }
    
}
