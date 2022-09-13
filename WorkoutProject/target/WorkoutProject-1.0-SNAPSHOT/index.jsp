<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <title>Home</title>
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


<h1 class="text-center"> How it Works</h1>
<section>
    <div class="container text-center mt-5">
        <div class="row justify-content-center">
            <div class="col-sm-4">
                <h2> Recommend Page</h2>
                <p> This feature allows you to recommend your favorite exercises into a form.
                The information from the form is then sent to the database and published onto the
                website for other users to see.</p>
            </div>
            <div class="col-sm-4">
                <video width="100%" height="100%" controls>
                    <source src="recommendFile.mp4" type="video/mp4">
                </video>
            </div>
        </div>
        <div class="row align-items-center justify-content-center mt-5">
            <div class="col-sm-4">
                <h2> Muscle Group Page</h2>
                <p> This feature allows you to use a dropdown menu showing all the various
                muscle groups that users upload exercises under. When you click on one of the muscle
                groups you are taken to a page showing every exercise that has been uploaded by users
                under that muscle group</p>
            </div>
            <div class="col-sm-4">
                <video width="100%" height="100%" controls>
                    <source src="exercisesPage.mp4" type="video/mp4">
                </video>
            </div>
        </div>
        <div class="row align-items-end justify-content-center mt-5">
            <div class="col-sm-4">
                <h2> Search Page</h2>
                <p>This feature allows you to search for specific workouts you might be interested in
                This feature searches the database for any exercise names that contain the information
                that was type in</p>
            </div>
            <div class="col-sm-4">
                <video width="100%" height="100%" controls>
                    <source src="searchPage.mov" type="video/mp4">
                </video>
            </div>
        </div>
    </div>
</section>



</body>
</html>