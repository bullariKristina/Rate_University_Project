package Rate_University_Application.university_project.services;

import Rate_University_Application.university_project.models.Student;
import Rate_University_Application.university_project.repositories.StudentRepository;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import java.util.Optional;

@Service
public class StudentService {
    @Autowired
    private StudentRepository userRepo;
    // This method will be called from the controller
    // whenever a user submits a registration form.

    public Student register(Student newStudent, BindingResult result) {

        // TO-DO - Reject values or register if no errors:

        // Reject if email is taken (present in database)

        Optional<Student> potentialUser = this.userRepo.findByEmail(newStudent.getEmail());

        if (potentialUser.isPresent()) {
            result.rejectValue("email", "EmailTaken", "Email address is already in use.");
        }

        // Reject if password doesn't match confirmation

        if (!newStudent.getPassword().equals(newStudent.getConfirm())) {
            result.rejectValue("confirm", "Matches", "The Confirm Password must match Password!");
        }

        // Return null if result has errors

        if (result.hasErrors()) {
            return null;
        }

        // Hash and set password, save user to database

        else {
            String hashed = BCrypt.hashpw(newStudent.getPassword(), BCrypt.gensalt());
            newStudent.setPassword(hashed);
            return userRepo.save(newStudent);
        }

    }

    // This method will be called from the controller
    // whenever a user submits a login form.

    public Student login(Student newLoginObject, BindingResult result) {

        // Find user in the DB by email
        Optional<Student> potentialUser = this.userRepo.findByEmail(newLoginObject.getEmail());
        // Reject if NOT present

        if (!potentialUser.isPresent()) {
            result.rejectValue("email", "EmailNotFound", "No user found with that Email address.");
        } else {

            if (!BCrypt.checkpw(newLoginObject.getPassword(), potentialUser.get().getPassword())) {
                // Reject if BCrypt password match fails
                result.rejectValue("password", "Matches", "Invalid Password!");
            }
        }

        if (result.hasErrors()) {
            // Return null if result has errors
            return null;
        } else {
            // Otherwise, return the user object
            return potentialUser.get();
        }
    }

    public Student findOneUser(Long id) {
        return this.userRepo.findById(id).orElse(null);
    }

}
