package com.rhea.store.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

    @GetMapping("/")
    //Функция обработки URL-адреса главной страницы
    public String home(Model model) {
        model.addAttribute("title", "Главная странца");
        //Вызов html шаблона home
        return "home";
    }

    @GetMapping("/about")
    public String about(Model model) {
        model.addAttribute("title", "Страница о нас");
        return "about";
    }

}