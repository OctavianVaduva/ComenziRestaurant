package restaurant.comenzi.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import restaurant.comenzi.entity.CurrentOrder;

public interface CurrentOrderRepository extends JpaRepository<CurrentOrder , Integer> {
}
