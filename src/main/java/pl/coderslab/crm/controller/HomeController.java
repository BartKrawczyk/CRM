package pl.coderslab.crm.controller;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.crm.repository.ProjectRepository;

@Controller
@RequestMapping("/")
public class HomeController {

    private ProjectRepository projectRepository;

    public HomeController(ProjectRepository projectRepository) {
        this.projectRepository = projectRepository;
    }

    @GetMapping
    public String homeSite(Model model) {

        Pageable first5 = PageRequest.of(0, 5);
        model.addAttribute("firstFive", projectRepository.findLastFive(first5));
        return "index";
    }
}