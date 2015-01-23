/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import BO.Babyspullen;
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
public class BabyService {
    
    
    public static Babyspullen BabyspullenUpdate(int id,Babyspullen baby)
    {
        try {
            Session s = HibernateUtil.getSessionFactory().openSession();
            baby.setId(id);
            s.beginTransaction();
            s.merge(baby);
            s.getTransaction().commit();
        } catch (HibernateException hi) {
            JOptionPane.showMessageDialog(null, hi.getMessage(), "Foutje", JOptionPane.INFORMATION_MESSAGE);
        }
        
        return baby;
    }
    
    
    
    public static Babyspullen BabyspullenAdd(Babyspullen ba)
    {
        try {
            Session s = HibernateUtil.getSessionFactory().openSession();
            s.beginTransaction();
            s.saveOrUpdate(ba);
            s.getTransaction().commit();
        } catch (HibernateException hi) {
            JOptionPane.showMessageDialog(null, hi.getMessage(), "Foutje", JOptionPane.INFORMATION_MESSAGE);
        }
        
        return ba;
    }

    
    public static ArrayList<Babyspullen> SelecteerBaby(int id, Persoon p)
    {
        Query q = null;
        try {
            Session s = HibernateUtil.getSessionFactory().openSession();
            q = s.createQuery("from Babyspullen b where b.persoon.id =" + p.getId() + "");
        } catch (HibernateException hi) {
            JOptionPane.showMessageDialog(null, hi.getMessage(), "Foutje", JOptionPane.INFORMATION_MESSAGE);
        }
        return (ArrayList<Babyspullen>)q.list();
    }    
    
    public static void BabyDelete(int id)
            
    {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            Query q = session.createQuery("from Babyspullen b where b.id =" + id + "");
            Babyspullen ba = (Babyspullen) q.uniqueResult();
            session.beginTransaction();
            session.delete(ba);
            session.getTransaction().commit();
        } catch (HibernateException hi) {
             JOptionPane.showMessageDialog(null, hi.getMessage(), "Foutje", JOptionPane.INFORMATION_MESSAGE);
        }
    }
    
}
