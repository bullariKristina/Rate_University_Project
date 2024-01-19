package Rate_University_Application.university_project.services;

import Rate_University_Application.university_project.models.Course;
import Rate_University_Application.university_project.repositories.CourseRepository;
import Rate_University_Application.university_project.repositories.StudentCourseRepository;
import Rate_University_Application.university_project.repositories.StudentRepository;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

@SpringBootTest
class CourseServiceTest {

    @Mock
    private CourseRepository courseRepo;

    @Mock
    private StudentRepository studentRepo;

    @Mock
    private StudentCourseRepository studentCourseRepository;

    @InjectMocks
    private CourseService courseService;

    @Test
    void testConstructor() {
        assertNotNull(courseService);
    }

    @Test
    void testGetAllCourses() {
        // Mocking the behavior of the course repository
        List<Course> mockCourses = new ArrayList<>();
        when(courseRepo.findAll()).thenReturn(mockCourses);

        List<Course> result = courseService.getAllCourses();

        assertEquals(mockCourses, result);
    }

    @Test
    void testGetCourseById() {
        Long courseId = 1L;
        Course mockCourse = new Course();
        when(courseRepo.findById(courseId)).thenReturn(Optional.of(mockCourse));

        Course result = courseService.getCourseById(courseId);

        assertEquals(mockCourse, result);
    }

    @Test
    void testSearchCoursesByName() {
        String searchKeyword = "Computer Science";
        List<Course> mockCourses = new ArrayList<>();
        when(courseRepo.findAll()).thenReturn(mockCourses);

        List<Course> result = courseService.searchCoursesByName(searchKeyword);

        assertNotNull(result);
    }



}
