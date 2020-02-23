package com.ddd.service;

import com.ddd.dao.UserDao;
import com.ddd.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class UserService {

    @Autowired
    private UserDao userDao;

    public List<User> selectUser() {

        return userDao.selectUser();

    }

    public List<User> selectUserByName(String name) {

        return userDao.selectUserByName(name);
    }


}
