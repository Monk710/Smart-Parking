package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.ParkingEntity;

@Repository
public interface ParkingRepository extends JpaRepository<ParkingEntity, Integer>{

}
