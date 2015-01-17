/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package UI;

import BO.Persoon;
import Services.BoekService;
import Services.PersoonService;

/**
 *
 * @author Tom
 */
public class BeheerderUI extends javax.swing.JFrame {

    /**
     * Creates new form BeheerderUI
     */
    public BeheerderUI() {
        initComponents();
        ListboxOpvullen();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        MainPanel = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        lstPersonen = new javax.swing.JList();
        btnSelect = new javax.swing.JButton();
        btnDeleteGebruiker = new javax.swing.JPanel();
        lblAanspreekTitel = new javax.swing.JLabel();
        txtAanspreekTitel = new javax.swing.JTextField();
        lblVoornaam = new javax.swing.JLabel();
        txtVoornaam = new javax.swing.JTextField();
        lblFamilieNaam = new javax.swing.JLabel();
        txtFamilieNaam = new javax.swing.JTextField();
        lblEmail = new javax.swing.JLabel();
        txtEmail = new javax.swing.JTextField();
        lblWoonplaats = new javax.swing.JLabel();
        txtWoonplaats = new javax.swing.JTextField();
        lblUserName = new javax.swing.JLabel();
        txtUserName = new javax.swing.JTextField();
        lblPassWord = new javax.swing.JLabel();
        txtPassWord = new javax.swing.JTextField();
        btnDelete = new javax.swing.JButton();
        txtEditGebruiker = new javax.swing.JButton();
        btnAddGebruiker = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        jScrollPane2 = new javax.swing.JScrollPane();
        lstBoek = new javax.swing.JList();
        btnDeleteBoek = new javax.swing.JButton();
        txtEditBoek = new javax.swing.JButton();
        btnAddBoek = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Beheer");
        getContentPane().setLayout(null);

        MainPanel.setBorder(javax.swing.BorderFactory.createTitledBorder("Gebruikers Beheren"));

        lstPersonen.setModel(new javax.swing.AbstractListModel() {
            String[] strings = { "Item 1", "Item 2", "Item 3", "Item 4", "Item 5" };
            public int getSize() { return strings.length; }
            public Object getElementAt(int i) { return strings[i]; }
        });
        jScrollPane1.setViewportView(lstPersonen);

        btnSelect.setText("Select");
        btnSelect.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnSelectActionPerformed(evt);
            }
        });

        btnDeleteGebruiker.setBorder(javax.swing.BorderFactory.createTitledBorder("Details"));

        lblAanspreekTitel.setText("Aanspreek Titel:");

        lblVoornaam.setText("Voornaam:");

        lblFamilieNaam.setText("Familienaam");

        lblEmail.setText("E-mail:");

        lblWoonplaats.setText("WoonPlaats:");

        lblUserName.setText("Gebruiker naam:");

        lblPassWord.setText("Wachtwoord:");

        btnDelete.setText("Delete");
        btnDelete.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnDeleteActionPerformed(evt);
            }
        });

        txtEditGebruiker.setText("Edit");
        txtEditGebruiker.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtEditGebruikerActionPerformed(evt);
            }
        });

        btnAddGebruiker.setText("Add");
        btnAddGebruiker.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnAddGebruikerActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout btnDeleteGebruikerLayout = new javax.swing.GroupLayout(btnDeleteGebruiker);
        btnDeleteGebruiker.setLayout(btnDeleteGebruikerLayout);
        btnDeleteGebruikerLayout.setHorizontalGroup(
            btnDeleteGebruikerLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(btnDeleteGebruikerLayout.createSequentialGroup()
                .addGap(26, 26, 26)
                .addGroup(btnDeleteGebruikerLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(btnDeleteGebruikerLayout.createSequentialGroup()
                        .addComponent(btnDelete)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(txtEditGebruiker)
                        .addGap(18, 18, 18)
                        .addComponent(btnAddGebruiker)
                        .addContainerGap())
                    .addGroup(btnDeleteGebruikerLayout.createSequentialGroup()
                        .addGroup(btnDeleteGebruikerLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(lblPassWord)
                            .addComponent(lblWoonplaats)
                            .addComponent(lblUserName)
                            .addComponent(lblEmail)
                            .addComponent(lblFamilieNaam)
                            .addComponent(lblVoornaam)
                            .addComponent(lblAanspreekTitel))
                        .addGap(16, 16, 16)
                        .addGroup(btnDeleteGebruikerLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(txtUserName)
                            .addComponent(txtWoonplaats)
                            .addComponent(txtEmail)
                            .addComponent(txtFamilieNaam)
                            .addComponent(txtVoornaam)
                            .addComponent(txtAanspreekTitel, javax.swing.GroupLayout.PREFERRED_SIZE, 109, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(txtPassWord))
                        .addGap(12, 12, 12))))
        );
        btnDeleteGebruikerLayout.setVerticalGroup(
            btnDeleteGebruikerLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(btnDeleteGebruikerLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(btnDeleteGebruikerLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(lblAanspreekTitel, javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(txtAanspreekTitel, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(24, 24, 24)
                .addGroup(btnDeleteGebruikerLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(lblVoornaam, javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(txtVoornaam, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(btnDeleteGebruikerLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(lblFamilieNaam, javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(txtFamilieNaam, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(btnDeleteGebruikerLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(lblEmail, javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(txtEmail, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(btnDeleteGebruikerLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(lblWoonplaats, javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(txtWoonplaats, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(btnDeleteGebruikerLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(lblUserName, javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(txtUserName, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(btnDeleteGebruikerLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(lblPassWord, javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(txtPassWord, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(btnDeleteGebruikerLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(btnDelete, javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, btnDeleteGebruikerLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(btnAddGebruiker)
                        .addComponent(txtEditGebruiker)))
                .addGap(31, 31, 31))
        );

        jPanel2.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createTitledBorder("Boeken")));

        lstBoek.setModel(new javax.swing.AbstractListModel() {
            String[] strings = { "Item 1", "Item 2", "Item 3", "Item 4", "Item 5" };
            public int getSize() { return strings.length; }
            public Object getElementAt(int i) { return strings[i]; }
        });
        jScrollPane2.setViewportView(lstBoek);

        btnDeleteBoek.setText("Delete");
        btnDeleteBoek.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnDeleteBoekActionPerformed(evt);
            }
        });

        txtEditBoek.setText("Edit");
        txtEditBoek.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtEditBoekActionPerformed(evt);
            }
        });

        btnAddBoek.setText("Add");
        btnAddBoek.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnAddBoekActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 89, javax.swing.GroupLayout.PREFERRED_SIZE)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(14, 14, 14)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(txtEditBoek)
                    .addComponent(btnDeleteBoek)
                    .addComponent(btnAddBoek)))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(58, 58, 58)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(txtEditBoek)
                    .addComponent(btnDeleteBoek)
                    .addComponent(btnAddBoek)))
        );

        javax.swing.GroupLayout MainPanelLayout = new javax.swing.GroupLayout(MainPanel);
        MainPanel.setLayout(MainPanelLayout);
        MainPanelLayout.setHorizontalGroup(
            MainPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(MainPanelLayout.createSequentialGroup()
                .addGroup(MainPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(MainPanelLayout.createSequentialGroup()
                        .addGap(26, 26, 26)
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 230, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(MainPanelLayout.createSequentialGroup()
                        .addGap(94, 94, 94)
                        .addComponent(btnSelect)))
                .addGap(60, 60, 60)
                .addComponent(btnDeleteGebruiker, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(52, 52, 52)
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        MainPanelLayout.setVerticalGroup(
            MainPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(MainPanelLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(MainPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(MainPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                        .addComponent(btnDeleteGebruiker, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, MainPanelLayout.createSequentialGroup()
                            .addComponent(jScrollPane1)
                            .addGap(18, 18, 18)
                            .addComponent(btnSelect))))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        getContentPane().add(MainPanel);
        MainPanel.setBounds(23, 24, 764, 420);

        jLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/UI/vector-flower-patterns-background-60_1920x1200_70571.jpg"))); // NOI18N
        jLabel1.setText("jLabel1");
        getContentPane().add(jLabel1);
        jLabel1.setBounds(0, 0, 1070, 460);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnDeleteActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnDeleteActionPerformed
        Persoon persoon = new Persoon();
        persoon = (Persoon) lstPersonen.getSelectedValue();

        if (persoon != null) {
            Persoon Persoon = persoon;
            PersoonService.PersoonDelete(persoon);

        }
        ListboxOpvullen();
    }//GEN-LAST:event_btnDeleteActionPerformed
    Persoon selectPersoon = new Persoon();
    private void btnSelectActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnSelectActionPerformed

        selectPersoon = (Persoon) lstPersonen.getSelectedValue();

        if (selectPersoon != null) {
            Persoon Persoon = selectPersoon;
            txtAanspreekTitel.setText(selectPersoon.getAanspreekTitel());
            txtVoornaam.setText(selectPersoon.getVoornaam());
            txtFamilieNaam.setText(selectPersoon.getFamilienaam());
            txtEmail.setText(selectPersoon.getEmail());
            txtWoonplaats.setText(selectPersoon.getWoonPlaats());
            txtUserName.setText(selectPersoon.getUserName());
            txtPassWord.setText(selectPersoon.getPassWord());
            

        }
        BoekListOpvullen();
    }//GEN-LAST:event_btnSelectActionPerformed

    private void btnAddGebruikerActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnAddGebruikerActionPerformed
        Persoon p = new Persoon();
        p.setAanspreekTitel(txtAanspreekTitel.getText());
        p.setVoornaam(txtVoornaam.getText());
        p.setFamilienaam(txtFamilieNaam.getText());
        p.setEmail(txtEmail.getText());
        p.setWoonPlaats(txtWoonplaats.getText());
        p.setUserName(txtUserName.getText());
        p.setPassWord(txtPassWord.getText());

        PersoonService.PersoonAdd(p);
        ListboxOpvullen();

    }//GEN-LAST:event_btnAddGebruikerActionPerformed

    private void txtEditGebruikerActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtEditGebruikerActionPerformed
         if (selectPersoon != null){
             PersoonService.PersoonUpdate(selectPersoon.getId());
         }
         ListboxOpvullen();
    }//GEN-LAST:event_txtEditGebruikerActionPerformed

    private void btnDeleteBoekActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnDeleteBoekActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_btnDeleteBoekActionPerformed

    private void txtEditBoekActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtEditBoekActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtEditBoekActionPerformed

    private void btnAddBoekActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnAddBoekActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_btnAddBoekActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(BeheerderUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(BeheerderUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(BeheerderUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(BeheerderUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new BeheerderUI().setVisible(true);
            }
        });
    }

    private void ListboxOpvullen() {
        PersoonService p = new PersoonService();
        lstPersonen.setListData(p.AllePersonenOphalen().toArray());
    }
    private void BoekListOpvullen() {
        BoekService b = new BoekService();
        lstBoek.setListData(b.SelecteerBoek(selectPersoon.getId()).toArray());

    }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JPanel MainPanel;
    private javax.swing.JButton btnAddBoek;
    private javax.swing.JButton btnAddGebruiker;
    private javax.swing.JButton btnDelete;
    private javax.swing.JButton btnDeleteBoek;
    private javax.swing.JPanel btnDeleteGebruiker;
    private javax.swing.JButton btnSelect;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JLabel lblAanspreekTitel;
    private javax.swing.JLabel lblEmail;
    private javax.swing.JLabel lblFamilieNaam;
    private javax.swing.JLabel lblPassWord;
    private javax.swing.JLabel lblUserName;
    private javax.swing.JLabel lblVoornaam;
    private javax.swing.JLabel lblWoonplaats;
    private javax.swing.JList lstBoek;
    private javax.swing.JList lstPersonen;
    private javax.swing.JTextField txtAanspreekTitel;
    private javax.swing.JButton txtEditBoek;
    private javax.swing.JButton txtEditGebruiker;
    private javax.swing.JTextField txtEmail;
    private javax.swing.JTextField txtFamilieNaam;
    private javax.swing.JTextField txtPassWord;
    private javax.swing.JTextField txtUserName;
    private javax.swing.JTextField txtVoornaam;
    private javax.swing.JTextField txtWoonplaats;
    // End of variables declaration//GEN-END:variables
}