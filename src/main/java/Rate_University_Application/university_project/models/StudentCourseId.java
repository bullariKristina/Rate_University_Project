package Rate_University_Application.university_project.models;

import jakarta.persistence.*;
import java.io.Serializable;


@Embeddable
public class StudentCourseId implements Serializable {

    @Column(name = "student_id")
    private Long studentId;

    @Column(name = "course_id")
    private Long courseId;

    // Getters and setters, equals, hashcode methods
}

