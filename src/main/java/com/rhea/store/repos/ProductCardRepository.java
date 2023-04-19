package com.rhea.store.repos;

import com.rhea.store.models.ProductCard;
import org.springframework.data.repository.CrudRepository;

public interface ProductCardRepository extends CrudRepository<ProductCard, Long> {
}
