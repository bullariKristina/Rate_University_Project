package Rate_University_Application.university_project.models;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class LoginStudentTest {

    @Test
    void testGetEmail() {
        LoginStudent loginStudent = new LoginStudent();
        loginStudent.setEmail("test@example.com");
        assertEquals("test@example.com", loginStudent.getEmail());
    }

    @Test
    void testSetEmail() {
        LoginStudent loginStudent = new LoginStudent();
        loginStudent.setEmail("test@example.com");
        assertEquals("test@example.com", loginStudent.getEmail());
    }

    @Test
    void testGetPassword() {
        LoginStudent loginStudent = new LoginStudent();
        loginStudent.setPassword("password123");
        assertEquals("password123", loginStudent.getPassword());
    }

    @Test
    void testSetPassword() {
        LoginStudent loginStudent = new LoginStudent();
        loginStudent.setPassword("password123");
        assertEquals("password123", loginStudent.getPassword());
    }

    @Test
    void testEmptyConstructor() {
        LoginStudent loginStudent = new LoginStudent();
        assertNotNull(loginStudent);
    }

    @Test
    void testNotEmptyEmailValidation() {
        LoginStudent loginStudent = new LoginStudent();
        loginStudent.setEmail("");
        // Assuming you have validation logic that sets a message for an empty email
        assertEquals("Email is required!", "Your validation message here");
    }

    @Test
    void testValidEmailValidation() {
        LoginStudent loginStudent = new LoginStudent();
        loginStudent.setEmail("invalidemail");
        // Assuming you have validation logic that sets a message for an invalid email
        assertEquals("Please enter a valid email!", "Your validation message here");
    }

    @Test
    void testNotEmptyPasswordValidation() {
        LoginStudent loginStudent = new LoginStudent();
        loginStudent.setPassword("");
        // Assuming you have validation logic that sets a message for an empty password
        assertEquals("Password is required!", "Your validation message here");
    }
}
