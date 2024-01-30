package com.example.demo.service;

import com.example.demo.entity.EmployeeEntity;

import java.util.List;

public interface EmployeeService {
    void saveEmployee(EmployeeEntity employee);
    List<EmployeeEntity> getAllEmployee();
}
