package Rate_University_Application.university_project.controllers;
import Rate_University_Application.university_project.models.Course;
import Rate_University_Application.university_project.models.LoginStudent;
import Rate_University_Application.university_project.models.Student;
import Rate_University_Application.university_project.services.CourseService;
import Rate_University_Application.university_project.services.StudentService;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.*;

@Controller
public class HomeController {
    @Autowired
    private StudentService studentServ;
    @Autowired
    private CourseService courseServ;


    public HomeController(StudentService studentServ, CourseService courseServ) {
        this.studentServ = studentServ;
        this.courseServ = courseServ;
    }

    @GetMapping("/")
    public String index(Model model, @ModelAttribute("newStudent") Student newStudent,
                        @ModelAttribute("newLogin") Student newLogin, HttpSession session) {
        Long loggedInUserID = (Long) session.getAttribute("loggedInUserID");

        if (loggedInUserID != null) {

            return "redirect:/dashboard";
        }

        // Bind empty User and LoginUser objects to the JSP
        // to capture the form input
        model.addAttribute("newStudent", new Student());
        model.addAttribute("newLogin", new LoginStudent());
        return "signup.jsp";
    }

    @PostMapping("/register")
    public String register(@Valid @ModelAttribute("newStudent") Student newStudent, BindingResult result, Model model,
                           HttpSession session) {

        // TO-DO Later -- call a register method in the service
        studentServ.register(newStudent, result);
        // to do some extra validations and create a new user!

        if (result.hasErrors()) {
            // Be sure to send in the empty LoginUser before
            // re-rendering the page.
            model.addAttribute("newLogin", new LoginStudent());
            return "signup.jsp";
        }

        // No errors!
        // Storing their ID from the DB in session, so the user is logged In and can access the dashboard
        session.setAttribute("loggedInUserID", newStudent.getId());
        return "redirect:/dashboard";
    }

    @PostMapping("/login")
    public String login(@Valid @ModelAttribute("newLogin") LoginStudent newLogin, BindingResult result, Model model,
                        HttpSession session) {

        // Add once service is implemented:
        Student student = studentServ.login(newLogin, result);

        if (result.hasErrors()) {
            model.addAttribute("newUser", new Student());
            return "signup.jsp";
        }

        // No errors!
        // Storing their ID in session to log them in.
        session.setAttribute("loggedInUserID", student.getId());
        return "redirect:/dashboard";
    }

    @RequestMapping("/dashboard")
    public String dashboard(HttpSession session, Model model) {

        Long loggedInUserID = (Long) session.getAttribute("loggedInUserID");

        if (loggedInUserID == null) {

            return "redirect:/";
        }

        Student loggedInStudent = studentServ.findOneUser(loggedInUserID);

        model.addAttribute("user", loggedInStudent);

        List<Course> allCourses = courseServ.getAllCourses();
        model.addAttribute("courses", allCourses);

        return "dashboard.jsp";

    }
//   @GetMapping("/search")
//public String searchCourses(@RequestParam("searchKeyword") String searchKeyword, Model model, HttpSession session) {
//    Long loggedInUserID = (Long) session.getAttribute("loggedInUserID");
//
//    if (loggedInUserID == null) {
//        return "redirect:/";
//    }
//
//    Student loggedInStudent = studentServ.findOneUser(loggedInUserID);
//    model.addAttribute("user", loggedInStudent);
//
//    List<Course> searchResults = courseServ.searchCoursesByName(searchKeyword);
//    model.addAttribute("courses", searchResults);
//    return "searchResults.jsp"; // Create a JSP page to display search results
//}

    @RequestMapping("/course/{id}")
    public String course(HttpSession session, Model model, @PathVariable Long id) {

        Long loggedInUserID = (Long) session.getAttribute("loggedInUserID");

        if (loggedInUserID == null) {

            return "redirect:/";
        }
        Student loggedInStudent = studentServ.findOneUser(loggedInUserID);

        model.addAttribute("user", loggedInStudent);

        //get one course with the provided id
        Course course = courseServ.getCourseById(id);
        model.addAttribute("course", course);

        return "course.jsp";

    }


    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/";
    }



}
