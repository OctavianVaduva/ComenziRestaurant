package restaurant.comenzi.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import restaurant.comenzi.entity.Orders;

public interface OrdersRepository extends JpaRepository<Orders , Integer> {
}
