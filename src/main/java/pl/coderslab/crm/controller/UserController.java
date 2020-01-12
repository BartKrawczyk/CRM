package pl.coderslab.crm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.crm.model.User;
import pl.coderslab.crm.repository.UserRepository;

import javax.validation.Valid;

@Controller
@RequestMapping
public class UserController {

    private final UserRepository userRepository;

    public UserController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @GetMapping("/users")
    public String allUsers(Model model) {
        model.addAttribute("users", userRepository.findAll());
        return "users";
    }

    @GetMapping("/addUser")
    public String initForm(Model model) {
        model.addAttribute("user", new User());
        return "addUser";
    }

    @PostMapping("/addUser")
    public String postForm(@Valid User user, BindingResult result) {
        if (result.hasErrors()) {
            return "addUser";
        }
       userRepository.save(user);
        return "redirect:users";
    }
}
