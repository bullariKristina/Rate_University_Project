package Rate_University_Application.university_project;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import Rate_University_Application.university_project.models.Course;
import Rate_University_Application.university_project.models.Feedback;
import Rate_University_Application.university_project.models.Student;
import Rate_University_Application.university_project.repositories.FeedbackRepository;
import Rate_University_Application.university_project.services.FeedbackService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;



@SpringBootTest
class UniversityProjectApplicationTests {

	@Test
	void contextLoads() {
	}
	@Mock
	private FeedbackRepository feedbackRepository;

	@InjectMocks
	private FeedbackService feedbackService;

	@BeforeEach
	void setUp() {
		MockitoAnnotations.openMocks(this);
	}

	@Test
	void testAddFeedback() {
		// Arrange
		Student student = new Student(); // create a sample student
		Course course = new Course();   // create a sample course
		Feedback newFeedback = new Feedback();
		newFeedback.setStudent(student);
		newFeedback.setCourse(course);
		newFeedback.setDescription("Good course");
		newFeedback.setRating(4);

		// Mock the behavior of the repository
		when(feedbackRepository.findByStudent(student)).thenReturn(new ArrayList<>()); // No existing feedback for the student
		when(feedbackRepository.save(any(Feedback.class))).thenReturn(newFeedback); // Save operation returns the new feedback

		// Act
		Feedback addedFeedback = feedbackService.addFeedback(newFeedback);

		// Assert
		assertNotNull(addedFeedback);
		assertEquals(newFeedback.getDescription(), addedFeedback.getDescription());
		assertEquals(newFeedback.getRating(), addedFeedback.getRating());
		assertNotNull(addedFeedback.getCreatedAt());

		// Verify that the repository's save method was called once
		verify(feedbackRepository, times(1)).save(any(Feedback.class));
	}



}
