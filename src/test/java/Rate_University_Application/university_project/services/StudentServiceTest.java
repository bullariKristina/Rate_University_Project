package Rate_University_Application.university_project.services;

import Rate_University_Application.university_project.models.Student;
import Rate_University_Application.university_project.repositories.StudentRepository;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.BeforeEach;
import org.mindrot.jbcrypt.BCrypt;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.validation.BindingResult;

import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

class StudentServiceTest {

    @Mock
    private StudentRepository studentRepository;

    @InjectMocks
    private StudentService studentService;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    void testRegisterWithEmailTaken() {
        Student newStudent = new Student();
        newStudent.setEmail("existing@example.com");
        newStudent.setPassword("password");
        newStudent.setConfirm("password");

        BindingResult result = mock(BindingResult.class);
        when(studentRepository.findByEmail("existing@example.com")).thenReturn(Optional.of(new Student()));

        assertNull(studentService.register(newStudent, result));
        verify(result).rejectValue("email", "EmailTaken", "Email address is already in use.");
    }

    @Test
    void testRegisterWithPasswordMismatch() {
        Student newStudent = new Student();
        newStudent.setEmail("new@example.com");
        newStudent.setPassword("password");
        newStudent.setConfirm("differentPassword");

        BindingResult result = mock(BindingResult.class);

        assertNull(studentService.register(newStudent, result));
        verify(result).rejectValue("confirm", "Matches", "The Confirm Password must match Password!");
    }

    @Test
    void testRegisterSuccess() {
        Student newStudent = new Student();
        newStudent.setEmail("new@example.com");
        newStudent.setPassword("password");
        newStudent.setConfirm("password");

        BindingResult result = mock(BindingResult.class);

        when(studentRepository.findByEmail("new@example.com")).thenReturn(Optional.empty());
        when(studentRepository.save(any(Student.class))).thenReturn(newStudent);

        Student registeredStudent = studentService.register(newStudent, result);

        assertNotNull(registeredStudent);
        assertEquals("new@example.com", registeredStudent.getEmail());
        verify(result, never()).reject(anyString());
    }

    @Test
    void testLoginWithEmailNotFound() {
        Student loginStudent = new Student();
        loginStudent.setEmail("nonexistent@example.com");
        loginStudent.setPassword("password");

        BindingResult result = mock(BindingResult.class);
        when(studentRepository.findByEmail("nonexistent@example.com")).thenReturn(Optional.empty());

        assertNull(studentService.login(loginStudent, result));
        verify(result).rejectValue("email", "EmailNotFound", "No user found with that Email address.");
    }

    @Test
    void testLoginWithInvalidPassword() {
        Student existingStudent = new Student();
        existingStudent.setEmail("existing@example.com");
        existingStudent.setPassword("correctPassword");

        Student loginStudent = new Student();
        loginStudent.setEmail("existing@example.com");
        loginStudent.setPassword("incorrectPassword");

        BindingResult result = mock(BindingResult.class);
        when(studentRepository.findByEmail("existing@example.com")).thenReturn(Optional.of(existingStudent));

        assertNull(studentService.login(loginStudent, result));
        verify(result).rejectValue("password", "Matches", "Invalid Password!");
    }

    @Test
    void testLoginSuccess() {
        Student existingStudent = new Student();
        existingStudent.setEmail("existing@example.com");
        existingStudent.setPassword(BCrypt.hashpw("correctPassword", BCrypt.gensalt()));

        Student loginStudent = new Student();
        loginStudent.setEmail("existing@example.com");
        loginStudent.setPassword("correctPassword");

        BindingResult result = mock(BindingResult.class);
        when(studentRepository.findByEmail("existing@example.com")).thenReturn(Optional.of(existingStudent));

        Student loggedInStudent = studentService.login(loginStudent, result);

        assertNotNull(loggedInStudent);
        assertEquals("existing@example.com", loggedInStudent.getEmail());
        verify(result, never()).reject(anyString());
    }
}
