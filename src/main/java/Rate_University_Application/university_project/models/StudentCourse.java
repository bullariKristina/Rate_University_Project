package Rate_University_Application.university_project.models;

import jakarta.persistence.*;

import java.util.Date;

@Entity
@Table(name = "student_courses")
public class StudentCourse {

    @EmbeddedId
    private StudentCourseId id;

    @ManyToOne
    @MapsId("studentId")
    @JoinColumn(name = "student_id")
    private Student student;

    @ManyToOne
    @MapsId("courseId")
    @JoinColumn(name = "course_id")
    private Course course;

    private Date enrollmentDate;

    // Other columns related to enrollment

    // Getters and setters
}

