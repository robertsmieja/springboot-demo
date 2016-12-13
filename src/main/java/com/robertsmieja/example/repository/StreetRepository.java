package com.robertsmieja.example.repository;

import com.robertsmieja.example.domain.Street;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface StreetRepository extends PagingAndSortingRepository<Street, Long> {
}
