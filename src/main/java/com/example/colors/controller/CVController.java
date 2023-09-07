package com.example.colors.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CVController {

    @GetMapping(value = "/cv/main")
    public String mainPage(){

        return "main_cv";
    }
}
