package formProcessing;

import databaseOperations.dbOperations;
import entity.Exercises;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "formServlet", value = "/form")
public class formServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/ExerciseForm.html").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("Post request has been made");
        //PrintWriter pw = response.getWriter();
        Exercises exercises = new Exercises();

        exercises.setName(request.getParameter("name"));
        exercises.setMuscle(request.getParameter("muscle"));
        exercises.setDescription(request.getParameter("description"));
        exercises.setLink(request.getParameter("link"));
        dbOperations db = new dbOperations();
        db.uploadToWorkout(exercises);



        getServletContext().getRequestDispatcher("/recentFormData.jsp").forward(request, response);
    }
}
