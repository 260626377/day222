package com.ddd.service;

import com.ddd.dao.ManagerDao;
import com.ddd.model.Manager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ManagerService {

    @Autowired
    private ManagerDao managerDao;

    public List<Manager> selectManager() {

        return managerDao.selectManager();

    }

    public void insertM(Manager manager) {
        managerDao.insertM(manager);
    }

    public Manager updateM(Integer mid) {
       return managerDao.updateM(mid);

    }

    public void deleteM(Integer mid) {
        managerDao.deleteM(mid);
    }

}
