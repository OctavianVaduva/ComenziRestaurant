<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">

<head>
    <meta charset="UTF-8">
    <title>Restaurant SDA-7 - Login as administrator</title>
</head>
<body>

    <p align="center">Bine ati venit pe pagina de conectare pentru CONFIGURAREA ZILNICA a aplicatiei de management a Restaurantului SDA-7!</p>
    <br>
    <p align="center">Configurarea este permisa numai pentru personalul autorizat!</p>
    <br>


    <div align="center">
        <h2>Login page</h2>
    </div>
    <form action="LoginAdminServlet" method="POST">

        <div align="center">
            <table>
                <tr>
                    <td>
                        <label>Username</label>
                    </td>
                    <td>
                        <input type="text" id="username" name="username" required/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Password</label>
                    </td>
                    <td>
                        <input type="password" id="password" name="password" required/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input align="center" type="submit" onclick="submitForm()" value="Login">
                    </td>
                </tr>
            </table>

            <!--<%-->
            <!--if(null!=request.getAttribute("Mesaj eroare"))-->
            <!--{-->
            <!--out.println(request.getAttribute("Mesaj eroare"));-->
            <!--}-->
            <!--%>-->

            <table>
                <tr>
                    <td>
                        <p>If you don't have an account - <a href="index.html">Register here</a></p> <!-- TODO:  de rezolvat -->
                    </td>
                </tr>
            </table>


        </div>

    </form>



</body>
</html>