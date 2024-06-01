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
public class Transfert {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int Id;
    private String NouveauNom;
    private String NouveauPrenom;
    private String sexe;
    private String Telephone;
    private String Adresse;
    private String TypePiece;
    private String NoPiece;
    private String MotifTransaction;
    private String DateTransfert;
    private String Etat;

    public Transfert() {
    }

    public Transfert(int Id, String NouveauNom, String NouveauPrenom, String sexe, String Telephone, String Adresse, String TypePiece, String NoPiece, String MotifTransaction, String DateTransfert, String Etat) {
        this.Id = Id;
        this.NouveauNom = NouveauNom;
        this.NouveauPrenom = NouveauPrenom;
        this.sexe = sexe;
        this.Telephone = Telephone;
        this.Adresse = Adresse;
        this.TypePiece = TypePiece;
        this.NoPiece = NoPiece;
        this.MotifTransaction = MotifTransaction;
        this.DateTransfert = DateTransfert;
        this.Etat = Etat;
    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getNouveauNom() {
        return NouveauNom;
    }

    public void setNouveauNom(String NouveauNom) {
        this.NouveauNom = NouveauNom;
    }

    public String getNouveauPrenom() {
        return NouveauPrenom;
    }

    public void setNouveauPrenom(String NouveauPrenom) {
        this.NouveauPrenom = NouveauPrenom;
    }

    public String getSexe() {
        return sexe;
    }

    public void setSexe(String sexe) {
        this.sexe = sexe;
    }

    public String getTelephone() {
        return Telephone;
    }

    public void setTelephone(String Telephone) {
        this.Telephone = Telephone;
    }

    public String getAdresse() {
        return Adresse;
    }

    public void setAdresse(String Adresse) {
        this.Adresse = Adresse;
    }

    public String getTypePiece() {
        return TypePiece;
    }

    public void setTypePiece(String TypePiece) {
        this.TypePiece = TypePiece;
    }

    public String getNoPiece() {
        return NoPiece;
    }

    public void setNoPiece(String NoPiece) {
        this.NoPiece = NoPiece;
    }

    public String getMotifTransaction() {
        return MotifTransaction;
    }

    public void setMotifTransaction(String MotifTransaction) {
        this.MotifTransaction = MotifTransaction;
    }

    public String getDateTransfert() {
        return DateTransfert;
    }

    public void setDateTransfert(String DateTransfert) {
        this.DateTransfert = DateTransfert;
    }

    public String getEtat() {
        return Etat;
    }

    public void setEtat(String Etat) {
        this.Etat = Etat;
    }
    
    
    
    
    
}
