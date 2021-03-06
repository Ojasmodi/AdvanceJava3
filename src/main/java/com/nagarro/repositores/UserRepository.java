package com.nagarro.repositores;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.nagarro.models.User;

@Repository
public interface UserRepository extends JpaRepository<User, String>{

}
