package com.example.demo.controller;

import com.example.demo.entity.EmployeeEntity;
import com.example.demo.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/api/v1/employee")
public class EmployeeController {
    @Autowired
    private EmployeeService employeeService;
    @PostMapping("save")
    public String save(@RequestBody EmployeeEntity employee){
        try{
            employeeService.saveEmployee(employee);
            return "create success";

        }catch (Exception ex){
            return ex.getMessage();
        }

    }
    @GetMapping("getAll")
    public List<EmployeeEntity> getAll(){
        List<EmployeeEntity> employeeEntities = new ArrayList<>();
        try{
            employeeEntities = employeeService.getAllEmployee();

        }catch (Exception ex){
            System.out.println(ex.getMessage());

        }
        return employeeEntities;

    }
}
