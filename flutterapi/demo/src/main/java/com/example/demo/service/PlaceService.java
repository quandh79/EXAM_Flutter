package com.example.demo.service;

import com.example.demo.entity.PlaceEntity;

import java.util.List;

public interface PlaceService {
    void savePlace(PlaceEntity place);
    List<PlaceEntity> getAllPlace();
}
