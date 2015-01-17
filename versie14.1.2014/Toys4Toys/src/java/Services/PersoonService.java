/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Services;


import dal.HibernateUtil;
import dal.Persoon;
import java.util.ArrayList;
import org.hibernate.*;

/**
 *
 * @author 11627
 */
public class PersoonService {
    
    public static ArrayList<PersoonService> SelecteerPersoon(int id)
    {
        Session s = HibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("from Persoon where id ='" +id+ "'");
        return (ArrayList<PersoonService>)q.list();
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
        Query q = s.createQuery("from Persoon where username ='" +username+ "'");
        Persoon p =  (Persoon)q.uniqueResult();
        
        return p ;
    }
    
    
    public static Persoon PersoonUpdate(int id)
    {
        Session s = HibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("update Persoon where id ='" +id+ "'");
        Persoon p =  (Persoon)q.uniqueResult();
        s.beginTransaction();
        s.saveOrUpdate(p);
        s.getTransaction().commit();
        
        return p;
    }
    
    public static void PersoonDelete(int id)
    {
        Session session = 
              HibernateUtil.getSessionFactory().openSession();
         Query q = session.createQuery("from Persoon where id ='" +id+ "'");
         Persoon p =  (Persoon)q.uniqueResult();
         session.beginTransaction();
         session.delete(p);
         session.getTransaction().commit();
    }
    
    public static  ArrayList<PersoonService> AllePersonenOphalen()
    {
        Session s = HibernateUtil.getSessionFactory().openSession();
       Query q = s.createQuery("from Persoon");
       return (ArrayList<PersoonService>)q.list();
    }  
    
    public static ArrayList<Persoon> ListPersonen(){
         Session s = HibernateUtil.getSessionFactory().openSession();
       Query q = s.createQuery("from Persoon");
       return (ArrayList<Persoon>)q.list();
    }
    
    
}
