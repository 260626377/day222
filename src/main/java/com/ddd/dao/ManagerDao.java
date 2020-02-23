package com.ddd.dao;

import com.ddd.model.Manager;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ManagerDao {
    List<Manager> selectManager();
    Manager updateM(Integer mid);
    void insertM(Manager manager);
    void deleteM(Integer mid);
}
