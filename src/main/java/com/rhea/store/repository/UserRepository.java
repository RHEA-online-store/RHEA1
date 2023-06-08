package com.rhea.store.repository;

import com.rhea.store.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, String> {

    User findByUsername(String username);

}
/*@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
}*/