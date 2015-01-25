/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import BO.HibernateUtil;
import BO.Kleren;
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
public class KlerenService {
    
    
    public static Kleren KlerenUpdate(int id,Kleren kleren)
    {
       
           try {
            Session s = HibernateUtil.getSessionFactory().openSession();
            kleren.setId(id);
            s.beginTransaction();
            s.merge(kleren);
            s.getTransaction().commit();
        } catch (HibernateException hi) {
             JOptionPane.showMessageDialog(null, hi.getMessage(), "Foutje", JOptionPane.INFORMATION_MESSAGE);
        }
       
        
        return kleren;
    }
    
    public static Kleren KlerenAdd(Kleren k)
    {
        try {
            Session s = HibernateUtil.getSessionFactory().openSession();
            s.beginTransaction();
            s.saveOrUpdate(k);
            s.getTransaction().commit();
        } catch (HibernateException hi) {
             JOptionPane.showMessageDialog(null, hi.getMessage(), "Foutje", JOptionPane.INFORMATION_MESSAGE);
        }
        
        return k;
    }

    
    public static ArrayList<Kleren> SelecteerKleren(int id, Persoon p)
    {
        Query q = null;
        try {
            Session s = HibernateUtil.getSessionFactory().openSession();
            q = s.createQuery("from Kleren k where k.persoon.id ='" + p.getId() + "'");
        } catch (HibernateException hi) {
             JOptionPane.showMessageDialog(null, hi.getMessage(), "Foutje", JOptionPane.INFORMATION_MESSAGE);
        }
        return (ArrayList<Kleren>)q.list();
    }
    
 
    public static void KlerenDelete(int id)
    {
        try {
            Session session
                    = HibernateUtil.getSessionFactory().openSession();
            Query q = session.createQuery("from Kleren k where k.id ='" + id + "'");
            Kleren k = (Kleren) q.uniqueResult();
            session.beginTransaction();
            session.delete(k);
            session.getTransaction().commit();
        } catch (HibernateException hi) {
             JOptionPane.showMessageDialog(null, hi.getMessage(), "Foutje", JOptionPane.INFORMATION_MESSAGE);
        }
    }
    
}
