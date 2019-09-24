package restaurant.comenzi.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity
@Table(name = "mese")
public class Mese {

    @Id
    @Column(name = "id_masa",
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

    @Column(name = "numar_masa")
    Integer numarMasa;

    @Column(name = "capacitate_masa")
    Integer capacitateMasa;

    @Column(name = "id_ospatar")
    String idOspatar;

    @Override
    public String toString() {
        return "Mese{" +
                "id=" + id +
                ", numarMasa=" + numarMasa +
                ", capacitateMasa=" + capacitateMasa +
                ", idOspatar='" + idOspatar + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getNumarMasa() {
        return numarMasa;
    }

    public void setNumarMasa(Integer numarMasa) {
        this.numarMasa = numarMasa;
    }

    public Integer getCapacitateMasa() {
        return capacitateMasa;
    }

    public void setCapacitateMasa(Integer capacitateMasa) {
        this.capacitateMasa = capacitateMasa;
    }

    public String getIdOspatar() {
        return idOspatar;
    }

    public void setIdOspatar(String idOspatar) {
        this.idOspatar = idOspatar;
    }
}
