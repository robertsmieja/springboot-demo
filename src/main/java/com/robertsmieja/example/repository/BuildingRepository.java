package com.robertsmieja.example.repository;

import com.robertsmieja.example.domain.Building;
import com.robertsmieja.example.domain.City;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BuildingRepository extends PagingAndSortingRepository<Building, Long> {
}
