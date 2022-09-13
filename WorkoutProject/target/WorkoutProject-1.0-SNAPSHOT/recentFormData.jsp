<%--
  Created by IntelliJ IDEA.
  User: sebastianmcmahon
  Date: 9/4/22
  Time: 3:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Recent Form Data</title>
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

<div class="container">
    <div class="mx-auto w-50 m-5">
        <div class="accordion" id="accordionExample">
            <div class="accordion-item">
                <h2 class="accordion-header" id="headingOne">
                    <button class="accordion-button" type="button"  data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        <%= request.getParameter("name")%>
                    </button>
                </h2>
                <div id="collapseOne" class="accordion-collapse collapse " aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        <strong> <%= request.getParameter("muscle")%>. </strong>
                        <%= request.getParameter("description")%>
                        <div class ="m-2">
                            <div class="ratio-1x1">
                        <iframe allowfullscreen src=<%=request.getParameter("link")%>> </iframe>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
