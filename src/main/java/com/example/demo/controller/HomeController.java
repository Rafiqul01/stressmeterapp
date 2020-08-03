package com.example.demo.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Controller
public class HomeController {

    @GetMapping({"/","/home"})
    public String getHome(
            HttpServletRequest request,
            Model model) {
        HttpSession session = request.getSession();

        System.out.println("visited home...");

        return "home";
    }
}
