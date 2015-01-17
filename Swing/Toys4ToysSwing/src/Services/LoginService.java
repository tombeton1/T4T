/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import BO.HibernateUtil;
import BO.Persoon;
import java.util.logging.Logger;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Tom
 */
public class LoginService {
    String user ="admin";
    String pass ="admin";

    
    public  boolean verify(String inputUser, String intputPass){
        if (inputUser.equalsIgnoreCase("admin")&&(intputPass.equalsIgnoreCase("admin"))) {
            return true;
        }
        else{
        return false;
        }
    
    }
    public static boolean LoginVerify(String username, String password) {

        boolean verify = false;
        Session s = HibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("from Persoon where username ='" + username + "'");
        Persoon p = (Persoon) q.uniqueResult();
        
        if (p != null) {
            
            String usernameDB = p.getUserName();
            String passwordDB = p.getPassWord();
            if (usernameDB != null && password.equals(passwordDB)) {
                verify = true;
            }
        
        }
        else    
        {
            verify = false;
        }
        return verify; 
    }
       
    
}
