package com.example.demo.controller;

import com.example.demo.entity.EmployeeEntity;
import com.example.demo.entity.PlaceEntity;
import com.example.demo.service.PlaceService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/api/v1/place")
public class PlaceController {
    @Autowired
    private PlaceService placeService;
    @PostMapping("save")
    public String save(@RequestBody PlaceEntity place){
        try{
            placeService.savePlace(place);
            return "create success";

        }catch (Exception ex){
            return ex.getMessage();
        }

    }
    @GetMapping("getAll")
    public List<PlaceEntity> getAll(){
        List<PlaceEntity> placeEntities = new ArrayList<>();
        try{
            placeEntities = placeService.getAllPlace();

        }catch (Exception ex){
            System.out.println(ex.getMessage());

        }
        return placeEntities;

    }
}
