package zavam;

public class Saka extends Zavam {
    String nom;
    int prix;

    public String getNom() {
        return nom;
    }
    public Saka(){
        super();
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public Saka(int prix, String nom) {
        super("save/Saka.txt");
        this.nom = nom;
        this.prix = prix;
    }

    public int getPrix() {
        return prix;
    }

    public void setPrix(int prix) {
        this.prix = prix;
    }

}
