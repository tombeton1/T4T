/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import dal.Babyspullen;
import dal.HibernateUtil;
import java.util.ArrayList;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Véronique
 */
public class BabyService {
    
    public static Babyspullen BabyspullenAdd(Babyspullen ba)
    {
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.saveOrUpdate(ba);
        s.getTransaction().commit();
        
        return ba;
        
        
    }
    public static  ArrayList<BabyService> AlleBabyspullenOphalen()
    {
        Session s = HibernateUtil.getSessionFactory().openSession();
       Query q = s.createQuery("from Babyspullen");
       return (ArrayList<BabyService>)q.list();
    }

    public static ArrayList<BabyService> ZoekBaby(String zoekTerm) {
            
        Session s = HibernateUtil.getSessionFactory().openSession();
       Query q = s.createQuery("from Babyspullen where Omschrijving like '%" + zoekTerm + "%' OR Categorie like '%" + zoekTerm + "%'");
       return (ArrayList<BabyService>)q.list();
    }
    
    public static ArrayList<BabyService> SelecteerBaby(int id)
    {
        Session s = HibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("from Babyspullen where id ='" +id+ "'");
        return (ArrayList<BabyService>)q.list();
    }
    public static void BabyDelete(int id)
            
    {
        Session session = 
              HibernateUtil.getSessionFactory().openSession();
         Query q = session.createQuery("from Babyspullen where id ='" +id+ "'");
         Babyspullen ba =  (Babyspullen)q.uniqueResult();
         session.beginTransaction();
         session.delete(ba);
         session.getTransaction().commit();
    }
    
}
