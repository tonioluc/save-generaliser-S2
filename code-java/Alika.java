package zavam;

public class Alika extends Zavam {
    String nom;
    int poids;

    public Alika(){
        super();
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public int getPoids() {
        return poids;
    }

    public void setPoids(int poids) {
        this.poids = poids;
    }

    public Alika(int poids, String nom) {
        super("save/Alika.txt");
        this.nom = nom;
        this.poids = poids;
    }
}