/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import BO.HibernateUtil;
import BO.Persoon;
import java.util.ArrayList;
import javax.swing.JOptionPane;
import org.hibernate.*;

/**
 *
 * @author 11627
 */
public class PersoonService {

    public static ArrayList<Persoon> SelecteerPersoon(int id) {
        Query q = null;
        try {
            Session s = HibernateUtil.getSessionFactory().openSession();
            q = s.createQuery("from Persoon p where p.id ='" + id + "'");
        } catch (HibernateException hi) {
            JOptionPane.showMessageDialog(null, hi.getMessage(), "Foutje", JOptionPane.INFORMATION_MESSAGE);
        }
        return (ArrayList<Persoon>) q.list();
    }

    public static Persoon PersoonAdd(Persoon p) {
        try {
            Session s = HibernateUtil.getSessionFactory().openSession();
            s.beginTransaction();
            s.saveOrUpdate(p);
            s.getTransaction().commit();
        } catch (HibernateException hi) {
            JOptionPane.showMessageDialog(null, hi.getMessage()+"  Bestaat deze gebruiker al?", "Foutje", JOptionPane.INFORMATION_MESSAGE);
        }

        return p;
    }

    public static Persoon PersoonUpdate(int id, Persoon persoon) {
        try {
            Session s = HibernateUtil.getSessionFactory().openSession();
            persoon.setId(id);
            s.beginTransaction();
            s.merge(persoon);
            s.getTransaction().commit();
        } catch (HibernateException hi) {
            JOptionPane.showMessageDialog(null, hi.getMessage(), "Foutje", JOptionPane.INFORMATION_MESSAGE);
        }

        return persoon;
    }

    public static void PersoonDelete(int id) {
        try {
            Session session
                    = HibernateUtil.getSessionFactory().openSession();
            Query q = session.createQuery("from Persoon p where p.id ='" + id + "'");
            Persoon p = (Persoon) q.uniqueResult();
            session.beginTransaction();
            session.delete(p);
            session.getTransaction().commit();
        } catch (HibernateException hi) {
            JOptionPane.showMessageDialog(null, hi.getMessage(), "Foutje", JOptionPane.INFORMATION_MESSAGE);
        }
    }

    public static ArrayList<Persoon> AllePersonenOphalen() {
        Query q = null;
        try {
            Session s = HibernateUtil.getSessionFactory().openSession();
            q = s.createQuery("from Persoon");

        } catch (HibernateException hi) {
            JOptionPane.showMessageDialog(null, hi.getMessage(), "Foutje", JOptionPane.INFORMATION_MESSAGE);
        }
        return (ArrayList<Persoon>) q.list();
    }

}
