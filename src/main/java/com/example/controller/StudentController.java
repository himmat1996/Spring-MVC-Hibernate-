package com.example.controller;

import com.example.request.Student;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StudentController {
    @RequestMapping("/studentForm")
    public String showForm(Model model) {
        Student student = new Student();
        model.addAttribute("student",student);
        return "studentform";
    }

    // need a controller method to process the HTML form

    @RequestMapping("/studentProcessForm")
    public String processForm(@ModelAttribute("student") Student student) {
        return "studentshow";
    }

}
