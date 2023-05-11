package com.rhea.store.repository;

import com.rhea.store.entity.ProductCard;
import org.springframework.data.repository.CrudRepository;

public interface ProductCardRepository extends CrudRepository<ProductCard, Long> {
}
