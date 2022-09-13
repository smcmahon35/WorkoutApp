<%@ page import="databaseOperations.dbOperations" %>
<%@ page import="entity.Exercises" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: sebastianmcmahon
  Date: 9/5/22
  Time: 7:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>SEARCH PAGE</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body style="height:2000px">

<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
    <div class="container">
        <a href="${pageContext.request.contextPath}/" class="navbar-brand mb-0 h1">Home</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls = "navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" id="navbarDropdown" role="button"
                       data-bs-toggle="dropdown" aria-expanded="false">Exercises</a>
                    <form action="${pageContext.request.contextPath}/muscleWorked">
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><input type="submit" class="dropdown-item" name="muscle" id="muscle" value="Quads"></li>
                            <li><input type="submit" class="dropdown-item" name="muscle" id="muscle2" value="Hamstrings"></li>
                            <li><input type="submit" class="dropdown-item" name="muscle" id="muscle3" value="Calves"></li>
                            <li><input type="submit" class="dropdown-item" name="muscle" id="muscle4" value="Chest"></li>
                            <li><input type="submit" class="dropdown-item" name="muscle" id="muscle5" value="Shoulders"></li>
                            <li><input type="submit" class="dropdown-item" name="muscle" id="muscle6" value="Triceps"></li>
                            <li><input type="submit" class="dropdown-item" name="muscle" id="muscle7" value="Back"></li>
                            <li><input type="submit" class="dropdown-item" name="muscle" id="muscle8" value="Biceps"></li>
                            <li><input type="submit" class="dropdown-item" name="muscle" id="muscle9" value="Core"></li>
                        </ul>
                    </form>
                </li>
                <li class="nav-item">
                    <a href="${pageContext.request.contextPath}/form" class="nav-link">
                        Recommend
                    </a>
                </li>
            </ul>
        </div>
        <form class="d-flex" action="${pageContext.request.contextPath}/search">

            <label>
                <input class="form-control me-2" type="text" name="search">
            </label>
            <button type="submit" class="btn btn-primary" >Search</button>
        </form>
    </div>
</nav>


<%
    dbOperations db = new dbOperations();
    String m = request.getParameter("search");
    m = "%" + m + "%";
    List<Exercises> e = db.groupBy(m, "Exercises.byName");
    String heading = "heading";
    String heading2 = heading;
    String collapse = "collapse";
    String collapse2 = collapse;

%>

<div class="container">
    <div class="mx-auto w-50 m-5">
        <div class="accordion" id="accordionExample">
            <% for(Exercises ex : e){
                collapse2 = collapse + ex.getId();
                heading2 = heading + ex.getId();
            %>
            <div class="accordion-item">
                <h2 class="accordion-header" id="<%=heading2%>">
                    <button class="accordion-button" type="button"  data-bs-toggle="collapse" data-bs-target="#<%=collapse2%>" aria-expanded="true" aria-controls="<%=collapse2%>">
                        <%= ex.getName()%>
                    </button>
                </h2>
                <div id="<%=collapse2%>" class="accordion-collapse collapse " aria-labelledby= "<%=heading2%>" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        <strong> <%= ex.getMuscle()%>. </strong>
                        <%= ex.getDescription()%>
                        <div class ="m-2">
                            <div class="ratio-1x1">
                                <iframe allowfullscreen src=<%= ex.getLink()%>> </iframe>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <% } %>

        </div>
    </div>
</div>





</body>
</html>
