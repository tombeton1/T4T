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
import javax.swing.JOptionPane;
import org.hibernate.HibernateException;

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
    
    public static Speelgoed SpeelgoedAdd(int id,Speelgoed sp)
    {
        try {
            Session s = HibernateUtil.getSessionFactory().openSession();
            sp.setId(id);
            s.beginTransaction();
            s.saveOrUpdate(sp);
            s.getTransaction().commit();
        } catch (HibernateException hi) {
             JOptionPane.showMessageDialog(null, hi.getMessage(), "Foutje", JOptionPane.INFORMATION_MESSAGE);
        }
        
        return sp;
    }

    public static ArrayList<Speelgoed> SelecteerSpeelgoed(int id, Persoon p)
    {
        Query q = null;
        try {
            Session s = HibernateUtil.getSessionFactory().openSession();
            q = s.createQuery("from Speelgoed s where s.persoon.id ='" + p.getId() + "'");
        } catch (HibernateException hi) {
            JOptionPane.showMessageDialog(null, hi.getMessage(), "Foutje", JOptionPane.INFORMATION_MESSAGE);
        }
        return (ArrayList<Speelgoed>)q.list();
    }
    
        
    
    public static void SpeelgoedDelete(int id)
    {
        try {
            Session session
                    = HibernateUtil.getSessionFactory().openSession();
            Query q = session.createQuery("from Speelgoed s where s.id ='" + id + "'");
            Speelgoed sp = (Speelgoed) q.uniqueResult();
            session.beginTransaction();
            session.delete(sp);
            session.getTransaction().commit();
        } catch (HibernateException hi) {
            JOptionPane.showMessageDialog(null, hi.getMessage(), "Foutje", JOptionPane.INFORMATION_MESSAGE);
        }
    }
    
}
