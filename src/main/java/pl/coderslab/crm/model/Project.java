package pl.coderslab.crm.model;

import org.hibernate.annotations.CreationTimestamp;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.text.Normalizer;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "projects")
public class Project {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column
    @CreationTimestamp
    @DateTimeFormat(pattern="dd.MM.yyyy hh:mm")
    private LocalDateTime created;

    @Column(nullable = false)
    @NotEmpty
    private String name;

    @Column
    private String description;

    @Column
    private String www;

    @Column
    private String identifier;

    @ManyToMany(fetch = FetchType.LAZY, cascade = {CascadeType.DETACH, CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH})
    @JoinTable(name = "project_user", joinColumns = @JoinColumn(name = "id_project"), inverseJoinColumns = @JoinColumn(name = "id_user"))
    private List<User> users = new ArrayList<>();

    @Column(name = "active")
    private Boolean active;

    @OneToMany(mappedBy = "project")
    private List<Task> tasks = new ArrayList<>();

    @PrePersist
    public void prePersist() {
        identifier = removeDiacritics(this.name);
        identifier = identifier.replace(" ", "-");
    }

    //Static method with Normalizer for removing diacritical marks
    public static String removeDiacritics(String s) {
        s = Normalizer.normalize(s, Normalizer.Form.NFD);
        s = s.replaceAll("[\\p{InCOMBINING_DIACRITICAL_MARKS}]", "");
        return s;
    }

    public void setIdentifier(String identifier) {
        identifier = removeDiacritics(this.name);
        this.identifier = identifier.replace(" ", "-");
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCreated() {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        return created.format(formatter);
    }

    public void setCreated(LocalDateTime created) {
        this.created = created;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getIdentifier() {
        return identifier;
    }

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }

    public Boolean getActive() {
        return active;
    }

    public void setActive(Boolean active) {
        this.active = active;
    }

    public String getWww() {
        return www;
    }

    public void setWww(String www) {
        this.www = www;
    }

}
