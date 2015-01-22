/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import BO.HibernateUtil;
import BO.Persoon;
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
    public static  ArrayList<Speelgoed> AlleSpeelgoedOphalen()
    {
        Session s = HibernateUtil.getSessionFactory().openSession();
       Query q = s.createQuery("from Speelgoed");
       return (ArrayList<Speelgoed>)q.list();
    }
    
    public static  ArrayList<Speelgoed> AlleAdsOphalenPerUser(int id)
    {
        Session s = HibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("from Speelgoed s where s.persoon.id="+id+"");
        return (ArrayList<Speelgoed>)q.list();
    }
    
    public static byte[] SelectFoto(int id)
    {
        Session s  = HibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("select s.speelgoedFoto from Speelgoed s where s.id =" +id+"");
        return (byte[])q.uniqueResult();        
    }    
    
    public static  ArrayList<Speelgoed> ZoekSpeelgoed(String zoekTerm)
    {
       Session s = HibernateUtil.getSessionFactory().openSession();
       Query q = s.createQuery("from Speelgoed s where s.omschrijving like '%" + zoekTerm + "%' OR s.titel like '%" + zoekTerm + "%'");
       return (ArrayList<Speelgoed>)q.list();
    }
    
    public static ArrayList<Speelgoed> SelecteerSpeelgoed(int id, Persoon p)
    {
        Session s = HibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("from Speelgoed s where s.persoon.id ='" +p.getId()+ "'");
        return (ArrayList<Speelgoed>)q.list();
    }
    
        
    
    public static void SpeelgoedDelete(int id)
    {
        Session session = 
              HibernateUtil.getSessionFactory().openSession();
         Query q = session.createQuery("from Speelgoed s where s.id ='" +id+ "'");
         Speelgoed sp =  (Speelgoed)q.uniqueResult();
         session.beginTransaction();
         session.delete(sp);
         session.getTransaction().commit();
    }
    
}
