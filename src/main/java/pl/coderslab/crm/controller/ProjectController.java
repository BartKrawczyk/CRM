package pl.coderslab.crm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.crm.model.Project;
import pl.coderslab.crm.model.User;
import pl.coderslab.crm.repository.ProjectRepository;
import pl.coderslab.crm.repository.UserRepository;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping
public class ProjectController {

    private final ProjectRepository projectRepository;
    private final UserRepository userRepository;

    public ProjectController(ProjectRepository projectRepository, UserRepository userRepository) {
        this.projectRepository = projectRepository;
        this.userRepository = userRepository;
    }

    @GetMapping("/addProject")
    public String initForm(Model model) {
        model.addAttribute("project", new Project());
        return "addProject";
    }

    @PostMapping("/addProject")
    public String postForm(@Valid Project project, BindingResult result) {
        if (result.hasErrors()) {
            return "addProject";
        }
        projectRepository.save(project);
        return "redirect:projects";
    }

    @GetMapping("/projects")
    public String allProjects(Model model) {
        model.addAttribute("projects", projectRepository.findAll());
        return "projects";
    }

    @GetMapping("/project/details")
    public String projectDetails(@RequestParam Long id, Model model) {
        model.addAttribute("project", projectRepository.findById(id).orElseThrow()); //findById zwraca optional
        return "project";
    }

    @GetMapping("/project/edit")
    public String editProject(@RequestParam Long id, Model model) {
        model.addAttribute("project", projectRepository.findById(id).orElseThrow());
        return "editProject";
    }

    @PostMapping("/project/edit")
    public String postEdit(@Valid Project project, BindingResult result) {
        if (result.hasErrors()) {
            return "editProject";
        }
        String name = project.getName();
        String description = project.getDescription();
        String identifier = project.setIdentifier(project.getName());
        String www = project.getWww();
        Boolean active = project.getActive();
        Long id = project.getId();
        projectRepository.setProjectDataById(name, description, identifier, www, active, id);
        return "redirect:/projects";
    }


    @ModelAttribute("existingUsers")
    public List<User> users() {
        return userRepository.findAll();
    }

}
