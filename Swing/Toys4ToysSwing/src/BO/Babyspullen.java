package BO;
// Generated 14-jan-2015 10:24:43 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;
import javax.swing.Icon;

/**
 * Babyspullen generated by hbm2java
 */
public class Babyspullen  implements java.io.Serializable {


     private Integer id;
     private Persoon persoon;
     private String titel;
     private Boolean geslacht;
     private Integer leeftijd;
     private String categorie;
     private String omschrijving;
     private byte[] babyspullenFoto;
     private Set advertenties = new HashSet(0);

    public Babyspullen() {
    }
  @Override
    public String toString() {
        return getTitel();

    }
	
    public Babyspullen(Persoon persoon) {
        this.persoon = persoon;
    }
    public Babyspullen(Persoon persoon, String titel, Boolean geslacht, Integer leeftijd, String categorie, String omschrijving, byte[] babyspullenFoto, Set advertenties) {
       this.persoon = persoon;
       this.titel = titel;
       this.geslacht = geslacht;
       this.leeftijd = leeftijd;
       this.categorie = categorie;
       this.omschrijving = omschrijving;
       this.babyspullenFoto = babyspullenFoto;
       this.advertenties = advertenties;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public Persoon getPersoon() {
        return this.persoon;
    }
    
    public void setPersoon(Persoon persoon) {
        this.persoon = persoon;
    }
    public String getTitel() {
        return this.titel;
    }
    
    public void setTitel(String titel) {
        this.titel = titel;
    }
    public Boolean getGeslacht() {
        return this.geslacht;
    }
    
    public void setGeslacht(Boolean geslacht) {
        this.geslacht = geslacht;
    }
    public Integer getLeeftijd() {
        return this.leeftijd;
    }
    
    public void setLeeftijd(Integer leeftijd) {
        this.leeftijd = leeftijd;
    }
    public String getCategorie() {
        return this.categorie;
    }
    
    public void setCategorie(String categorie) {
        this.categorie = categorie;
    }
    public String getOmschrijving() {
        return this.omschrijving;
    }
    
    public void setOmschrijving(String omschrijving) {
        this.omschrijving = omschrijving;
    }
    public byte[] getBabyspullenFoto() {
        return this.babyspullenFoto;
    }
    
    public void setBabyspullenFoto(byte[] babyspullenFoto) {
        this.babyspullenFoto = babyspullenFoto;
    }
    public Set getAdvertenties() {
        return this.advertenties;
    }
    
    public void setAdvertenties(Set advertenties) {
        this.advertenties = advertenties;
    }






}


