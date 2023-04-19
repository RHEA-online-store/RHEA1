package com.rhea.store.Controllers;

import com.rhea.store.models.ProductCard;
import com.rhea.store.repos.ProductCardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class StoreController {

    @Autowired
    //Переменная ссылается на реппозиторий
    private ProductCardRepository productCardRepository;

    @GetMapping("/store")
    public String storeMain(Model model) {
        //Объект со всеми значениями из таблицы
        Iterable<ProductCard> productCards = productCardRepository.findAll();
        //Передача всех карт товаров в шаблон
        model.addAttribute("productCards", productCards);
        return "store-main";
    }
}


