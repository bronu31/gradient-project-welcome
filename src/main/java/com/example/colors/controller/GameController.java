package com.example.colors.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class GameController {

    @GetMapping(value = "/game/main")
    public String mainPage(){

        return "main_game";
    }

}
