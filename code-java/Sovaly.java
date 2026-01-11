package zavam;

public class Sovaly {
    String nom;
    int vitesse;
    String fileName;

    public Sovaly() {

    }

    public String getFileName() {
        return fileName;
    }

    public void setFilename(String filename) {
        this.fileName = filename;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public int getVitesse() {
        return vitesse;
    }

    public void setVitesse(int vitesse) {
        this.vitesse = vitesse;
    }

    // public String getFileName() {
    // return "save/Sovaly.txt";
    // }

    public Sovaly(String nom, int vitesse) {
        this.nom = nom;
        this.vitesse = vitesse;
        this.fileName = "save/Sovaly.txt";
    }
}
