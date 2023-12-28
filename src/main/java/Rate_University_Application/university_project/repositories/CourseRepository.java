package Rate_University_Application.university_project.repositories;

import Rate_University_Application.university_project.models.Course;
import jakarta.persistence.metamodel.SingularAttribute;
import org.springframework.data.jpa.domain.AbstractPersistable;
import org.springframework.data.repository.CrudRepository;

import java.io.Serializable;
import java.util.List;
import java.util.Optional;

public interface CourseRepository extends CrudRepository<Course, Long> {

    List<Course> findAll();
    Optional<Course> findById(Long id);
}
