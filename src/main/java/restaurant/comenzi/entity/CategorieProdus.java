package restaurant.comenzi.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity
@Table(name = "categorie_produs")
public class CategorieProdus {

    @Id
    @Column(name = "idCategorie_produs",
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

    @Column(name = "nume_categorie_produs")
    String numeCategorieProdus;

    @Override
    public String toString() {
        return "CategorieProdus{" +
                "id=" + id +
                ", numeCategorieProdus='" + numeCategorieProdus + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNumeCategorieProdus() {
        return numeCategorieProdus;
    }

    public void setNumeCategorieProdus(String numeCategorieProdus) {
        this.numeCategorieProdus = numeCategorieProdus;
    }
}
