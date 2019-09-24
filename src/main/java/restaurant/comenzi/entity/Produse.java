package restaurant.comenzi.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity
@Table
public class Produse {

    @Id
    @Column(name = "id_produs",
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

    @Column(name = "id_categorie")
    Integer idCategorie;

    @Column(name = "nume_produs")
    String numeProdus;

    @Column(name = "obs_produs")
    String obsProdus;

    @Column(name = "pret_unitar")
    Integer pret_unitar;

    @Column(name = "stoc_level")
    Integer stocLevel;

    @Column(name = "alert_level")
    Integer alertLevel;

    @Override
    public String toString() {
        return "Produse{" +
                "id=" + id +
                ", idCategorie=" + idCategorie +
                ", numeProdus='" + numeProdus + '\'' +
                ", obsProdus='" + obsProdus + '\'' +
                ", pret_unitar=" + pret_unitar +
                ", stocLevel=" + stocLevel +
                ", alertLevel=" + alertLevel +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getIdCategorie() {
        return idCategorie;
    }

    public void setIdCategorie(Integer idCategorie) {
        this.idCategorie = idCategorie;
    }

    public String getNumeProdus() {
        return numeProdus;
    }

    public void setNumeProdus(String numeProdus) {
        this.numeProdus = numeProdus;
    }

    public String getObsProdus() {
        return obsProdus;
    }

    public void setObsProdus(String obsProdus) {
        this.obsProdus = obsProdus;
    }

    public Integer getPret_unitar() {
        return pret_unitar;
    }

    public void setPret_unitar(Integer pret_unitar) {
        this.pret_unitar = pret_unitar;
    }

    public Integer getStocLevel() {
        return stocLevel;
    }

    public void setStocLevel(Integer stocLevel) {
        this.stocLevel = stocLevel;
    }

    public Integer getAlertLevel() {
        return alertLevel;
    }

    public void setAlertLevel(Integer alertLevel) {
        this.alertLevel = alertLevel;
    }
}
