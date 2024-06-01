
package test44.mavenproject3.Model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Alertes {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int Id;
    private String Alertes;
    private String LieuDincident;
    private String DateDincident;
    private String Declarations;
    private String Description;

    public Alertes() {
    }

    public Alertes(int Id, String Alertes, String LieuDincident, String DateDincident, String Declarations, String Description) {
        this.Id = Id;
        this.Alertes = Alertes;
        this.LieuDincident = LieuDincident;
        this.DateDincident = DateDincident;
        this.Declarations = Declarations;
        this.Description = Description;
    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getAlertes() {
        return Alertes;
    }

    public void setAlertes(String Alertes) {
        this.Alertes = Alertes;
    }

    public String getLieuDincident() {
        return LieuDincident;
    }

    public void setLieuDincident(String LieuDincident) {
        this.LieuDincident = LieuDincident;
    }

    public String getDateDincident() {
        return DateDincident;
    }

    public void setDateDincident(String DateDincident) {
        this.DateDincident = DateDincident;
    }

    public String getDeclarations() {
        return Declarations;
    }

    public void setDeclarations(String Declarations) {
        this.Declarations = Declarations;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }  
}
