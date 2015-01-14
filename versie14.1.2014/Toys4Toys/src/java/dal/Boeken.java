package dal;
// Generated 17-dec-2014 14:52:24 by Hibernate Tools 4.3.1

import java.util.HashSet;
import java.util.Set;

/**
 * Boeken generated by hbm2java
 */
public class Boeken implements java.io.Serializable {

    private Integer id;
    private Persoon persoon;
    private String titel;
    private String auteur;
    private String uitgeverij;
    private String categorie;
    private String omschrijving;
    private byte[] boekenFoto;
    private Set advertenties = new HashSet(0);

    public Boeken() {
    }

    public Boeken(Persoon persoon) {
        this.persoon = persoon;
    }

    public Boeken(Persoon persoon, String titel, String auteur, String uitgeverij, String categorie, String omschrijving, byte[] boekenFoto, Set advertenties) {
        this.persoon = persoon;
        this.titel = titel;
        this.auteur = auteur;
        this.uitgeverij = uitgeverij;
        this.categorie = categorie;
        this.omschrijving = omschrijving;
        this.boekenFoto = boekenFoto;
        this.advertenties = advertenties;
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Persoon getPersoon() {
        return persoon;
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

    public String getAuteur() {
        return this.auteur;
    }

    public void setAuteur(String auteur) {
        this.auteur = auteur;
    }

    public String getUitgeverij() {
        return this.uitgeverij;
    }

    public void setUitgeverij(String uitgeverij) {
        this.uitgeverij = uitgeverij;
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

    public byte[] getBoekenFoto() {
        return this.boekenFoto;
    }

    public void setBoekenFoto(byte[] boekenFoto) {
        this.boekenFoto = boekenFoto;
    }

    public Set getAdvertenties() {
        return this.advertenties;
    }

    public void setAdvertenties(Set advertenties) {
        this.advertenties = advertenties;
    }

    public String geefPersoon() {
        return persoon.getFamilienaam() + " " + persoon.getVoornaam();
    }

}
