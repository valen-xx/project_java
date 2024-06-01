/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package test44.mavenproject3.Model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;


/**
 *
 * @author valen
 */
@Entity
public class Vehicules {

    private String nomProprietaire;
    private String prenomProprietaire;
    private String Typedevehicule;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int ID;
    private String Marque;
    private String Modele;
    private String NoMoteur;
    private int NbCylindre;
    private String Couleur;
    private String Plaqueimmatriculation;
    private String Telephoneproprietaire;
    private String Adresseproprietaire;
    private String typePiece;
    private String Nopiece;
    private String Annees;
    private String Courrielproprietaire;
    private String Typetransmission;
    private String Typeessence;
    private String Photo;
    private String Dateenregistrement;
    private String Alerte;
    private String Datealerte;

    public Vehicules() {
    }

    public Vehicules(String nomProprietaire, String prenomProprietaire, String Typedevehicule, int ID, String Marque, String Modele, String NoMoteur, int NbCylindre, String Couleur, String Plaqueimmatriculation, String Telephoneproprietaire, String Adresseproprietaire, String typePiece, String Nopiece, String Annees, String Courrielproprietaire, String Typetransmission, String Typeessence, String Photo, String Dateenregistrement, String Alerte, String Datealerte) {
        this.nomProprietaire = nomProprietaire;
        this.prenomProprietaire = prenomProprietaire;
        this.Typedevehicule = Typedevehicule;
        this.ID = ID;
        this.Marque = Marque;
        this.Modele = Modele;
        this.NoMoteur = NoMoteur;
        this.NbCylindre = NbCylindre;
        this.Couleur = Couleur;
        this.Plaqueimmatriculation = Plaqueimmatriculation;
        this.Telephoneproprietaire = Telephoneproprietaire;
        this.Adresseproprietaire = Adresseproprietaire;
        this.typePiece = typePiece;
        this.Nopiece = Nopiece;
        this.Annees = Annees;
        this.Courrielproprietaire = Courrielproprietaire;
        this.Typetransmission = Typetransmission;
        this.Typeessence = Typeessence;
        this.Photo = Photo;
        this.Dateenregistrement = Dateenregistrement;
        this.Alerte = Alerte;
        this.Datealerte = Datealerte;
    }

    public String getNomProprietaire() {
        return nomProprietaire;
    }

    public void setNomProprietaire(String nomProprietaire) {
        this.nomProprietaire = nomProprietaire;
    }

    public String getPrenomProprietaire() {
        return prenomProprietaire;
    }

    public void setPrenomProprietaire(String prenomProprietaire) {
        this.prenomProprietaire = prenomProprietaire;
    }

    public String getTypedevehicule() {
        return Typedevehicule;
    }

    public void setTypedevehicule(String Typedevehicule) {
        this.Typedevehicule = Typedevehicule;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getMarque() {
        return Marque;
    }

    public void setMarque(String Marque) {
        this.Marque = Marque;
    }

    public String getModele() {
        return Modele;
    }

    public void setModele(String Modele) {
        this.Modele = Modele;
    }

    public String getNoMoteur() {
        return NoMoteur;
    }

    public void setNoMoteur(String NoMoteur) {
        this.NoMoteur = NoMoteur;
    }

    public int getNbCylindre() {
        return NbCylindre;
    }

    public void setNbCylindre(int NbCylindre) {
        this.NbCylindre = NbCylindre;
    }

    public String getCouleur() {
        return Couleur;
    }

    public void setCouleur(String Couleur) {
        this.Couleur = Couleur;
    }

    public String getPlaqueimmatriculation() {
        return Plaqueimmatriculation;
    }

    public void setPlaqueimmatriculation(String Plaqueimmatriculation) {
        this.Plaqueimmatriculation = Plaqueimmatriculation;
    }

    public String getTelephoneproprietaire() {
        return Telephoneproprietaire;
    }

    public void setTelephoneproprietaire(String Telephoneproprietaire) {
        this.Telephoneproprietaire = Telephoneproprietaire;
    }

    public String getAdresseproprietaire() {
        return Adresseproprietaire;
    }

    public void setAdresseproprietaire(String Adresseproprietaire) {
        this.Adresseproprietaire = Adresseproprietaire;
    }

    public String getTypePiece() {
        return typePiece;
    }

    public void setTypePiece(String typePiece) {
        this.typePiece = typePiece;
    }

    public String getNopiece() {
        return Nopiece;
    }

    public void setNopiece(String Nopiece) {
        this.Nopiece = Nopiece;
    }

    public String getAnnees() {
        return Annees;
    }

    public void setAnnees(String Annees) {
        this.Annees = Annees;
    }

    public String getCourrielproprietaire() {
        return Courrielproprietaire;
    }

    public void setCourrielproprietaire(String Courrielproprietaire) {
        this.Courrielproprietaire = Courrielproprietaire;
    }

    public String getTypetransmission() {
        return Typetransmission;
    }

    public void setTypetransmission(String Typetransmission) {
        this.Typetransmission = Typetransmission;
    }

    public String getTypeessence() {
        return Typeessence;
    }

    public void setTypeessence(String Typeessence) {
        this.Typeessence = Typeessence;
    }

    public String getPhoto() {
        return Photo;
    }

    public void setPhoto(String Photo) {
        this.Photo = Photo;
    }

    public String getDateenregistrement() {
        return Dateenregistrement;
    }

    public void setDateenregistrement(String Dateenregistrement) {
        this.Dateenregistrement = Dateenregistrement;
    }

    public String getAlerte() {
        return Alerte;
    }

    public void setAlerte(String Alerte) {
        this.Alerte = Alerte;
    }

    public String getDatealerte() {
        return Datealerte;
    }

    public void setDatealerte(String Datealerte) {
        this.Datealerte = Datealerte;
    }
    
    

}
