package com.murashovs.pajer.repository;

import com.murashovs.pajer.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
//    User findByUserName(String username);
    User findByUsername(String username);
}
