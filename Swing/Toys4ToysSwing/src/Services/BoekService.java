/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import BO.Boeken;
import BO.HibernateUtil;
import java.util.ArrayList;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Véronique
 */
public class BoekService {
    
    public static Boeken BoekAdd(Boeken b)
    {
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.saveOrUpdate(b);
        s.getTransaction().commit();
        
        return b;
    }
    
    public static  ArrayList<BoekService> AlleBoekenOphalen()
    {
        Session s = HibernateUtil.getSessionFactory().openSession();
       Query q = s.createQuery("from Boeken");
       return (ArrayList<BoekService>)q.list();
    }

    public static ArrayList<BoekService> ZoekBoek(String zoekTerm) {
        
        Session s = HibernateUtil.getSessionFactory().openSession();
       Query q = s.createQuery("from Boeken where PersoonID like '%" + zoekTerm + "%' OR Titel like '%" + zoekTerm + "%' OR Auteur like '%" + zoekTerm + "%'");
       return (ArrayList<BoekService>)q.list();
   
    }
    
    public static ArrayList<BoekService> SelecteerBoek(int id)
    {
        Session s = HibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("from Boeken where PersoonID ='" +id+ "'");
        return (ArrayList<BoekService>)q.list();
    }
    
      public static void BoekDelete(Boeken boek)
    {
        Session session = 
              HibernateUtil.getSessionFactory().openSession();
         Query q = session.createQuery("from Boeken where id ='" +boek+ "'");
         Boeken b =  (Boeken)q.uniqueResult();
         session.beginTransaction();
         session.delete(b);
         session.getTransaction().commit();
    }
      
  
    
}
