package Rate_University_Application.university_project.models;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

import java.util.Date;

public class StudentCourseTest {

    @Test
    void testGetId() {
        StudentCourseId studentCourseId = new StudentCourseId(1L, 2L);
        StudentCourse studentCourse = new StudentCourse();
        studentCourse.setId(studentCourseId);
        assertEquals(studentCourseId, studentCourse.getId());
    }

    @Test
    void testSetId() {
        StudentCourseId studentCourseId = new StudentCourseId(1L, 2L);
        StudentCourse studentCourse = new StudentCourse();
        studentCourse.setId(studentCourseId);
        assertEquals(studentCourseId, studentCourse.getId());
    }

    @Test
    void testGetStudent() {
        Student student = new Student();
        StudentCourse studentCourse = new StudentCourse();
        studentCourse.setStudent(student);
        assertEquals(student, studentCourse.getStudent());
    }

    @Test
    void testSetStudent() {
        Student student = new Student();
        StudentCourse studentCourse = new StudentCourse();
        studentCourse.setStudent(student);
        assertEquals(student, studentCourse.getStudent());
    }

    @Test
    void testGetCourse() {
        Course course = new Course();
        StudentCourse studentCourse = new StudentCourse();
        studentCourse.setCourse(course);
        assertEquals(course, studentCourse.getCourse());
    }

    @Test
    void testSetCourse() {
        Course course = new Course();
        StudentCourse studentCourse = new StudentCourse();
        studentCourse.setCourse(course);
        assertEquals(course, studentCourse.getCourse());
    }

    @Test
    void testGetEnrollmentDate() {
        Date enrollmentDate = new Date();
        StudentCourse studentCourse = new StudentCourse();
        studentCourse.setEnrollmentDate(enrollmentDate);
        assertEquals(enrollmentDate, studentCourse.getEnrollmentDate());
    }

    @Test
    void testSetEnrollmentDate() {
        Date enrollmentDate = new Date();
        StudentCourse studentCourse = new StudentCourse();
        studentCourse.setEnrollmentDate(enrollmentDate);
        assertEquals(enrollmentDate, studentCourse.getEnrollmentDate());
    }
}
