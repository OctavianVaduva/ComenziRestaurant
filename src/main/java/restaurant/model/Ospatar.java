package restaurant.model;

public class Ospatar {
    private int idOspatar;
    private String numeOspatar;
    private String prenumeOspatar;

    public Ospatar(int idOspatar, String numeOspatar, String prenumeOspatar) {
        this.idOspatar = idOspatar;
        this.numeOspatar = numeOspatar;
        this.prenumeOspatar = prenumeOspatar;
    }

    public Ospatar(String numeOspatar, String prenumeOspatar) {
        this.numeOspatar = numeOspatar;
        this.prenumeOspatar = prenumeOspatar;
    }

    public int getIdOspatar() {
        return idOspatar;
    }
//      //nu cred ca este necesar sa setam idOspatar
//    public void setIdOspatar(int idOspatar) {
//        this.idOspatar = idOspatar;
//    }

    public String getNumeOspatar() {
        return numeOspatar;
    }

    public void setNumeOspatar(String numeOspatar) {
        this.numeOspatar = numeOspatar;
    }

    public String getPrenumeOspatar() {
        return prenumeOspatar;
    }

    public void setPrenumeOspatar(String prenumeOspatar) {
        this.prenumeOspatar = prenumeOspatar;
    }

    @Override
    public String toString() {
        return "Ospatar{" +
                "ID ospatar=" + idOspatar +
                ", Nume ospatar='" + numeOspatar + '\'' +
                ", Prenume ospatar='" + prenumeOspatar + '\'' +
                '}';
    }
}
