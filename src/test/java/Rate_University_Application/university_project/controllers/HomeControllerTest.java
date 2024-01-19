package Rate_University_Application.university_project.controllers;
import Rate_University_Application.university_project.models.Course;
import Rate_University_Application.university_project.models.Feedback;
import Rate_University_Application.university_project.models.Student;
import Rate_University_Application.university_project.services.CourseService;
import Rate_University_Application.university_project.services.StudentService;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.BeforeEach;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;

import jakarta.servlet.http.HttpSession;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

class HomeControllerTest {

    @Mock
    private StudentService studentService;

    @Mock
    private CourseService courseService;

    @InjectMocks
    private HomeController homeController;


    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    void testLogin() {
        Student newLogin = new Student();
        newLogin.setEmail("test@example.com");
        newLogin.setPassword("password");

        BindingResult result = mock(BindingResult.class);
        Model model = mock(Model.class);
        HttpSession session = mock(HttpSession.class);

        Student loggedInStudent = new Student();
        loggedInStudent.setId(1L);
        when(studentService.login(newLogin, result)).thenReturn(loggedInStudent);

        String viewName = homeController.login(newLogin, result, model, session);

        assertEquals("redirect:/dashboard", viewName);
        verify(session).setAttribute("loggedInUserID", loggedInStudent.getId());
    }

    @Test
    void testLoginWithErrors() {
        Student newLogin = new Student();
        newLogin.setEmail("test@example.com");
        newLogin.setPassword("password");

        BindingResult result = mock(BindingResult.class);
        when(result.hasErrors()).thenReturn(true);

        Model model = mock(Model.class);
        HttpSession session = mock(HttpSession.class);

        String viewName = homeController.login(newLogin, result, model, session);

        assertEquals("signup.jsp", viewName);
        verify(model).addAttribute(eq("newStudent"), any(Student.class));
    }

    @Test
    void testEnrollCourse() {
        Long courseId = 1L;
        HttpSession session = mock(HttpSession.class);
        when(session.getAttribute("loggedInUserID")).thenReturn(1L);

        String viewName = homeController.enrollCourse(courseId, session);

        assertEquals("redirect:/course/" + courseId, viewName);
        verify(courseService).enrollStudentInCourse(courseId, 1L);
    }

    @Test
    void testDropCourse() {
        Long courseId = 1L;
        HttpSession session = mock(HttpSession.class);
        when(session.getAttribute("loggedInUserID")).thenReturn(1L);

        String viewName = homeController.dropCourse(courseId, session);

        assertEquals("redirect:/course/" + courseId, viewName);
        verify(courseService).dropStudentFromCourse(courseId, 1L);
    }


    @Test
    void testDashboard() {
        HttpSession session = mock(HttpSession.class);
        Model model = mock(Model.class);

        when(session.getAttribute("loggedInUserID")).thenReturn(1L);
        Student loggedInStudent = new Student();
        loggedInStudent.setId(1L);
        when(studentService.findOneUser(1L)).thenReturn(loggedInStudent);

        String viewName = homeController.dashboard(session, model);

        assertEquals("dashboard.jsp", viewName);
        verify(model).addAttribute("user", loggedInStudent);
        verify(courseService).getAllCourses();
        verify(courseService).getTop8Courses();
    }

    @Test
    void testSearchCourses() {
        HttpSession session = mock(HttpSession.class);
        Model model = mock(Model.class);

        when(session.getAttribute("loggedInUserID")).thenReturn(1L);
        Student loggedInStudent = new Student();
        loggedInStudent.setId(1L);
        when(studentService.findOneUser(1L)).thenReturn(loggedInStudent);

        String viewName = homeController.searchCourses("Math", model, session);

        assertEquals("searchResults.jsp", viewName);
        verify(model).addAttribute("user", loggedInStudent);
        verify(courseService).searchCoursesByName("Math");
    }

    @Test
    void testSubmitFeedback() {
        HttpSession session = mock(HttpSession.class);
        BindingResult result = mock(BindingResult.class);

        when(session.getAttribute("loggedInUserID")).thenReturn(1L);
        Student loggedInStudent = new Student();
        loggedInStudent.setId(1L);
        when(studentService.findOneUser(1L)).thenReturn(loggedInStudent);

        Feedback newFeedback = new Feedback();
        newFeedback.setCourse(new Course()); // Set a course for testing

        String viewName = homeController.submitFeedback(newFeedback, session, result);

        assertEquals("redirect:/course/1", viewName); // Adjust the course ID based on your scenario

    }


}
