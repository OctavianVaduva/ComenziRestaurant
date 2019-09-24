package restaurant.comenzi.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity
@Table(name = "orders")
public class Orders {

    @Id
    @Column(name = "orders",
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

    @Column(name = "id_masa")
    Integer idMasa;

    @Column(name = "pret_total_comanda")
    Integer pretTotalComanda;

    @Column(name = "incasat")
    Integer incasat;

    @Override
    public String toString() {
        return "Orders{" +
                "id=" + id +
                ", idMasa=" + idMasa +
                ", pretTotalComanda=" + pretTotalComanda +
                ", incasat=" + incasat +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getIdMasa() {
        return idMasa;
    }

    public void setIdMasa(Integer idMasa) {
        this.idMasa = idMasa;
    }

    public Integer getPretTotalComanda() {
        return pretTotalComanda;
    }

    public void setPretTotalComanda(Integer pretTotalComanda) {
        this.pretTotalComanda = pretTotalComanda;
    }

    public Integer getIncasat() {
        return incasat;
    }

    public void setIncasat(Integer incasat) {
        this.incasat = incasat;
    }
}
