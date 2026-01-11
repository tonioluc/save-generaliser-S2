package zavam;

public class Avion {
    String nomAvion;
    boolean manidina;
    String fileName;
    int vitesse;
    int x;
    int y;
    int km;

    public boolean isManidina() {
        return manidina;
    }

    public Avion() {

    }

    public void setManidina(boolean manidina) {
        this.manidina = manidina;
    }

    public Avion(String nomAvion, String fileName, int x, int y, int vitesse, int km) {
        this.nomAvion = nomAvion;
        this.fileName = fileName;
        this.x = x;
        this.y = y;
        this.vitesse = vitesse;
        this.km = km;
        this.fileName = "save/Avion.txt";
    }

    public int getX() {
        return x;
    }

    public void setX(int x) {
        this.x = x;
    }

    public int getY() {
        return y;
    }

    public void setY(int y) {
        this.y = y;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getNomAvion() {
        return nomAvion;
    }

    public void setNomAvion(String nomAvion) {
        this.nomAvion = nomAvion;
    }

    public int getVitesse() {
        return vitesse;
    }

    public void setVitesse(int vitesse) {
        this.vitesse = vitesse;
    }

    public int getKm() {
        return km;
    }

    public void setKm(int km) {
        this.km = km;
    }

}
