<%@page import="java.util.Calendar"%>
<%@page import="entities.Article"%>
<%@page import="java.util.Vector"%>
<%@page import="dao.ArticleDao"%>
<%@include file="header.jsp" %>

<div class="RightSide" >
    <form action="registerClientServlet" method="post" >
        <center>
            <table style="padding-top: 100px;">
                <tr>
                    <td>login : </td>
                    <td><input class="intest" name="login" value="" > </td>

                </tr>
                <tr>
                    <td>Nom : </td>
                    <td><input class="intest" name="nom" value="" > </td>
                </tr>
                <tr>
                    <td>Prenom : </td>
                    <td><input class="intest" name="prenom" value=""></td>
                </tr>

                <tr>
                    <td>Mdp : </td>
                    <td><input class="intest" type="password" name="mdp" value=""></td>
                </tr>

                <tr>
                    <td>
                        <input  class="intest" type="submit" value="valider">
                    </td>
                    <td>
                        <input class="intest" type="reset" value="Annuler">
                    </td>
                </tr>

            </table>
        </center>
    </form>
</div>
<%@include file="footer.jsp" %>