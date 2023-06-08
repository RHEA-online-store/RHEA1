/*package com.rhea.store.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

    @GetMapping("/login")
    public String showLoginForm() {
        return "login";
    }

    @PostMapping("/login")
    public String processLogin(@RequestParam("username") String username, @RequestParam("password") String password) {
        // проверка наличия пользователя в базе данных и соответствия пароля
        if(username.equals("admin") && password.equals("admin")) {
            return "redirect:/dashboard"; // перенаправление на страницу после успешной авторизации
        } else {
            return "login"; // возврат на страницу логина с сообщением об ошибке
        }
    }

}*/
