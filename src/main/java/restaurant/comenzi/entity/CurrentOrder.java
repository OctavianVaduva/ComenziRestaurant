package restaurant.comenzi.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity
@Table(name = "current_order")
public class CurrentOrder {

    @Id
    @Column(name = "idcurrent_order",
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

    @Column(name = "id_order")
    Integer idOrder;

    @Column(name = "id_produs")
    Integer idProdus;

    @Column(name = "nr_produse")
    Integer nrProduse;

    @Column(name = "pret_total")
    Integer pretTotal;

    @Column(name = "make_time_final_min")
    Integer makeTimeFinalMin;

    @Column(name = "livrat")
    Integer livrat;

    @Column(name = "id_masa")
    Integer idMasa;

    @Override
    public String toString() {
        return "CurrentOrder{" +
                "id=" + id +
                ", idOrder=" + idOrder +
                ", idProdus=" + idProdus +
                ", nrProduse=" + nrProduse +
                ", pretTotal=" + pretTotal +
                ", makeTimeFinalMin=" + makeTimeFinalMin +
                ", livrat=" + livrat +
                ", idMasa=" + idMasa +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getIdOrder() {
        return idOrder;
    }

    public void setIdOrder(Integer idOrder) {
        this.idOrder = idOrder;
    }

    public Integer getIdProdus() {
        return idProdus;
    }

    public void setIdProdus(Integer idProdus) {
        this.idProdus = idProdus;
    }

    public Integer getNrProduse() {
        return nrProduse;
    }

    public void setNrProduse(Integer nrProduse) {
        this.nrProduse = nrProduse;
    }

    public Integer getPretTotal() {
        return pretTotal;
    }

    public void setPretTotal(Integer pretTotal) {
        this.pretTotal = pretTotal;
    }

    public Integer getMakeTimeFinalMin() {
        return makeTimeFinalMin;
    }

    public void setMakeTimeFinalMin(Integer makeTimeFinalMin) {
        this.makeTimeFinalMin = makeTimeFinalMin;
    }

    public Integer getLivrat() {
        return livrat;
    }

    public void setLivrat(Integer livrat) {
        this.livrat = livrat;
    }

    public Integer getIdMasa() {
        return idMasa;
    }

    public void setIdMasa(Integer idMasa) {
        this.idMasa = idMasa;
    }
}
