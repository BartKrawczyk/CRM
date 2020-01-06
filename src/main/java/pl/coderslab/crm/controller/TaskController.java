package pl.coderslab.crm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.crm.model.Project;
import pl.coderslab.crm.model.Task;
import pl.coderslab.crm.model.User;
import pl.coderslab.crm.repository.ProjectRepository;
import pl.coderslab.crm.repository.TaskRepository;
import pl.coderslab.crm.repository.UserRepository;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping
public class TaskController {

    private final TaskRepository taskRepository;
    private final UserRepository userRepository;
    private final ProjectRepository projectRepository;

    public TaskController(TaskRepository taskRepository, UserRepository userRepository, ProjectRepository projectRepository) {
        this.taskRepository = taskRepository;
        this.userRepository = userRepository;
        this.projectRepository = projectRepository;
    }

    @GetMapping("/addTask")
    public String initForm(@RequestParam Long projectId, Model model) {
        Project project = projectRepository.findById(projectId).orElseThrow();
        model.addAttribute("project", project);
        model.addAttribute("projectUsers", projectRepository.findUsersByProjectId(projectId));
        Task task = new Task();
        task.setProject(project);
        model.addAttribute("task", task);
        return "addTask";
    }

    @PostMapping("/addTask")
    public String postForm(@Valid Task task, BindingResult result) {
        if (result.hasErrors()) {
            return "addTask";
        }
        taskRepository.save(task);
        Long projectId = task.getProject().getId();
        return "redirect:/tasks?id="+projectId;
    }

    @GetMapping("/tasks")
    public String tasks(@RequestParam Long id, Model model) {
        model.addAttribute("tasks", taskRepository.findByProjectId(id));
        model.addAttribute("thisProject", projectRepository.findById(id).orElseThrow());
        return "tasks";
    }

    @ModelAttribute("activeProjects")
    public List<Project> activeProject() {
        return projectRepository.findActiveProjects();
    }

}
