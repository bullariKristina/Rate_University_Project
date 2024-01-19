package Rate_University_Application.university_project.models;

import static org.junit.jupiter.api.Assertions.*;

class CourseTest {
@org.junit.jupiter.api.Test
void testConstructor() {
    Course course = new Course("Java", "Java course", "John Doe", "London", 10);
    assertEquals("Java", course.getName());
    assertEquals("Java course", course.getDescription());
    assertEquals("John Doe", course.getLecturer());
    assertEquals("London", course.getLocation());
    assertEquals(10, course.getDuration());
}

    @org.junit.jupiter.api.Test
    void testGettersAndSetters() {
        Course course = new Course();
        course.setName("Java");
        course.setDescription("Java course");
        course.setLecturer("John Doe");
        course.setLocation("London");
        course.setDuration(10);

        assertEquals("Java", course.getName());
        assertEquals("Java course", course.getDescription());
        assertEquals("John Doe", course.getLecturer());
        assertEquals("London", course.getLocation());
        assertEquals(10, course.getDuration());
    }


}