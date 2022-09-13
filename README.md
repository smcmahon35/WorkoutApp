# WorkoutApp
This application creates a way for anyone to upload there favorite workout for others to see. Users can also view exercises that are posted by other users. Once a workout is posted by a user from the recommend page it is now on the website forever for anyone to view.

<h1> Technologies Used </h1>
<p>-Bootsrap framework and HTML for sytling the webpage</p>
<p>-Apache Tomcat for the webserver</p>
<p>-Java Servlet and JSP to communicate from the webserver to the backend.</p>
<p>-MySQL database to store the information from the exercise forms</p
<p>-Intellij Idea Ultimate as the IDE for the entire project</p>
<p>-Maven for the structure of the project</p>


<h1> Functionality </h1>
<p> When a User uploads a exercise to the webpage via the recommend feature, the form creates a POST request that is picked up by a Java Servlet to then process the information into the database. For finding exercises through the search or dropdown menu, a GET request is made to whatever url the user is on that then gets sent to a Java Servlet to process the request and grab information from the database to display to the user.
