/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Services;


import BO.HibernateUtil;
import BO.Persoon;
import java.util.ArrayList;
import org.hibernate.*;

/**
 *
 * @author 11627
 */
public class PersoonService {
    
    public static ArrayList<Persoon> SelecteerPersoon(int id)
    {
        Session s = HibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("from Persoon p where p.id ='" +id+ "'");
        return (ArrayList<Persoon>)q.list();
    }
    
    public static Persoon PersoonAdd(Persoon p)
    {
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.saveOrUpdate(p);
        s.getTransaction().commit();
        
        return p;
    }

    public static Persoon VindPersoon(String username)
    {
        Session s = HibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("from Persoon p where p.userName ='" +username+ "'");
        Persoon p =  (Persoon)q.uniqueResult();
        
        return p ;
    }
    
    
    public static Persoon PersoonUpdate(int id,Persoon persoon)
    {
        Session s = HibernateUtil.getSessionFactory().openSession();
        persoon.setId(id);
        s.beginTransaction();
        s.merge(persoon);
        s.getTransaction().commit();
        
        return persoon;
    }
    
    public static void PersoonDelete(int id)
    {
        Session session = 
              HibernateUtil.getSessionFactory().openSession();
         Query q = session.createQuery("from Persoon p where p.id ='" +id+ "'");
         Persoon p =  (Persoon)q.uniqueResult();
         session.beginTransaction();
         session.delete(p);
         session.getTransaction().commit();
    }
    
    public static  ArrayList<Persoon> AllePersonenOphalen()
    {
        Session s = HibernateUtil.getSessionFactory().openSession();
       Query q = s.createQuery("from Persoon");
       return (ArrayList<Persoon>)q.list();
    }  
    
    public static ArrayList<Persoon> ListPersonen(){
         Session s = HibernateUtil.getSessionFactory().openSession();
       Query q = s.createQuery("from Persoon");
       return (ArrayList<Persoon>)q.list();
    }
}
