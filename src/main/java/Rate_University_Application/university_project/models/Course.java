package Rate_University_Application.university_project.models;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Size;

import java.util.List;
import java.util.Set;

@Entity
@Table(name = "courses")
public class Course {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotEmpty(message = "Name is required!")
    @Size(min = 3, max = 30, message = "Name must be between 3 and 30 characters")
    private String name;

    @NotEmpty
    @Column(length = 1000)
    private String description;
    private String lecturer;

    private String location;

    @NotEmpty
    private int duration; //duration of the course in weeks

    //Enrolled students in the course
    @OneToMany(mappedBy = "course")
    private List<StudentCourse> enrolledStudents;
    @OneToMany(mappedBy = "course")
    Set<Feedback> feedbacks;



    public Course() {
    }

    public Course(String name, String description, String lecturer, String location, int duration) {
        this.name = name;
        this.description = description;
        this.lecturer = lecturer;
        this.location = location;
        this.duration = duration;
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }

    public String getLecturer() {
        return lecturer;
    }

    public String getLocation() {
        return location;
    }

    public int getDuration() {
        return duration;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setLecturer(String lecturer) {
        this.lecturer = lecturer;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    //method to calculate average rating of a course
    public double calculateAverageRating() {
        if (feedbacks == null || feedbacks.isEmpty()) {
            return 0.0; // Return 0 if no feedbacks are available
        }

        double totalRating = 0.0;
        int count = 0;
        for (Feedback feedback : feedbacks) {
            totalRating += feedback.getRating();
            count++;
        }
        return totalRating / count;
    }

    // Calculate number of registered students for the course
    public int getRegisteredStudentsNum() {
        if (enrolledStudents == null) {
            return 0; // Return 0 if no enrolledStudents list is available
        }

        return enrolledStudents.size();
    }
    //method to get all students enrolled in a course
    public List<StudentCourse> getEnrolledStudents() {
        return enrolledStudents;
    }
}
