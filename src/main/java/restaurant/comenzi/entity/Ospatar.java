package restaurant.comenzi.entity;


import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity
@Table(name = "ospatar")
public class Ospatar {

    @Id
    @Column(name = "id_ospatar",
            unique = true,
            nullable = false)
    @GeneratedValue(
            strategy= GenerationType.AUTO,
            generator="native"
    )
    @GenericGenerator(
            name = "native",
            strategy = "native"
    )
    Integer id;

    @Column(name = "nume_ospatar")
    String numeOspatar;

    @Column(name = "prenume_ospatar")
    String prenumeOspatar;

    @Override
    public String toString() {
        return "Ospatar{" +
                "id=" + id +
                ", numeOspatar='" + numeOspatar + '\'' +
                ", prenumeOspatar='" + prenumeOspatar + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

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
}
