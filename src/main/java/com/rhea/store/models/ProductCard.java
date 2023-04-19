package com.rhea.store.models;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class ProductCard {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String productCardTitle, productCardCategory;
    private int productCardPrice;

    public ProductCard() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getProductCardTitle() {
        return productCardTitle;
    }

    public void setProductCardTitle(String productCardTitle) {
        this.productCardTitle = productCardTitle;
    }

    public String getProductCardCategory() {
        return productCardCategory;
    }

    public void setProductCardCategory(String productCardCategory) {
        this.productCardCategory = productCardCategory;
    }

    public int getProductCardPrice() {
        return productCardPrice;
    }

    public void setProductCardPrice(int productCardPrice) {
        this.productCardPrice = productCardPrice;
    }
}
