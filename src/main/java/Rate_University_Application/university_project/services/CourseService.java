package Rate_University_Application.university_project.services;

import Rate_University_Application.university_project.models.Course;
import Rate_University_Application.university_project.models.Student;
import Rate_University_Application.university_project.models.StudentCourse;
import Rate_University_Application.university_project.models.StudentCourseId;
import Rate_University_Application.university_project.repositories.CourseRepository;
import Rate_University_Application.university_project.repositories.StudentCourseRepository;
import Rate_University_Application.university_project.repositories.StudentRepository;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;


@Service
public class CourseService {
    @Autowired
    private CourseRepository courseRepo;
    @Autowired
    private StudentRepository studentRepo;
    @Autowired
    private StudentCourseRepository studentCourseRepository;

    @Autowired
    public CourseService() {
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

    //isStudentEnrolled method to check if a student is enrolled in a given course
    // Assuming your Course entity has a mapping to students enrolled in that course
    public boolean isStudentEnrolled(Long courseId, Long studentId) {
        Course course = courseRepo.findById(courseId).orElse(null);

        if (course != null) {
            List<StudentCourse> enrolledStudentCourses = course.getEnrolledStudents();

            boolean isEnrolled = enrolledStudentCourses.stream()
                    .anyMatch(studentCourse -> studentCourse.getId().getStudentId().equals(studentId));
            return isEnrolled;
        }
        return false;
    }



    // Method to enroll a student in a course

    public void enrollStudentInCourse(Long courseId, Long studentId) {
        // Fetch the course and student entities from their repositories
        Course course = courseRepo.findById(courseId).orElse(null);
        Student student = studentRepo.findById(studentId).orElse(null);

        if (course != null && student != null) {
            // Create a new StudentCourse entity for the enrollment
            StudentCourse studentCourse = new StudentCourse();
            StudentCourseId studentCourseId = new StudentCourseId(student.getId(), course.getId());

            // Set the properties for the StudentCourse entity
            studentCourse.setId(studentCourseId);
            studentCourse.setStudent(student);
            studentCourse.setCourse(course);
            studentCourse.setEnrollmentDate(new Date()); // Set the enrollment date

            // Save the StudentCourse entity to the database
            studentCourseRepository.save(studentCourse);
        }
    }

    //method to dropStudentFromCourse
public void dropStudentFromCourse(Long courseId, Long studentId) {
        // Fetch the course and student entities from their repositories
        Course course = courseRepo.findById(courseId).orElse(null);
        Student student = studentRepo.findById(studentId).orElse(null);

        if (course != null && student != null) {
            // Create a new StudentCourse entity for the enrollment
            StudentCourse studentCourse = new StudentCourse();
            StudentCourseId studentCourseId = new StudentCourseId(student.getId(), course.getId());

            // Set the properties for the StudentCourse entity
            studentCourse.setId(studentCourseId);
            studentCourse.setStudent(student);
            studentCourse.setCourse(course);
            studentCourse.setEnrollmentDate(new Date()); // Set the enrollment date

            // Save the StudentCourse entity to the database
            studentCourseRepository.delete(studentCourse);
        }
    }
    //fetch me the findTop8ByOrderByAverageDesc
    public List<Course> getTop8Courses() {
        return courseRepo.findTop8ByOrderByAverageDesc();
    }

    //save the average of a given course
    @Transactional
    public void saveAverage(double average, Long id) {
        courseRepo.updateAverage(average, id);
    }

}
