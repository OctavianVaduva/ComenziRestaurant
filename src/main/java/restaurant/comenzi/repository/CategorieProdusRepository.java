package restaurant.comenzi.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import restaurant.comenzi.entity.CategorieProdus;

public interface CategorieProdusRepository extends JpaRepository<CategorieProdus, Integer> {
}
