package Rate_University_Application.university_project.models;

import static org.junit.jupiter.api.Assertions.*;

class StudentCourseIdTest {
    @org.junit.jupiter.api.Test
    void testGettersAndSetters() {
        StudentCourseId studentCourseId = new StudentCourseId();
        studentCourseId.setStudentId(1L);
        studentCourseId.setCourseId(1L);
        assertEquals(1, studentCourseId.getStudentId());
        assertEquals(1, studentCourseId.getCourseId());
    }


}