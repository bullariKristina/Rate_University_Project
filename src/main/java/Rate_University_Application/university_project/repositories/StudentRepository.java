package Rate_University_Application.university_project.repositories;

import Rate_University_Application.university_project.models.Student;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import java.util.Optional;

@Repository
public interface StudentRepository extends CrudRepository<Student, Long> {
    Optional<Student> findByEmail(String email);

}
