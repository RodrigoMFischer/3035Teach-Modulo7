import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class Main {
    public static void main (String[] args) {
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("tarefa2");
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();

        entityManager.close();
        entityManagerFactory.close();
    }
}
