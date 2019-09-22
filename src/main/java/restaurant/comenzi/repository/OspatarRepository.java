package restaurant.comenzi.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import restaurant.comenzi.entity.Ospatar;

public interface OspatarRepository extends JpaRepository<Ospatar, Integer>{
}
