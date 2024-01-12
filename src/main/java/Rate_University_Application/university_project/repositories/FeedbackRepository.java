package Rate_University_Application.university_project.repositories;


import Rate_University_Application.university_project.models.Course;
import Rate_University_Application.university_project.models.Feedback;
import Rate_University_Application.university_project.models.Student;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;
import java.util.Optional;


@Repository
public interface FeedbackRepository extends JpaRepository<Feedback, Long> {
    List<Feedback> findByStudent(Student student);

    List<Feedback> findByCourse(Course course);

    @Modifying
    @Query("DELETE FROM Feedback f WHERE f.createdAt < :cutoffDate AND f.id>0")
    void deleteOldFeedbacks(@Param("cutoffDate") Date cutoffDate);
}

