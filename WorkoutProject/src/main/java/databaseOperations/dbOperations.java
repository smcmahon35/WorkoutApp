package databaseOperations;

import entity.Exercises;
import jakarta.persistence.*;

import java.util.List;

public class dbOperations {

    public List<Exercises> groupBy(String m, String querySearch) {
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("default");
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        EntityTransaction transaction = entityManager.getTransaction();

        List<Exercises> e;
        try {
            transaction.begin();
            TypedQuery<Exercises> exQuery = entityManager.createNamedQuery(querySearch, Exercises.class);
            exQuery.setParameter(1, m);
            e = exQuery.getResultList();


            transaction.commit();
        } finally {
            if (transaction.isActive()) {
                transaction.rollback();
            }
            entityManager.close();
            entityManagerFactory.close();
        }
        return e;

    }

    public void uploadToWorkout(Exercises exercise){
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("default");
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        EntityTransaction transaction = entityManager.getTransaction();

        try {
            transaction.begin();
            entityManager.persist(exercise);
            transaction.commit();
        } finally{
            if(transaction.isActive()){
                transaction.rollback();
            }
            entityManager.close();
            entityManagerFactory.close();
        }

    }

}




