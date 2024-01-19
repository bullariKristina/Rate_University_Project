package Rate_University_Application.university_project.services;
import Rate_University_Application.university_project.models.Course;
import Rate_University_Application.university_project.models.Feedback;
import Rate_University_Application.university_project.models.Student;
import Rate_University_Application.university_project.repositories.FeedbackRepository;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;

import java.util.*;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

@DataJpaTest
class FeedbackServiceTest {

    @Mock
    private FeedbackRepository feedbackRepository;

    @InjectMocks
    private FeedbackService feedbackService;

    @Test
    void testUpdateFeedback() {
        Long feedbackId = 1L;
        Feedback existingFeedback = new Feedback();
        existingFeedback.setId(feedbackId);
        existingFeedback.setDescription("Old Description");
        existingFeedback.setRating(4);

        Feedback updatedFeedback = new Feedback();
        updatedFeedback.setDescription("New Description");
        updatedFeedback.setRating(5);

        when(feedbackRepository.findById(feedbackId)).thenReturn(Optional.of(existingFeedback));
        when(feedbackRepository.save(existingFeedback)).thenReturn(existingFeedback);

        Feedback result = feedbackService.updateFeedback(feedbackId, updatedFeedback);

        assertEquals(updatedFeedback.getDescription(), result.getDescription());
        assertEquals(updatedFeedback.getRating(), result.getRating());
        assertNotNull(result.getUpdatedAt());
    }

    @Test
    void testUpdateFeedbackNotFound() {
        Long feedbackId = 1L;
        Feedback updatedFeedback = new Feedback();

        when(feedbackRepository.findById(feedbackId)).thenReturn(Optional.empty());

        assertThrows(NoSuchElementException.class, () -> feedbackService.updateFeedback(feedbackId, updatedFeedback));
    }

    @Test
    void testAddFeedback() {
        Feedback newFeedback = new Feedback();
        newFeedback.setStudent(new Student());
        newFeedback.setCourse(new Course());
        newFeedback.setDescription("Feedback Description");
        newFeedback.setRating(4);

        when(feedbackRepository.findByStudent(newFeedback.getStudent())).thenReturn(new ArrayList<>());
        when(feedbackRepository.save(newFeedback)).thenReturn(newFeedback);

        Feedback result = feedbackService.addFeedback(newFeedback);

        assertNotNull(result.getCreatedAt());
        verify(feedbackRepository).save(newFeedback);
    }

    @Test
    void testAddFeedbackDuplicate() {
        Feedback newFeedback = new Feedback();
        newFeedback.setStudent(new Student());
        newFeedback.setCourse(new Course());

        List<Feedback> existingFeedbacks = new ArrayList<>();
        existingFeedbacks.add(newFeedback);

        when(feedbackRepository.findByStudent(newFeedback.getStudent())).thenReturn(existingFeedbacks);

        assertThrows(IllegalStateException.class, () -> feedbackService.addFeedback(newFeedback));
    }

    @Test
    void testDeleteFeedback() {
        Long feedbackId = 1L;

        when(feedbackRepository.existsById(feedbackId)).thenReturn(true);

        assertDoesNotThrow(() -> feedbackService.deleteFeedback(feedbackId));
        verify(feedbackRepository).deleteById(feedbackId);
    }

    @Test
    void testDeleteFeedbackNotFound() {
        Long feedbackId = 1L;

        when(feedbackRepository.existsById(feedbackId)).thenReturn(false);

        assertThrows(NoSuchElementException.class, () -> feedbackService.deleteFeedback(feedbackId));
    }

    @Test
    void testGetFeedbacksByCourse() {
        Course course = new Course();
        List<Feedback> expectedFeedbacks = new ArrayList<>();

        when(feedbackRepository.findByCourse(course)).thenReturn(expectedFeedbacks);

        List<Feedback> result = feedbackService.getFeedbacksByCourse(course);

        assertSame(expectedFeedbacks, result);
        verify(feedbackRepository).findByCourse(course);
    }

    @Test
    void testValidateFeedback() {
        Student student = new Student();
        Course course = new Course();
        Feedback existingFeedback = new Feedback();
        existingFeedback.setCourse(course);

        when(feedbackRepository.findByStudent(student)).thenReturn(List.of(existingFeedback));

        assertTrue(feedbackService.validateFeedback(student, course));
    }

    @Test
    void testValidateFeedbackDuplicate() {
        Student student = new Student();
        Course course = new Course();
        Feedback existingFeedback = new Feedback();
        existingFeedback.setCourse(course);

        when(feedbackRepository.findByStudent(student)).thenReturn(List.of(existingFeedback, new Feedback()));

        assertFalse(feedbackService.validateFeedback(student, course));
    }

    @Test
    void testValidateFeedbackNoDuplicates() {
        Student student = new Student();
        Course course = new Course();

        when(feedbackRepository.findByStudent(student)).thenReturn(new ArrayList<>());

        assertTrue(feedbackService.validateFeedback(student, course));
    }
}
