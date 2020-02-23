package com.ddd.controller;

import com.ddd.model.User;
import com.ddd.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class UserController {

        @Autowired
        private UserService userService;

    @PostMapping("login.do")
    @ResponseBody
    public String login(Model model, User user) {
            List<User> userList =userService.selectUserByName(user.getName());

        if(userList.size()==0)
        {
            return "2";
        }
        if (!userList.get(0).getPassword().equals(user.getPassword())){
            return "1";
        }

        return "0";

    }

    @GetMapping("index.do")
    public String index(){
        return "index";
    }

}
