/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import BO.Boeken;
import BO.HibernateUtil;
import BO.Persoon;
import java.util.ArrayList;
import javax.swing.JOptionPane;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Véronique
 */
public class BoekService {
    
    
    public static Boeken BoekenUpdate(int id,Boeken boek)
    {
        Session s = null;
        try {
            s = HibernateUtil.getSessionFactory().openSession();
            boek.setId(id);
            s.beginTransaction();
            s.merge(boek);
        } catch (HibernateException hi) {
            JOptionPane.showMessageDialog(null, hi.getMessage(), "Foutje", JOptionPane.INFORMATION_MESSAGE);
        }
        s.getTransaction().commit();
        
        return boek;
    }
    
    public static Boeken BoekAdd(Boeken b)
    {
        try {
            Session s = HibernateUtil.getSessionFactory().openSession();
            s.beginTransaction();
            s.saveOrUpdate(b);
            s.getTransaction().commit();
        } catch (HibernateException hi) {
            JOptionPane.showMessageDialog(null, hi.getMessage(), "Foutje", JOptionPane.INFORMATION_MESSAGE);
        }
        
        return b;
    }
 
    
    public static ArrayList<Boeken> SelecteerBoek(int id, Persoon p)
    {
        Query q = null;
        try {
            Session s = HibernateUtil.getSessionFactory().openSession();
            q = s.createQuery("from Boeken b where b.persoon.id ='" + p.getId() + "'");
        } catch (HibernateException hi) {
            JOptionPane.showMessageDialog(null, hi.getMessage(), "Foutje", JOptionPane.INFORMATION_MESSAGE);
        }
        return (ArrayList<Boeken>)q.list();
    }
  
    
      public static void BoekDelete(int id)
    {
        try {
            Session session
                    = HibernateUtil.getSessionFactory().openSession();
            Query q = session.createQuery("from Boeken b where b.id ='" + id + "'");
            Boeken b = (Boeken) q.uniqueResult();
            session.beginTransaction();
            session.delete(b);
            session.getTransaction().commit();
        } catch (HibernateException hi) {
            JOptionPane.showMessageDialog(null, hi.getMessage(), "Foutje", JOptionPane.INFORMATION_MESSAGE);
        }
    }
  
    
}
