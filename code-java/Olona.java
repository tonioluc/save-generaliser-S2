package zavam;

import java.util.Date;

public class Olona extends Zavam {
    String nom;
    int age;
    Date dateDeNaissance;
    boolean estMarie;
    String Pays;

    public Date getDateDeNaissance() {
        return dateDeNaissance;
    }

    public void setDateDeNaissance(Date dateDeNaissance) {
        this.dateDeNaissance = dateDeNaissance;
    }


    public Olona() {
        super();
    }

    public Boolean getEstMarie() {
        return estMarie;
    }

    public void setEstMarie(Boolean EstMarie) {
        this.estMarie = EstMarie;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public Olona(int age, String nom) {
        super("save/Olona.txt");
        this.nom = nom;
        this.age = age;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

}
