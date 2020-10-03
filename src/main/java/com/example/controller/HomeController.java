package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String showPage() {
        return "main-menu";
    }

    @RequestMapping("/showForm")
    public String showForm() {
        return "form";
    }

    // need a controller method to process the HTML form

    @RequestMapping("/processForm")
    public String processForm() {
        return "show";
    }

    @RequestMapping("/showFormv2")
    public String showFormv2() {
        return "formv2";
    }

    @RequestMapping("/processFormv2")
    public String processFormV2(HttpServletRequest httpServletRequest, Model model){
        String name = httpServletRequest.getParameter("studentName");
        name = name.toUpperCase();
        String result = "Yo! " + name;
        model.addAttribute("message",result);
        return "showv2";
    }

}
