package Rate_University_Application.university_project.repositories;

import Rate_University_Application.university_project.models.Course;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface CourseRepository extends CrudRepository<Course, Long> {

    List<Course> findAll();
    Optional<Course> findById(Long id);

}
