package restaurant.service;

import restaurant.model.Ospatar;

import java.util.List;

public interface OspatariServiceInterface {
    //getClient method

    Ospatar getOspatar();
    List<Ospatar> getListaOspatari();
    void addOspatarNou(Ospatar ospatarNou);
}
