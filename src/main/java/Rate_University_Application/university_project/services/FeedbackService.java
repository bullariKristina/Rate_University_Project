package Rate_University_Application.university_project.services;

import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Optional;

import Rate_University_Application.university_project.models.Feedback;
import Rate_University_Application.university_project.models.Course;
import Rate_University_Application.university_project.models.Student;
import Rate_University_Application.university_project.repositories.FeedbackRepository;
import org.springframework.beans.factory.annotation.Autowired;

@Service
public class FeedbackService {

    private final FeedbackRepository feedbackRepository;

    @Autowired // If not using constructor injection
    public FeedbackService(FeedbackRepository feedbackRepository) {
        this.feedbackRepository = feedbackRepository;
    }

    public Feedback updateFeedback(Long id, Feedback updatedFeedback) {
        try {
            Optional<Feedback> existingFeedbackOptional = feedbackRepository.findById(id);
            if (existingFeedbackOptional.isPresent()) {
                Feedback existingFeedback = existingFeedbackOptional.get();

                // Update fields with the new values
                existingFeedback.setStudent(updatedFeedback.getStudent());
                existingFeedback.setCourse(updatedFeedback.getCourse());
                existingFeedback.setDescription(updatedFeedback.getDescription());
                existingFeedback.setRating(updatedFeedback.getRating());

                // Set updatedAt timestamp
                existingFeedback.setUpdatedAt(new Date());

                return feedbackRepository.save(existingFeedback);
            } else {
                throw new NoSuchElementException("Feedback with id " + id + " not found");
            }
        } catch (Exception e) {
            // Handle specific exceptions (e.g., DataAccessException, etc.) if needed
            throw new RuntimeException("Error while updating feedback: " + e.getMessage());
        }
    }

    public void deleteFeedback(Long id) {
        try {
            if (feedbackRepository.existsById(id)) {
                feedbackRepository.deleteById(id);
            } else {
                throw new NoSuchElementException("Feedback with id " + id + " not found");
            }
        } catch (Exception e) {
            // Handle specific exceptions (e.g., DataAccessException, etc.) if needed
            throw new RuntimeException("Error while deleting feedback: " + e.getMessage());
        }
    }
    //return all feedbacks of a course
    public List<Feedback> getFeedbacksByCourse(Course course) {
        return feedbackRepository.findByCourse(course);
    }

    //validate the feedback so that a student can only give one feedback for a course
    public boolean validateFeedback(Student student, Course course) {
        List<Feedback> feedbacks = feedbackRepository.findByStudent(student);
        for (Feedback feedback : feedbacks) {
            if (feedback.getCourse().getId() == course.getId()) {
                return false;
            }
        }
        return true;
    }


}
