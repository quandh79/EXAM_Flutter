package com.example.demo.repository;

import com.example.demo.entity.PlaceEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PlaceRepository extends JpaRepository<PlaceEntity,Long> {
}
