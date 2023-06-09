/*package com.rhea.store.util;

import com.rhea.store.entity.Product;
import com.rhea.store.service.ProductService;
import com.rhea.store.entity.OrderItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Component;
import org.springframework.web.context.WebApplicationContext;

import javax.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.List;

@Component
@Scope(value = WebApplicationContext.SCOPE_SESSION, proxyMode = ScopedProxyMode.TARGET_CLASS)
public class ShoppingCart {

    private List<OrderItem> orderItems;

    private ProductService productService;

    public List<OrderItem> getOrderItems() {
        return orderItems;
    }

    @Autowired
    public void setProductService(ProductService productService) {
        this.productService = productService;
    }

    @PostConstruct
    public void init() {
        orderItems = new ArrayList<>();
    }

    public void addProductById(Long id) {
        Product product = productService.getProductById(id);
        OrderItem orderItem = new OrderItem();
        orderItem.setProduct(product);
        orderItems.add(orderItem);
    }
}
*/