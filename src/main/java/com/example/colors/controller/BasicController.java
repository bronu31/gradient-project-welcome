package com.example.colors.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BasicController {

    @GetMapping(value = {"","/"})
    public String welcomePage(){return "/welcome";}


}

