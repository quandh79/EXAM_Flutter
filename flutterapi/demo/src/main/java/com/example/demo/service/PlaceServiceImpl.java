package com.example.demo.service;

import com.example.demo.entity.PlaceEntity;
import com.example.demo.repository.PlaceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PlaceServiceImpl implements PlaceService {
    @Autowired
    private PlaceRepository placeRepository;

    @Override
    public void savePlace(PlaceEntity place) {
        placeRepository.save(place);
    }

    @Override
    public List<PlaceEntity> getAllPlace() {
        return placeRepository.findAll();
    }
}
