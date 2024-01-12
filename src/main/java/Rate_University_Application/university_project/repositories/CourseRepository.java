package Rate_University_Application.university_project.repositories;

import Rate_University_Application.university_project.models.Course;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;


public interface CourseRepository extends CrudRepository<Course, Long> {

    List<Course> findAll();
    Optional<Course> findById(Long id);
    //method to update the course
    @Query("SELECT c FROM Course c ORDER BY c.average DESC LIMIT 8")
    List<Course> findTop8ByOrderByAverageDesc();

    //method to update the average of a given course
    @Modifying
    @Query("UPDATE Course c SET c.average = :average WHERE c.id = :id")
    void updateAverage(@Param("average") double average, @Param("id") Long id);
}

