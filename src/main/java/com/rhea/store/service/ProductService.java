package com.rhea.store.service;

import com.rhea.store.entity.Product;
import com.rhea.store.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Service
public class ProductService {

    private ProductRepository productRepository;

    @Autowired
    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    /*@GetMapping
    public String showProducts(@RequestParam(defaultValue = "0") int page, Model model){
        Page<Product> productsPage = produ
    }*/

    public Page<Product> getAllProducts(Pageable pageable) {
        return productRepository.findAll(pageable);
    }

    /*public Page<Product> getProductsPage(Page page){
        return productRepository.;
    }*/

    public Product getProductById(Long id) {
        if (productRepository.findById(id).isPresent()) {
            return productRepository.findById(id).get();
        }
        return null;
    }

    public Product getProductByTitle(String title) {
        return productRepository.findOneByTitle(title);
    }

    public void deleteProductById(Long id) {
        productRepository.deleteById(id);
    }

    // In future releases
    public void addProduct(Product product) {
        productRepository.save(product);
    }

    public List<Product> search(String query) {
        return productRepository.findByTitleContainingIgnoreCase(query);
    }
}
