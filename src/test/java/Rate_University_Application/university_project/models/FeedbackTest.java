package Rate_University_Application.university_project.models;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

import jakarta.validation.ConstraintViolation;
import jakarta.validation.Validation;
import jakarta.validation.Validator;
import jakarta.validation.ValidatorFactory;

import java.util.Date;
import java.util.Set;

import static org.junit.jupiter.api.Assertions.*;

class FeedbackTest {

    @Test
    void testFeedbackEntity() {
        Feedback feedback = new Feedback();
        feedback.setDescription("Test Description");
        feedback.setRating(4);

        ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
        Validator validator = factory.getValidator();
        Set<ConstraintViolation<Feedback>> violations = validator.validate(feedback);

        assertTrue(violations.isEmpty(), "There should be no validation violations.");

        assertEquals("Test Description", feedback.getDescription());
        assertEquals(4, feedback.getRating());
        assertNotNull(feedback.getCreatedAt());
        assertNotNull(feedback.getUpdatedAt());
    }

    @Test
    void testPrePersistAndPreUpdate() {
        Feedback feedback = new Feedback();
        assertNull(feedback.getCreatedAt());
        assertNull(feedback.getUpdatedAt());

        // Test PrePersist
        feedback.onCreate();
        assertNotNull(feedback.getCreatedAt());
        assertNotNull(feedback.getUpdatedAt());
        Date createdAt = feedback.getCreatedAt();
        Date updatedAt = feedback.getUpdatedAt();

        // Test PreUpdate
        feedback.onUpdate();
        assertNotEquals(updatedAt, feedback.getUpdatedAt());
        assertEquals(createdAt, feedback.getCreatedAt());
    }

    @Test
    void testRatingConstraints() {
        Feedback feedback = new Feedback();

        // Set a valid rating
        feedback.setRating(3);
        ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
        Validator validator = factory.getValidator();
        Set<ConstraintViolation<Feedback>> violations = validator.validate(feedback);

        assertTrue(violations.isEmpty(), "There should be no validation violations.");

        // Set an invalid rating (less than 1)
        feedback.setRating(0);
        violations = validator.validate(feedback);

        assertFalse(violations.isEmpty(), "There should be validation violations.");
        assertEquals(1, violations.size());
        assertEquals("Rating should not be less than 1", violations.iterator().next().getMessage());

        // Set an invalid rating (greater than 5)
        feedback.setRating(6);
        violations = validator.validate(feedback);

        assertFalse(violations.isEmpty(), "There should be validation violations.");
        assertEquals(1, violations.size());
        assertEquals("Rating should not be greater than 5", violations.iterator().next().getMessage());
    }
}
