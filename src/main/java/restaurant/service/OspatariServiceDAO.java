package restaurant.service;

import restaurant.model.Ospatar;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class OspatariServiceDAO implements OspatariServiceInterface {

    private static final String LISTA_OSPATARI_QUERY =
            "SELECT * FROM RESTAURANT.OSPATARI";
    // RESTAURANT.OSPATARI este numele tabelului OSPATARI din schema RESTAURANT

    private static final String ADAUGA_OSPATAR_NOU =
            "INSERT INTO RESTAURANT.OSPATARI (NUME, PRENUME) VALUES (?, ?)";

    private Connection conn;
    private Statement stmt;
    private PreparedStatement preparedStatement;
    private ResultSet resultSet;

    @Override
    public Ospatar getOspatar() {
        return new Ospatar("Salma", "HAYEK");
    }

    @Override
    public List<Ospatar> getListaOspatari() {
        return populateListaOspatari();
    }

    @Override
    public void addOspatarNou(Ospatar ospatarNou) {
        try {
            MySQLConnection();
            preparedStatement = conn.prepareStatement(ADAUGA_OSPATAR_NOU);
            preparedStatement.setString(1, ospatarNou.getNumeOspatar());
            preparedStatement.setString(2, ospatarNou.getPrenumeOspatar());
            preparedStatement.execute();

        } catch (SQLException e) {
            e.printStackTrace(); // printeaza eroarea "prinde SQL exception"
//        } catch (ClassNotFoundException e) {
//            e.printStackTrace(); // printeaza eroarea "nu gaseste clasa"
        } catch (Exception a) {
            a.printStackTrace(); // prinde orice eroare
        }
    }

    private List<Ospatar> populateListaOspatari() {
        List<Ospatar> listaOspatari = new ArrayList<Ospatar>();
        try { //deschidem conexiunea
            MySQLConnection(); // am creat metoda distincta pentru conectare la baza de date SQL pe care o apelam aici.
            stmt = conn.createStatement();
            resultSet = stmt.executeQuery(LISTA_OSPATARI_QUERY);
            //metoda prin care luam rezultatele din resultSet si ne creem obiecte
                    // si sa ne returneze o lista de clienti - o creem in exterior
            listaOspatari = genereazaLista(resultSet);
            conn.close();

        } catch (SQLException e) {
            e.printStackTrace();
//        } catch (ClassNotFoundException e) {
//            e.printStackTrace();
        }
        return listaOspatari;
    }

    private List<Ospatar> genereazaLista(ResultSet resultSet) throws SQLException{
        List<Ospatar> listaOspatariGenerata = new ArrayList<Ospatar>();
        while (resultSet.next()) {
            int ID = resultSet.getInt("ID"); //vezi repartizareMese.HTML
            String nume = resultSet.getString("NUME");
            String prenume = resultSet.getString("PRENUME");

            listaOspatariGenerata.add(new Ospatar(ID, nume, prenume));
        }
        return listaOspatariGenerata;
    }

    private Connection MySQLConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/restaurant", // Restaurant este schema la care ne conectam
                    "root",
                    "Veveveve11!!"); // se iau din conexiunea pentru baza de date - CLIENTS este numele schemei

        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return conn;
    }

}
