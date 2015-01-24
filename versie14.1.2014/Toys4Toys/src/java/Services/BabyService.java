/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import dal.Babyspullen;
import dal.HibernateUtil;
import dal.Persoon;
import java.util.ArrayList;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Véronique
 */
public class BabyService {
    
    
    public static Babyspullen BabyspullenUpdate(int id,Babyspullen baby)
    {
        Session s = HibernateUtil.getSessionFactory().openSession();
        baby.setId(id);
        s.beginTransaction();
        s.merge(baby);
        s.getTransaction().commit();
        
        return baby;
    }
    
    
    
    public static Babyspullen BabyspullenAdd(Babyspullen ba)
    {
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.saveOrUpdate(ba);
        s.getTransaction().commit();
        
        return ba;
    }
    
    public static  ArrayList<Babyspullen> AlleAdsOphalenPerUser(int id)
    {
        Session s = HibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("from Babyspullen b where b.persoon.id="+id+"");
        return (ArrayList<Babyspullen>)q.list();
    }
    
    public static  ArrayList<Babyspullen> AlleBabyspullenOphalen()
    {
        Session s = HibernateUtil.getSessionFactory().openSession();
       Query q = s.createQuery("from Babyspullen");
       return (ArrayList<Babyspullen>)q.list();
    }

    public static ArrayList<Babyspullen> ZoekBaby(String zoekTerm) {
            
        Session s = HibernateUtil.getSessionFactory().openSession();
       Query q = s.createQuery("from Babyspullen b where b.omschrijving like '%" + zoekTerm + "%' OR b.categorie like '%" + zoekTerm + "%'");
       return (ArrayList<Babyspullen>)q.list();
    }
    
    public static ArrayList<Babyspullen> SelecteerBaby(int id)
    {
        Session s = HibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("from Babyspullen b where b.id =" +id+ "");
        return (ArrayList<Babyspullen>)q.list();
    }    
    
    
    public static byte[] SelectFoto(int id)
    {
        Session s  = HibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("select b.babyspullenFoto from Babyspullen b where b.id =" +id+"");
        return (byte[])q.uniqueResult();        
    }
    public static void BabyDelete(int id)
            
    {
        Session session =   HibernateUtil.getSessionFactory().openSession();
         Query q = session.createQuery("from Babyspullen b where b.id =" +id+ "");
         Babyspullen ba =  (Babyspullen)q.uniqueResult();
         session.beginTransaction();
         session.delete(ba);
         session.getTransaction().commit();
    }
    
}
