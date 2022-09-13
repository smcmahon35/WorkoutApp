package entity;

import jakarta.persistence.*;

@Entity
@NamedQuery(name = "Exercises.byMuscle", query = "SELECT e FROM Exercises e WHERE e.muscle = ?1")
@NamedQuery(name = "Exercises.byName" , query = "SELECT e FROM Exercises e WHERE e.name LIKE ?1")
public class Exercises {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "id")
    private int id;
    @Basic
    @Column(name = "name")
    private String name;
    @Basic
    @Column(name = "muscle")
    private String muscle;
    @Basic
    @Column(name = "description")
    private String description;
    @Basic
    @Column(name = "link")
    private String link;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMuscle() {
        return muscle;
    }

    public void setMuscle(String muscle) {
        this.muscle = muscle;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Exercises exercises = (Exercises) o;

        if (id != exercises.id) return false;
        if (name != null ? !name.equals(exercises.name) : exercises.name != null) return false;
        if (muscle != null ? !muscle.equals(exercises.muscle) : exercises.muscle != null) return false;
        if (description != null ? !description.equals(exercises.description) : exercises.description != null)
            return false;
        if (link != null ? !link.equals(exercises.link) : exercises.link != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (muscle != null ? muscle.hashCode() : 0);
        result = 31 * result + (description != null ? description.hashCode() : 0);
        result = 31 * result + (link != null ? link.hashCode() : 0);
        return result;
    }
}
