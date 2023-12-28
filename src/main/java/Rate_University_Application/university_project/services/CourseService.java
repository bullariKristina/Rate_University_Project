package Rate_University_Application.university_project.services;

import Rate_University_Application.university_project.models.Course;
import Rate_University_Application.university_project.repositories.CourseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class CourseService {
    @Autowired
    private CourseRepository courseRepo;


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

}
