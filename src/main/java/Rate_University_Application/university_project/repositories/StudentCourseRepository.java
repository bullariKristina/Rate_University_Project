package Rate_University_Application.university_project.repositories;

import Rate_University_Application.university_project.models.StudentCourse;
import Rate_University_Application.university_project.models.StudentCourseId;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface StudentCourseRepository extends JpaRepository<StudentCourse, StudentCourseId> {

}
