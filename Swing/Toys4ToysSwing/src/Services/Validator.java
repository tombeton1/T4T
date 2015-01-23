/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.swing.JOptionPane;
import javax.swing.JTextField;

/**
 *
 * @author Tom
 */
public class Validator {

    public static boolean IsPresent(JTextField textfield) {
        if ("".equals(textfield.getText())) {
            JOptionPane.showMessageDialog(null, "Verplicht veld(en) vergeten", "Foutje", JOptionPane.INFORMATION_MESSAGE);
            return false;
        } else {
            return true;
        }
    }

    public static boolean IsEmail(JTextField textfield) {
        boolean result = true;

        String Email = "^[^@]+@[^@]+\\.[^@]+$";
        Pattern pattern = Pattern.compile(Email);
        Matcher mattcher = pattern.matcher(textfield.getText());

        if (mattcher.matches()) {
            result = true;
        } else {
            result = false;
            JOptionPane.showMessageDialog(null, "is dit een email adres juist?", "Foutje", JOptionPane.INFORMATION_MESSAGE);
        }
        
        return result;
    }

    public static boolean IsPassword(JTextField textfield) {
        boolean result = true;

        String password = "^(?=.*\\d)(?=.*[a-zA-Z])(?!.*[\\W_\\x7B-\\xFF]).{6,15}$";
        Pattern pattern = Pattern.compile(password);
        Matcher mattcher = pattern.matcher(textfield.getText());

        if (mattcher.matches()) {
            result = true;
        } else {
            result = false;
             JOptionPane.showMessageDialog(null, "wachtwoord moet tussen 6-20 letters of cijfers hebben met 1 hoofdletter, andere tekens zijn niet toegelaten", "Foutje", JOptionPane.INFORMATION_MESSAGE);
        }
       
        return result;
    }

    public boolean IsAlpha(JTextField textfield) {
        boolean result = true;
        char[] chars = textfield.getText().toCharArray();

        for (char c : chars) {
            if (!Character.isLetter(c)) {
                result = false;
                JOptionPane.showMessageDialog(null, "enkel letters aub", "Foutje", JOptionPane.INFORMATION_MESSAGE);
            }
        }

        return result;
    }
     public static boolean IsUsername(JTextField textfield) {
        boolean result = true;
        char[] chars = textfield.getText().toCharArray();
        int i = chars.length;
        
        if (i>5) {
            result = true;
        } else {
            result = false;
            JOptionPane.showMessageDialog(null, "Gebtuikersnaam moet minstens 5 tekens hebben", "Foutje", JOptionPane.INFORMATION_MESSAGE);
        }
        
        return result;
    }
}
