package com.ddd.controller;

import com.ddd.model.Manager;
import com.ddd.service.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class ManagerController {

    @Autowired
    private ManagerService managerService;

    /**
     *
     * @return
     */
    @PostMapping("AddM.do")
    @ResponseBody
    public String AddM() {
    return "add";
    }

    /**
     *
     * @param model
     * @return
     */
    @RequestMapping("list.do")
    public String list(Model model) {
        List<Manager> managerList = managerService.selectManager();
        model.addAttribute("managers", managerList);
        return "show";
    }

    /**
     *
     * @param model
     * @param manager
     * @return
     */
    @GetMapping("insertM.do")
    public String insertM(Model model,Manager manager){
        managerService.insertM(manager);
        return "show";
    }

    /**
     *
     * @param model
     * @param request
     * @return
     */
    @RequestMapping("updateM.do")
    public String updateM(Model model, HttpServletRequest request) {
        int mid = Integer.parseInt(request.getParameter("mid"));
        Manager m  = managerService.updateM(mid);
        System.out.println(m);
        model.addAttribute("postOne", m);
        return "add";
    }

    /**
     *
     * @param model
     * @param mid
     * @return
     */
    @RequestMapping("deleteM.do")
    public String deleteM(Model model, Integer mid) {
        managerService.deleteM(mid);
        return "show";
    }

}
