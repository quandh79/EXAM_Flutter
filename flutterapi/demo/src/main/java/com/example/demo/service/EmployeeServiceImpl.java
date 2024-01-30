package com.example.demo.service;

import com.example.demo.entity.EmployeeEntity;
import com.example.demo.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class EmployeeServiceImpl implements EmployeeService{
    @Autowired
    private EmployeeRepository employeeRepository;
    @Override
    public void saveEmployee(EmployeeEntity employee) {
        employeeRepository.save(employee);

    }

    @Override
    public List<EmployeeEntity> getAllEmployee() {
        return employeeRepository.findAll();
    }
}
