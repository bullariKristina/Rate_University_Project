package Rate_University_Application.university_project.services;

import Rate_University_Application.university_project.models.Course;
import Rate_University_Application.university_project.repositories.CourseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class CourseService {
    @Autowired
    private CourseRepository courseRepo;

    @Autowired
    public CourseService(CourseRepository courseRepo) {
        this.courseRepo = courseRepo;
    }

    //list of all courses
    public List<Course> getAllCourses() {
        return courseRepo.findAll();
    }

    //Return a course by id

    public Course getCourseById(Long id) {
    	Optional<Course> course = courseRepo.findById(id);
    	if(course.isPresent()) {
            return course.get();
        } else {
            return null;
        }
    }
    // Search courses by name
    public List<Course> searchCoursesByName(String searchKeyword) {
        List<Course> allCourses = courseRepo.findAll();

        // Filter courses by name containing the search keyword (case insensitive)
        return allCourses.stream()
                .filter(course -> course.getName().toLowerCase().contains(searchKeyword.toLowerCase()))
                .collect(Collectors.toList());
    }



}
