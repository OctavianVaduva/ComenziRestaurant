<%@page import="restaurant.model.*"%>
<%@page import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Corelare mese - ospatari</title>
</head>
<body>

    <p>Repartizarea meselor pe ospătari
    <input type="button" onclick="location.href='/repartizareMese'" value="Corelare mese - ospatari"></p>
<br>
<%-- Detalii:
1 - afisam lista de ospatari, pentru informare;
2 - stabilim, pentru fiecare masa cine este ospatarul repartizat;
3 - datele vor fi salvate in tabelul de legatura mese ospatari, impreuna cu data zilei

Implementation (https://www.geeksforgeeks.org/getattribute-passing-data-from-server-to-jsp/)
1) First create data at the server side and pass it to a JSP. Here a list of student objects in a servlet will be created and pass it to a JSP using setAttribute().
2) Next, the JSP will retrieve the sent data using getAttribute().
3) Finally, the JSP will display the data retrieved, in a tabular form.
--%>

    <%// Ospatar spatari = (Ospatar)request.getAttribute("Ospatar"); %>
    <%
    List<Ospatar> listaOspatari = (List<Ospatar>)request.getAttribute("Restaurant");
            //request.getAttribute = se solicita serverului sa transmita
        %>

        <table border="2" align="Center">
            <caption><b>Tabel ospatari</b></caption>
            <tr>
                <th type="number">ID</th>
                <th type="text">NUME</th>
                <th type="text">PRENUME</th>
            </tr>

            <%
            for (Ospatar ospatar : listaOspatari) {
            %>
            <tr>
                <td type="number"><%= ospatar.getIdOspatar()%></td>
                <td type="text"><%= ospatar.getNumeOspatar()%></td>
                <td type="text"><%= ospatar.getPrenumeOspatar()%></td>
            </tr>
            <%
            } //este inchiderea parantezei de la ForEach
            %>
        </table>
</body>
</html>