package com.example.controller;

import com.example.request.Customer;
import com.example.request.Student;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
public class CustomerController {
    @RequestMapping("/customerForm")
    public String showForm(Model model) {
        model.addAttribute("customer",new Customer());
        return "customerform";
    }

    // @valid --- spring will use for validate customer object
    // BindingResult --- spring will store results of validation in BindingResult Object

    @RequestMapping("/customerProcessForm")
    public String processForm(@Valid @ModelAttribute("customer") Customer customer, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "customerform";
        } else {
            return "customershow";
        }
    }

}
