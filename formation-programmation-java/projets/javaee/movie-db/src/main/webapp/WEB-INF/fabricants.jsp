<%@ page import="fr.lteconsulting.training.moviedb.model.Fabricant" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Categories</title>
    <link rel="stylesheet" href="Skeleton-2.0.4/css/normalize.css">
    <link rel="stylesheet" href="Skeleton-2.0.4/css/skeleton.css">
</head>
<body>

<%
    List<Fabricant> fabricants = (List<Fabricant>) request.getAttribute("fabricants");
%>

<h1>Fabricants</h1>
<table>
    <tr>
        <th>ID</th>
        <th>Nom</th>
        <th>Adresse</th>
        <th>Actions</th>
    </tr>
    <%
        for (Fabricant fabricant : fabricants) {
    %>
    <tr>
        <td><%= fabricant.getId() %>
        </td>
        <td><%= fabricant.getNom()%>
        </td>
        <td><%= fabricant.getAdresse()%>
        </td>
        <td>
            <form method="get" action="editionFabricant" style="display: inline-block;">
                <input type="hidden" name="id" value="<%= fabricant.getId()%>">
                <button>éditer</button>
            </form>

            <form method="post" action="suppressionFabricant" style="display: inline-block;">
                <input type="hidden" name="id" value="<%= fabricant.getId()%>">
                <button>supprimer</button>
            </form>
        </td>
    </tr>
    <%
        }
    %>

    <tr>
        <td></td>
        <td>
            <form method="get" action="editionFabricant">
                <button>ajouter</button>
            </form>
        </td>
        <td></td>
    </tr>
</table>

</body>
</html>