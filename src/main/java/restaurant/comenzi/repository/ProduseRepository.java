package restaurant.comenzi.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import restaurant.comenzi.entity.Produse;

public interface ProduseRepository extends JpaRepository<Produse , Integer> {
}
