package Rate_University_Application.university_project.models;

import static org.junit.jupiter.api.Assertions.*;

class StudentTest {
    @org.junit.jupiter.api.Test
    void testConstructor() {
        Student student = new Student("John", "Doe", "janedoe@gmail.com", "password", "password");
        assertEquals("John", student.getFirstName());
        assertEquals("Doe", student.getLastName());
    }
    @org.junit.jupiter.api.Test
    void testGettersAndSetters() {
        Student student = new Student();
        student.setFirstName("John");
        student.setLastName("Doe");
        student.setEmail("janedoe@gmail.com");
        student.setPassword("password");
        student.setConfirm("password");

        assertEquals("John", student.getFirstName());
        assertEquals("Doe", student.getLastName());

    }





    }