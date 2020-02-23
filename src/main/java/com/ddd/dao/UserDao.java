package com.ddd.dao;

import com.ddd.model.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserDao {

    List<User> selectUser();
    List<User> selectUserByName(String name);

}
