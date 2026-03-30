package com.proj.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.proj.entity.Course;
import com.proj.service.CourseService;

@Controller
public class CourseController {

    @Autowired
    CourseService service;

    @GetMapping("/")
    public String home(Model model) {
        model.addAttribute("courses", service.getCourses());
        return "home";
    }

    @GetMapping("/add")
    public String addPage(Model model) {
        model.addAttribute("course", new Course());
        return "AddCourse";
    }

    @PostMapping("/save")
    public String saveCourse(@ModelAttribute Course course) {
        service.addCourse(course);
        return "redirect:/";
    }

    @GetMapping("/delete")
    public String deleteCourse(@RequestParam int id) {
        service.deleteCourse(id);
        return "redirect:/";
    }

    @GetMapping("/edit")
    public String editCourse(@RequestParam int id, Model model) {
        model.addAttribute("course", service.getCourse(id));
        return "EditCourse";
    }

    @PostMapping("/update")
    public String updateCourse(@ModelAttribute Course course) {
        service.updateCourse(course);
        return "redirect:/";
    }
}