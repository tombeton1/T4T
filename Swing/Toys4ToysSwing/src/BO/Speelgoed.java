package BO;
// Generated 14-jan-2015 10:24:43 by Hibernate Tools 4.3.1



/**
 * Speelgoed generated by hbm2java
 */
public class Speelgoed  implements java.io.Serializable {


     private Integer id;
     private Persoon persoon;
     private String titel;
     private Boolean geslacht;
     private Integer leeftijd;
     private String categorie;
     private String omschrijving;
     private byte[] speelgoedFoto;

    public Speelgoed() {
    }
 @Override
    public String toString() {
        return getTitel();

    }
	
    public Speelgoed(Persoon persoon) {
        this.persoon = persoon;
    }
    public Speelgoed(Persoon persoon, String titel, Boolean geslacht, Integer leeftijd, String categorie, String omschrijving, byte[] speelgoedFoto) {
       this.persoon = persoon;
       this.titel = titel;
       this.geslacht = geslacht;
       this.leeftijd = leeftijd;
       this.categorie = categorie;
       this.omschrijving = omschrijving;
       this.speelgoedFoto = speelgoedFoto;
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
    public byte[] getSpeelgoedFoto() {
        return this.speelgoedFoto;
    }
    
    public void setSpeelgoedFoto(byte[] speelgoedFoto) {
        this.speelgoedFoto = speelgoedFoto;
    }




}


