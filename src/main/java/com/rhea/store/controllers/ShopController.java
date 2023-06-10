package com.rhea.store.controllers;

import com.rhea.store.entity.Product;
import com.rhea.store.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ShopController {

    private ProductService productService;

    @Autowired
    public void setProductService(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping("/shop")
    public String toShop(@RequestParam(defaultValue = "0") int page, Model model, Pageable pageable) {
        Page<Product> productsPage = productService.getAllProducts(pageable);
        model.addAttribute("products", productsPage);
        return "shop";
    }


    @GetMapping("/details/{id}")
    public String toDetails(Model model, @PathVariable("id") Long id) {
        Product selectedProduct = productService.getProductById(id);
        model.addAttribute("selectedProduct", selectedProduct);
        return "details";
    }

    @GetMapping("/remove/{id}")
    public String deleteByProductId(@PathVariable("id") Long id) {
        productService.deleteProductById(id);
        return "redirect:/shop";
    }
}
