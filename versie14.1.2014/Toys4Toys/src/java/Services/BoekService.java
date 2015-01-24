/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import dal.Boeken;
import dal.HibernateUtil;
import dal.Persoon;
import java.util.ArrayList;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Véronique
 */
public class BoekService {
    
    
    public static Boeken BoekenUpdate(int id,Boeken boek)
    {
        Session s = HibernateUtil.getSessionFactory().openSession();
        boek.setId(id);
        s.beginTransaction();
        s.merge(boek);
        s.getTransaction().commit();
        
        return boek;
    }
    
    public static Boeken BoekAdd(Boeken b)
    {
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.saveOrUpdate(b);
        s.getTransaction().commit();
        
        return b;
    }
    
    public static  ArrayList<Boeken> AlleAdsOphalenperUser(int id)
    {
        Session s = HibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("from Boeken b where b.persoon.id="+id+"");
        return (ArrayList<Boeken>)q.list();
    }
    
    public static  ArrayList<Boeken> AlleBoekenOphalen()
    {
        Session s = HibernateUtil.getSessionFactory().openSession();
       Query q = s.createQuery("from Boeken");
       return (ArrayList<Boeken>)q.list();
    }

    public static ArrayList<Boeken> ZoekBoek(String zoekTerm) {
        
        Session s = HibernateUtil.getSessionFactory().openSession();
       Query q = s.createQuery("from Boeken b where b.omschrijving like '%" + zoekTerm + "%' OR b.titel like '%" + zoekTerm + "%' OR b.auteur like '%" + zoekTerm + "%'");
       return (ArrayList<Boeken>)q.list();
   
    }
    
    public static byte[] SelectFoto(int id)
    {
        Session s  = HibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("select b.boekenFoto from Boeken b where b.id =" +id+"");
        return (byte[])q.uniqueResult();        
    }
    
    public static ArrayList<Boeken> SelecteerBoek(int id)
    {
        Session s = HibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("from Boeken b where b.id ='" +id+ "'");
        return (ArrayList<Boeken>)q.list();
    }
    
      public static void BoekDelete(int id)
    {
        Session session = 
              HibernateUtil.getSessionFactory().openSession();
         Query q = session.createQuery("from Boeken b where b.id ='" +id+ "'");
         Boeken b =  (Boeken)q.uniqueResult();
         session.beginTransaction();
         session.delete(b);
         session.getTransaction().commit();
    }
  
    
}
